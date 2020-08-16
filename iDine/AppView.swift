//
//  AppView.swift
//
//  Created by Wagner Oliveira dos Sants on 16/08/20.
//  Copyright © 2020 Wagner Oliveira dos Sants. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
		TabView {
			MenuView()
				.tabItem {
					Image(systemName: "list.dash")
					Text("Menu")
			}
			
			OrderView()
				.tabItem {
					Image(systemName: "square.and.pencil")
					Text("Order")
			}
		}
    }
}

struct AppView_Previews: PreviewProvider {
	static let order = Order()
    static var previews: some View {
		AppView().environmentObject(order)
    }
}
