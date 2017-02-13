import Vapor

let drop = Droplet()

drop.get { req in
    return try MainView().render()
}

drop.resource("posts", PostController())

drop.run()
