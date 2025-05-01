//
//  ContentView.swift
//  BinScrap
//
//  Created by Begum Nashida on 5/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("What is composting?").font(.largeTitle)
                Image("compost")
                Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.").padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                Text("Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of").padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                
                NavigationLink(destination: SecondScreen()){
                    Text("Go to Home Screen")
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.black)
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct SecondScreen: View{
    var body: some View{
        NavigationView{
            VStack{
                NavigationLink(destination:collectionCalendar()){
                    HStack{
                        Image(systemName:"calendar")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                        Text("Calendar").font(.largeTitle)
                    }
                }
                NavigationLink(destination: BagFinder()){
                    HStack{
                        Image(systemName:"bag")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                        Text("Bag Finder").font(.largeTitle)
                    }
                }
                NavigationLink(destination:ContentView()){
                    HStack{
                        Image(systemName:"info.circle")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                         Text("Revisit Info").font(.largeTitle)
                    }
                }
                
            }
        }
    }
}

struct collectionCalendar: View{
    var body: some View{
        NavigationView{
            
        }
    }
}

struct BagFinder: View{
    var body: some View{
        NavigationView{
            VStack{
                HStack{
                    Image("bag")
                        .resizable()
                        .frame(width: 100, height: 100)
                    VStack{
                        Text("Store").font(.largeTitle)
                        Text("$Price").font(.title)
                    }
                    Image(systemName:"arrow.trianglehead.turn.up.right.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                HStack{
                    Image("bag")
                        .resizable()
                        .frame(width: 100, height: 100)
                    VStack{
                        Text("Store").font(.largeTitle)
                        Text("$Price").font(.title)
                    }
                    Image(systemName:"arrow.trianglehead.turn.up.right.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                HStack{
                    Image("bag")
                        .resizable()
                        .frame(width: 100, height: 100)
                    VStack{
                        Text("Store").font(.largeTitle)
                        Text("$Price").font(.title)
                    }
                    Image(systemName:"arrow.trianglehead.turn.up.right.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
