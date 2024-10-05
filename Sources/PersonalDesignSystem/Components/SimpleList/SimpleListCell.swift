//
//  SimpleListCell.swift
//  
//
//  Created by Julio Cesar Pereira on 05/10/24.
//

import UIKit

public protocol SimpleListCellProtocol {
    var name: String? { get set }
    var image: UIImage? { get set }
}


public class SimpleListCell: UICollectionViewCell {
    static let identifier = "SimpleListCell"
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let imageView: UIImageView = {
         let imageView = UIImageView()
         imageView.contentMode = .scaleAspectFill
         imageView.layer.masksToBounds = true
         imageView.layer.cornerRadius = 43
        imageView.translatesAutoresizingMaskIntoConstraints = false
         return imageView
     }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(title: String?, image: UIImage?) {
        guard let title else { return }
        titleLabel.text = title
        guard let image else { return }
        imageView.image = image
    }
    
    private func setupView() {
          contentView.addSubview(titleLabel)
          contentView.addSubview(imageView)
    
          NSLayoutConstraint.activate([
              titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
              titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
              imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
              imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
              imageView.heightAnchor.constraint(equalToConstant: 87),
              imageView.widthAnchor.constraint(equalToConstant: 87)
          ])
          
          // Customização adicional do card
          contentView.layer.cornerRadius = 10
          contentView.layer.borderWidth = 1
          contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.2)
      }
    
}
