//
//  TasksListView.swift
//  Cards
//
//  Created by Admin on 3/31/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct TasksListView: View {
    
//    var tasks: [Task] = [
//        Task(id: 0, title: "Task 1", description: "Get fit with 185+ free workouts from strength and endurance to mobility and yoga—featuring our world-class drill"),
//        Task(id: 1, title: "Task 2", description: "Get fit with 185+ free workouts from strength and endurance to mobility and yoga—featuring our world-class drill"),
//        Task(id: 2, title: "Task 3", description: "Get fit with 185+ free workouts from strength and endurance to mobility and yoga—featuring our world-class drill"),
//        Task(id: 3, title: "Task 4", description: "Get fit with 185+ free workouts from strength and endurance to mobility and yoga—featuring our world-class drill"),
//        Task(id: 4, title: "Task 5", description: "Get fit with 185+ free workouts from strength and endurance to mobility and yoga—featuring our world-class drill")
//    ]
//
    var exercises: [Exercises]
    
    var body: some View {
        List(exercises){ task in
//            NavigationLink(destination: PagerView())
//            {
                VStack(alignment: .leading){
                   
                   return TaskView(title: task.name, description: task.description)
                }
//            }
            
        }
    }
}

//struct TasksListView_Previews: PreviewProvider {
//    static var previews: some View {
//        TasksListView(dayData: Days(id: <#T##Int#>, title: <#T##String#>, exercises: <#T##[Exercises]#>))
//    }
//}

struct TaskView: View{
    
    var title, description: String
    
    
    var body: some View{
        
        VStack{
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            Text(description)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
        }
    .padding()
        
        
    }
}

struct Task: Identifiable
{
    var id, repititions: Int
    var name, description: String
    
}
