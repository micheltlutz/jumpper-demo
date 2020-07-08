//
//  DBConfiguration.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 01/07/20.
//

import FluentSQLite
import FluentPostgreSQL
import Vapor

struct DBConfiguration {
    public static func databases(env: Environment) throws-> DatabasesConfig {
        var databases = DatabasesConfig()
        DBConfiguration.setDefaultDataBases()

//        let databaseConfig: PostgreSQLDatabaseConfig
//
//        if env.isRelease {
//            databaseConfig = PostgreSQLDatabaseConfig(hostname: "",
//                                                      username: "jumpper",
//                                                      database: "jumpper",
//                                                      password: "")
//        } else { //DEVELOP
//            databaseConfig = PostgreSQLDatabaseConfig(hostname: "localhost",
//                                                      username: "jumpper",
//                                                      database: "jumpper")
//        }

//        let dataBase = PostgreSQLDatabase(config: databaseConfig)
        let sqlite = try SQLiteDatabase(storage: .memory)
//        databases.add(database: dataBase, as: .psql)
        databases.add(database: sqlite, as: .sqlite)
        return databases
    }

    private static func setDefaultDataBases() {
        // Configure migrations
        /// defaultDatabase to usign existing table without migration
//        MyModel.defaultDatabase = .psql
    }
}
