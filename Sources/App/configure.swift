import Fluent
import FluentPostgresDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    try app.databases.use(.postgres(url: "postgres://jeyiexmj:DgMWXwZaxS00CoCGMjGsGUbuLXTwqcTO@mahmud.db.elephantsql.com/jeyiexmj"), as: .psql)

    app.migrations.add(CreateTodo())
    // try app.autoMigrate().wait()

    // register routes
    try routes(app)
}
