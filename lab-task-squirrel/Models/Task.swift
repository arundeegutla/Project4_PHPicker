import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restraunt",
                 description: "Local rest description"),
            Task(title: "Your favorite local cafe",
                 description: "Fav cafe decription"),
            Task(title: "Your go-to brunch place",
                 description: "Brunch place description"),
            Task(title: "Your favorite hiking spot",
                 description: "where do you go to be one with nature?")
        ]
    }
}
