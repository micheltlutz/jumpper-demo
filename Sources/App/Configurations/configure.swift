import FluentSQLite
import FluentPostgreSQL
import Vapor
import Leaf

/// Called before your application initializes.
public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
    // Register providers first
    try services.register(FluentSQLiteProvider())
//    try services.register(FluentPostgreSQLProvider())
    try services.register(LeafProvider())

    /// Configure IP And Port
    let serverConfiure = NIOServerConfig.default(hostname: "0.0.0.0", port: 8080)
    services.register(serverConfiure)

    // Register routes to the router
    let router = EngineRouter.default()
    try routes(router)
    services.register(router, as: Router.self)

    // Register middleware
    var middlewares = MiddlewareConfig() // Create _empty_ middleware config
    middlewares.use(ErrorMiddleware.self) // Catches errors and converts to HTTP response
    middlewares.use(FileMiddleware.self) // Serves files from `Public/` directory
    services.register(middlewares)

    if env.isRelease == false {
        let corsConfiguration = CORSMiddleware.Configuration(
            allowedOrigin: .all,
            allowedMethods: [.GET, .POST, .PUT, .OPTIONS, .DELETE, .PATCH],
            allowedHeaders: [.accept, .authorization, .contentType, .origin, .xRequestedWith, .userAgent, .accessControlAllowOrigin]
        )
        let corsMiddleware = CORSMiddleware(configuration: corsConfiguration)
        middlewares.use(corsMiddleware)
    }

    ///Template
    config.prefer(LeafRenderer.self, for: ViewRenderer.self)

    /// Configure a PostgreSQL, SQLite database
    services.register(try DBConfiguration.databases(env: env))

    // Configure migrations
    var migrations = MigrationConfig()
    migrations.add(model: Todo.self, database: .sqlite)
    services.register(migrations)
}
