//
//  DBConfiguration.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 01/07/20.
//

import FluentSQLite
import Vapor

struct DBConfiguration {
    public static func databases(env: Environment) throws-> DatabasesConfig {
        var databases = DatabasesConfig()
        DBConfiguration.setDefaultDataBases()

        let sqlite = try SQLiteDatabase(storage: .memory)
        databases.add(database: sqlite, as: .sqlite)
        return databases
    }

    private static func setDefaultDataBases() {
        // Configure migrations
    }
}
