//
//  StatsView.swift
//  Workout
//
//  Created by Нюргун on 25.08.2023.
//

import UIKit

final class StatsView: WABaseInfoView {
    
    private let itemView = StatsItemView()
    
    override func setupViews() {
        super.setupViews()
        
        setupView(itemView)
        itemView.configure(with: StatsItemView.StatsItem(
            image: R.Images.Session.Stats.heartRate,
            value: "155 bpm",
            title: R.Strings.Session.heartRate.uppercased()
        ))
        
        NSLayoutConstraint.activate([
            itemView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            itemView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        ])
    }
}
