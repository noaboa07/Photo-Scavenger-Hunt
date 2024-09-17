//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

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
            Task(title: "Your favorite place to grab a bite 🍴",
                 description: "Share a photo of your favorite place to eat at"),
            Task(title: "Your favorite place to go on a hike 🧗",
                 description: "Share a photo of your favorite place to hike at"),
            Task(title: "Your favorite place to pass the time 🎳",
                 description: "Share a photo of your favorite place to spend time at (could be a hobby, hangout site, etc.)"),
            Task(title: "Your favorite place to find peace 🧘‍♀️",
                 description: "Share a photo of your favorite place to spend time alone and clear your thoughts (your safe space)")
        ]
    }
}
