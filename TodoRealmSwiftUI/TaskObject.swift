//
//  TaskObject.swift
//  TodoRealmSwiftUI
//
//  Created by Mostafa Davoodi on 2/7/22.
//

import Foundation
import RealmSwift

class TaskObject: Object {
	@Persisted(primaryKey: true) var id: ObjectId
	@Persisted var title: String
	@Persisted var completed: Bool = false
	@Persisted var completedAt: Date = Date()
}
