//
//  XAxisView.swift
//  Workout
//
//  Created by Нюргун on 30.08.2023.
//

import UIKit

final class XAxisView: WABaseView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        return view
    }()

    func configure(with data: [WAChartsView.Data]) {
        stackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        
        (data).forEach {
            let lable = UILabel()
            lable.font = R.Fonts.helveticaRegular(with: 9)
            lable.textColor = R.Colors.inactive
            lable.textAlignment = .center
            lable.text = $0.title.uppercased()
            
            stackView.addArrangedSubview(lable)
        }
    }
}

extension XAxisView {
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
    }
    
    override func constraintViews() {
        super.constraintViews()
                
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
