//
//  AppDelegate.swift
//  TodoRealmSwiftUI
//
//  Created by Mostafa Davoodi on 2/9/22.
//

import UIKit
import RealmSwift

class AppDelegate: NSObject, UIApplicationDelegate {
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
		configMigration()
		return true
	}
	
	private func configMigration() {
		let config = Realm.Configuration(schemaVersion: 2)
		Realm.Configuration.defaultConfiguration = config
	}
}
