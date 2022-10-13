//
//  ContentView.swift
//  SpanishPhrases
//
//  Created by Richard Price on 22/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //step 3 call home struct
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//step 2 create a home struct and a top header
struct Home: View {
    //step 3 state var for the search bar txt
    @State private var txt = ""
    var body: some View {
        VStack {
            
            //MARK: TOP HEADER------------------
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Hello, Richard").font(.title)
                        .fontWeight(.bold)
                    
                    Text("welcome to Learn Phrase")
                }
                .foregroundColor(.black)
                Spacer(minLength: 0)
                Button(action: {}) {
                    Image("AnimalsResized")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                }
            }.padding()
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    //Step 4 create search bar
                    //MARK: SEARCH BAR---------------
                    HStack(spacing: 15) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("Search Categories", text: $txt)
                    }
                    .padding(.vertical, 15)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                    
                    //Step 5 categories section header
                    //MARK: CATEGORIES
                    
                    
                    
                    
                }
                .padding()
            }
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
    }
}
//step 1 create some dummy data, after importing assets
struct Category: Identifiable {
    var id = UUID().uuidString
    var name: String
    var catNumber: Int
    var asset: String
}

var categories = [
        Category(name: "Animals", catNumber: 1, asset: "AnimalsResized"),
        Category(name: "Weather", catNumber: 2, asset: "AnimalsResized"),
        Category(name: "Sports", catNumber: 3, asset: "AnimalsResized"),
        Category(name: "Professional", catNumber: 4, asset: "AnimalsResized"),
]
