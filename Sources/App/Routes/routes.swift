import Vapor
import Leaf

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, jumpper!" example
    router.get { req -> Future<View> in
        let body = DemoJumpper().main()

        return try req.view().render("base", ["title": "Hello Jumpper", "body": body.getString()])
    }
}
