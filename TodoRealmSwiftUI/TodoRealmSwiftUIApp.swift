//
//  TodoRealmSwiftUIApp.swift
//  TodoRealmSwiftUI
//
//  Created by Mostafa Davoodi on 2/7/22.
//

import SwiftUI

@main
struct TodoRealmSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
					ContentView().environmentObject(TaskViewModel())
        }
    }
}
