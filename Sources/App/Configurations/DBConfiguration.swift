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

        let databaseConfig: PostgreSQLDatabaseConfig

        if env.isRelease {
            databaseConfig = PostgreSQLDatabaseConfig(hostname: "",
                                                      username: "v_engine",
                                                      database: "v_engine",
                                                      password: "")
        } else { //DEVELOP
            databaseConfig = PostgreSQLDatabaseConfig(hostname: "localhost",
                                                      username: "michel",
                                                      database: "v_engine")
        }

//        let dataBase = PostgreSQLDatabase(config: databaseConfig)
        let sqlite = try SQLiteDatabase(storage: .memory)
//        databases.add(database: dataBase, as: .psql)
        databases.add(database: sqlite, as: .sqlite)
        return databases
    }

    private static func setDefaultDataBases() {
        // Configure migrations
        /// defaultDatabase to usign existing table without migration
//        ConteudoSite.defaultDatabase = .psql
//        Pessoa.defaultDatabase = .psql
//        Usuario.defaultDatabase = .psql
//        UsuarioGrupo.defaultDatabase = .psql
    }
}
