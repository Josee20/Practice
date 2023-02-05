//
//  FIrstView.swift
//  CoordinatorPractice
//
//  Created by 이동기 on 2023/01/30.
//

import UIKit

final class FirstView: BaseView {
    
    private let label: UILabel = {
        let view = UILabel()
        view.text = "나는 첫번째 뷰!!!"
        view.textColor = .yellow
        return view
    }()
    
    override func configureUI() {
        self.addSubview(label)
    }
    
    override func setConstraints() {
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(150)
        }
    }
}
