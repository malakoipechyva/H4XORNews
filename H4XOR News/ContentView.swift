//
//  ContentView.swift
//  H4XOR News
//
//  Created by malakoipechyva on 26.11.20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List(posts) { post in
        Text(post.title)
      }
      .navigationBarTitle("H4X0R News")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let posts = [
  Post(id: "1", title: "hello"),
  Post(id: "2", title: "Vitau"),
  Post(id: "3", title: "Hi")
]
