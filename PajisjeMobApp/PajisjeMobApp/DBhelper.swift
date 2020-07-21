//
//  DBhelper.swift
//  PajisjeMobApp
//
//  Created by Kastriot on 7/20/20.
//  Copyright © 2020 Kastriot. All rights reserved.
//

import Foundation
import SQLite3
class DBhelper
{
    var db : OpaquePointer?
    var path : String = "myDB.sqlite"
    
    init()
    {
        self.db = CreateDB()
        self.CreateTable()
    }
    
    func CreateDB() -> OpaquePointer?
    {
        let filePath  = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathExtension(path)
        
        var db : OpaquePointer? = nil
        
        if sqlite3_open(filePath.path, &db) != SQLITE_OK
        {
            print("there is an error creating the databse!")
            return nil
        }else{
            print("Database has been created with path \(path)")
            return db
        }

    }
    
    func CreateTable() {
        let query = "CREATE TABLE IF NOT EXISTS shenime(versioni INTEGER,authors TEXT);"
        var statement : OpaquePointer? = nil
        
        if sqlite3_prepare_v2(self.db, query, -1, &statement, nil) == SQLITE_OK
        {
            if sqlite3_step(statement) == SQLITE_DONE
            {
                print("table created!")
            }else{
                print("table not creted")
            }
        }else
        {
            print("preparation failed")
        }
    }
    
    func insert(versioni: Int, authors : String)
    {
        let query = "INSERT INTO shenime (versioni, authors) VALUES (?, ?)"
        
        var statement : OpaquePointer? = nil
        
        if sqlite3_prepare_v2(db, query, -1, &statement, nil) == SQLITE_OK
        {
            sqlite3_bind_int(statement, 1, Int32(versioni))
            sqlite3_bind_text(statement, 2, (authors as NSString).utf8String, -1, nil)
            
            
            if sqlite3_step(statement) == SQLITE_DONE
            {
                print("Data inserted")
            }else{
                print("Data not inserted")
            }
        }else{
            print("Query dosent meet the requirements")
        }
    }
    
    func read() -> String
    {
        var list = ""
        var seperator = ";"
        let query = "SELECT * FROM shenime;"
        
        var statement : OpaquePointer? = nil
        if sqlite3_prepare_v2(db, query, -1, &statement, nil) == SQLITE_OK
        {
            while sqlite3_step(statement) == SQLITE_ROW
            {
                let version = sqlite3_column_int(statement, 0)
                let authors = String(describing: String(cString: sqlite3_column_text(statement, 1)))
                
                let model = DBshenime()
                model.versioni = Int(version)
                model.authors = authors
                
                print("\(version) | \(authors) ")
                
                
                list = String(version) + seperator + authors
                
                
                
            }
        }
        sqlite3_finalize(statement)
        return list
    }
}
