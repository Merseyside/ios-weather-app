//
//  ConditionView.swift
//  WeatherApp
//
//  Created by Ivan on 26.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI

struct ConditionView: View {
    
    private let conditionItem: ConditionItem
    
    init(conditionItem: ConditionItem) {
        self.conditionItem = conditionItem
    }
    
    var body: some View {
        VStack {
            Text(conditionItem.title)
                .font(Font.body)
                .fontWeight(Font.Weight.light)
                .foregroundColor(Color.systemGray)
            
            Spacer()
            
            Text(conditionItem.value.toString())
                .font(Font.title)
                .fontWeight(Font.Weight.medium)
                .foregroundColor(Color.white)
            
            Text(conditionItem.unit)
                .font(Font.body)
                .fontWeight(Font.Weight.medium)
                .foregroundColor(Color.white)
            
            Spacer()
        }.frame(width: 80)
    }
}
