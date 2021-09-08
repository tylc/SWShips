//
//  SearchView.swift
//  SWShips
//
//  Created by Enric Herce on 7/9/21.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText:String
    @ObservedObject var shipList:ShipsViewModel
     
    
    var body: some View {
        List(shipList.shipList.ships.filter({
            searchText.isEmpty ? true : $0.name.localizedCaseInsensitiveContains(searchText)
        })){
            Text($0.name)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: .constant(""), shipList: ShipsViewModel())
    }
}

struct Ocean: Identifiable {
    let name: String
    let id = UUID()
}
