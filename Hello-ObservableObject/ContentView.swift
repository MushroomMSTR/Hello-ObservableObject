//
//  ContentView.swift
//  Hello-ObservableObject
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var fancyTimer = FancyTimer()
	@EnvironmentObject var userSettings: UserSettings
	
    var body: some View {
        VStack {
			Text("\(self.fancyTimer.value)")
				.font(.largeTitle)
			
			Spacer()
			
			Text("\(self.userSettings.score)")
				.font(.largeTitle)
			Button("Increment Score") {
				self.userSettings.score += 1
			}
			FancyScoreView()
				.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView().environmentObject(UserSettings())
    }
}
