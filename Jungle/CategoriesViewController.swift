//
//  CategoriesViewController.swift
//  Jungle
//
//  Created by Jesse Bartola on 1/11/17.
//  Copyright © 2017 Jungle. All rights reserved.
//

import UIKit

struct CategoriesData {
    let image: UIImage!
    let title: String!
}

class CategoriesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var categoriesArray = [CategoriesData]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoriesArray = [CategoriesData(image: #imageLiteral(resourceName: "oceansky"), title: "Aquatics"), CategoriesData(image: #imageLiteral(resourceName: "desert"), title: "Desert"), CategoriesData(image: #imageLiteral(resourceName: "trashheap"), title: "Recycling"), CategoriesData(image: #imageLiteral(resourceName: "squareforest"), title: "Deforestation"), CategoriesData(image: #imageLiteral(resourceName: "emissions_co2"), title: "Emissions")]
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* Collection View Delegate methods
    
    */
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return categoriesArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCell", for: indexPath) as! CategoriesCollectionViewCell
        
        cell.categoryImageView.image = categoriesArray[indexPath.row].image
        cell.categoryTitleLabel.text = categoriesArray[indexPath.row].title
        
        return cell
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    /* CollectionViewLayoutDelegate Methods
 
    */
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //2
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return sectionInsets
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return sectionInsets.left
    }
    

}
