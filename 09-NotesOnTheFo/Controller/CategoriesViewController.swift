//
//  ViewController.swift
//  09-NotesOnTheFo
//
//  Created by Ricardo Sanchez on 7/20/20.
//  Copyright © 2020 Ricardo Sanchez. All rights reserved.
//

import UIKit

class CategoriesViewController: UICollectionViewController {
    
    let categoriesArray = ["Compras", "Tareas de la casa",  "Ocio"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoriesArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CateroryCell", for: indexPath) as! CategoryCellCollectionViewCell
        
        cell.categoryLabel.text = categoriesArray[indexPath.row]
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowNoteList", sender: self)
    }
}

