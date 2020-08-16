//
//  ItemDetail.swift
//
//  Created by Wagner Oliveira dos Sants on 16/08/20.
//  Copyright © 2020 Wagner Oliveira dos Sants. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
	
	@EnvironmentObject var order: Order
	
	var item: MenuItem
	
    var body: some View {
		VStack{
			ZStack(alignment: .bottomTrailing) {
				Image(item.mainImage)
				Text("Photo: \(item.photoCredit)")
					.background(Color.black)
					.padding(4)
					.font(.caption)
					.foregroundColor(.white)
				.offset(x: -30, y: -5)
			}
			Text(item.description)
				.padding()
			
			
			Button("Order this") {
				self.order.add(item: self.item)
			}
			.font(.headline)
			
			Spacer()
			
		}.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
	static let order = Order()
	
    static var previews: some View {
		NavigationView {
			ItemDetail(item: MenuItem.example).environmentObject(order)
		}
    }
}
