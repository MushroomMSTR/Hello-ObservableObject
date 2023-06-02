//
//  ContentView.swift
//  Hello-ObservableObject
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var fancyTimer = FancyTimer()
	
    var body: some View {
        VStack {
			Text("\(self.fancyTimer.value)")
				.font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
