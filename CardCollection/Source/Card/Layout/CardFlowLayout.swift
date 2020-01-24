//
//  CardFlowLayout.swift
//  CardViewController
//
//  Created by Al O'Connor on 12/31/19.
//  Copyright © 2019 Al O'Connor. All rights reserved.
//

import UIKit

class CardFlowLayout: UICollectionViewFlowLayout {

    private var cachedAttributes: [UICollectionViewLayoutAttributes] = []

    override func prepare() {
        super.prepare()
        cachedAttributes.removeAll()
        createAttributes()
    }

    func createAttributes() {
        guard let collectionView = collectionView else { return }
        let numberOfSections = collectionView.numberOfSections
        for sectionNumber in 0..<numberOfSections {
            let numberOfItems = collectionView.numberOfItems(inSection: sectionNumber)
            for item in 0..<numberOfItems {
                let indexPath = IndexPath(item: item, section: sectionNumber)
                guard let itemAttributes = self.layoutAttributesForItem(at: indexPath) else { return }
                cachedAttributes.append(itemAttributes)
            }
        }
    }

    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        guard let collectionView = collectionView else { return false }
        return !newBounds.size.equalTo(collectionView.bounds.size)
    }

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        guard let layoutAttributes = super.layoutAttributesForElements(in: rect) else { return nil }
        for attribute in layoutAttributes {
            if attribute.representedElementCategory == .cell {
                let indexPath = attribute.indexPath
                guard let newApptribute = self.layoutAttributesForItem(at: indexPath) else { return nil }
                attribute.frame = newApptribute.frame
            }
        }
        return layoutAttributes
    }

    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        guard let attribute = super.layoutAttributesForItem(at: indexPath) else { return nil }
        if let cachedAttribute = cachedAttributes[safe: indexPath.item] {
            return cachedAttribute
        }
        guard let collectionView = collectionView else { return nil }
        let newFrame = CGRect(x: attribute.frame.origin.x,
                              y: attribute.frame.origin.y,
                              width: collectionView.frame.width,
                              height: attribute.frame.height)
        attribute.frame = newFrame
        return attribute
    }
}
