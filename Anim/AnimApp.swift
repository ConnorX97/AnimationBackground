//
//  AnimApp.swift
//  Anim
//
//  Created by Sherzod Fayziev on 2022/05/09.
//

import SwiftUI

@main
struct AnimApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Maina()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
