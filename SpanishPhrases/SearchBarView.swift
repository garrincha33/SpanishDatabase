//
//  SearchBarView.swift
//  SpanishPhrases
//
//  Created by Richard Price on 14/10/2022.
//

import SwiftUI

struct SearchBarView: View {
    @State private var txt = ""
    var body: some View {
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
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
