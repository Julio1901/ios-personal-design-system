//
//  SimpleList.swift
//  
//
//  Created by Julio Cesar Pereira on 05/10/24.
//

import UIKit

public class SimpleList: UIView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    private var items: [SimpleListCellProtocol] = []
      
      // Configuração do layout da CollectionView com scroll horizontal
      private let collectionView: UICollectionView = {
          let layout = UICollectionViewFlowLayout()
          layout.scrollDirection = .horizontal
          layout.minimumLineSpacing = 10 // Espaçamento entre os cards
          layout.itemSize = CGSize(width: 120, height: 120) // Ajuste o tamanho do card
          let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
          collectionView.backgroundColor = .white
          collectionView.showsHorizontalScrollIndicator = false // Remove a barra de scroll horizontal
          collectionView.register(SimpleListCell.self, forCellWithReuseIdentifier: SimpleListCell.identifier)
          return collectionView
      }()
      
      override init(frame: CGRect) {
          super.init(frame: frame)
          setupCollectionView()
      }
      
      required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
      }
      
      public func setItems(_ items: [SimpleListCellProtocol]) {
          self.items = items
          collectionView.reloadData()
      }
      
      private func setupCollectionView() {
          addSubview(collectionView)
          collectionView.translatesAutoresizingMaskIntoConstraints = false
          collectionView.delegate = self
          collectionView.dataSource = self
          
          NSLayoutConstraint.activate([
              collectionView.topAnchor.constraint(equalTo: topAnchor),
              collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
              collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
              collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
              collectionView.heightAnchor.constraint(equalToConstant: 150)
          ])
      }
      
      // MARK: - UICollectionViewDataSource
      public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return items.count
      }
      
      public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SimpleListCell.identifier, for: indexPath) as? SimpleListCell else {
              return UICollectionViewCell()
          }
          cell.configure(title: items[indexPath.row].name, image: items[indexPath.row].image)
          return cell
      }
      
      // MARK: - UICollectionViewDelegateFlowLayout
      public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return CGSize(width: 120, height: 120) // Ajuste o tamanho da célula conforme necessário
      }

}
