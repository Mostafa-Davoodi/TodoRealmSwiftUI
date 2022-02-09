//
//  ContentView.swift
//  TodoRealmSwiftUI
//
//  Created by Mostafa Davoodi on 2/7/22.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView {
			VStack {
				AddTaskView()
				TaskListView()
			}
			.navigationTitle("Todo")
		}
			
		
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
