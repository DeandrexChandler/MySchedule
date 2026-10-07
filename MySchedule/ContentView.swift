//
//  ContentView.swift
//  MySchedule
//
//  Created by Deandre Chandler on 10/6/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "calendar.badge.checkmark")
                .font(.system(size: 72))
                .foregroundStyle(.tint)
            Text("MySchedule")
                .font(.largeTitle.bold())
            Text("It's working! 🎉")
                .font(.title2)
            Text(Date.now, format: .dateTime.weekday(.wide).month().day().year())
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
