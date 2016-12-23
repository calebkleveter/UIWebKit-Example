import Vapor

let drop = Droplet()

drop.get { req in
    let mainView = MainView()
    if let main = mainView.render(with: drop) {
        return try drop.view.make(main)
    } else {
        throw Abort.custom(status: .internalServerError, message: "Unable to Create Page.")
    }
}

drop.resource("posts", PostController())

drop.run()
