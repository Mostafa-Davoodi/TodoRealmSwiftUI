//
//  TaskView.swift
//  TodoRealmSwiftUI
//
//  Created by Mostafa Davoodi on 2/7/22.
//

import SwiftUI

struct TaskView: View {
	@EnvironmentObject private var viewModel: TaskViewModel
	@Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
	@State private var taskTitle: String = ""
	@State private var dueDate: Date = Date()
	
	let task: Task
	
	var body: some View {
			
		VStack(alignment: .leading, spacing: 24) {
			
			VStack(alignment: .leading, spacing: 4) {
				Text("Title")
					.foregroundColor(.gray)
				
				TextField("Enter title..", text: $taskTitle)
					.font(.largeTitle)
				
				Divider()
			}
			
			DatePicker("Select date", selection: $dueDate)
			
			Button {
				deleteAction()
			} label: {
				HStack {
					Image(systemName: "trash.fill")
					Text("Delete")
				}
				.foregroundColor(.red)
			}
			
			Spacer()

		}
		.navigationBarTitle("Edit Todo")
		.navigationBarTitleDisplayMode(.inline)
		.padding(24)
		.onAppear(perform: {
			taskTitle = task.title
			dueDate = task.dueDate ?? Date()
		})
		.onDisappear(perform: updateTask)
	}
	
	private func updateTask() {
		viewModel.update(id: task.id, newTitle: taskTitle, dueDate: dueDate)
	}
	
	private func deleteAction() {
		viewModel.remove(id: task.id)
		presentationMode.wrappedValue.dismiss()
	}
}
