//
//  ContentView.swift
//  SpanishPhrases
//
//  Created by Richard Price on 22/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
   
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
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
                    //step 1 refactor code for searchbar into
                    //a seperate component
                    SearchBarView()
                    //MARK: CATEGORIES
                    //step 2 create the categories section
                    HStack {
                        Text("Categories")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer(minLength: 0)
                        Button {
                            
                        } label: {
                            Text("View All")
                        }
                    }.foregroundColor(.black)
                        .padding(.top, 30)
                    //step 4 create a lazyvgrid to hold
                    //the category card view
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20) {
                        
                        ForEach(categories) {category in
                            CategoryCardView(category: category)
                        }
                    }
                }
                .padding()
            }
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
    }
}
//step 3 create a card view for the categories
struct CategoryCardView: View {
    var category: Category
    var body: some View {
        //step 4 wrap in vastack
        VStack {
            VStack {
                Image(category.asset)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 10)
                    .padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        Text(category.name).fontWeight(.bold)
                    }
                    .foregroundColor(.black)
                    Spacer(minLength: 0)
                }.padding()
            }
            .background(Color.white)
            .cornerRadius(15)
            
            Spacer(minLength: 0)
        }
        
        
    }
}




