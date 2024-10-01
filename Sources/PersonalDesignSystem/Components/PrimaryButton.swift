//
//  PrimaryButton.swift
//  PersonalDesignSystem
//
//  Created by Julio Cesar Pereira on 01/10/24.
//

import UIKit

public class PrimaryButton: UIButton {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }

    private func setupButton() {
        backgroundColor = .systemBlue
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 10
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }
}
