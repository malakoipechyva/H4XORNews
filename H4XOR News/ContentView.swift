//
//  ContentView.swift
//  H4XOR News
//
//  Created by malakoipechyva on 26.11.20.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var networkManager = NetworkManager()
  
  var body: some View {
    NavigationView {
      List(networkManager.posts) { post in
        HStack {
          Text(String(post.points))
          Text(post.title)
        }
      }
      .navigationBarTitle("H4X0R News")
    }
    .onAppear {
      networkManager.fetchData()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//  Post(id: "1", title: "hello"),
//  Post(id: "2", title: "Vitau"),
//  Post(id: "3", title: "Hi")
//]
