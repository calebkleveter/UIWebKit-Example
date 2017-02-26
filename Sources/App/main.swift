import Vapor

let drop = Droplet()

drop.get { req in
    return MainView()
}

drop.resource("posts", PostController())

drop.run()
