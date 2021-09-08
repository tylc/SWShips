//
//  ContentView.swift
//  SWShips
//
//  Created by Enric Herce on 1/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText:String = ""
    @State var showList:Bool = false
    
    @ObservedObject var shipList:ShipsViewModel = ShipsViewModel()
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                searchBar(text: $searchText, isEditing: $showList)
                if(showList == false){
                    SearchView(searchText: $searchText, shipList: shipList).hidden()
                }else{
                    SearchView(searchText: $searchText, shipList: shipList)
                }
                
                
                
                
                Spacer()
                
                
                
                
                
                /*Text("Search Bar")
                
                Text("Favourites")
                ScrollView(.horizontal){
                    HStack{
                        Text("nau1")
                        Text("nau2")
                        Text("nau3")
                    }
                }
                
                Text("Special Editions")
                ScrollView(.horizontal){
                    HStack{
                        Text("nau1")
                        Text("nau2")
                        Text("nau3")
                    }
                }
                Spacer()*/
            }
            .navigationTitle(Text("Coruscant Rental Service").font(.largeTitle))
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
