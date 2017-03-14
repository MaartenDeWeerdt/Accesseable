//
//  ViewController.swift
//  Accesseable
//
//  Created by mobapp09 on 10/03/17.
//  Copyright © 2017 mobapp09. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource {

    var categorieën = ["Restaurants","Hotels", "Infokantoren", "Parkings", "Toiletten", "Tramhaltes", "Interessante locaties", "Dijken"]
    
    var rows = [TableViewRow]()
    @IBOutlet weak var tabBarCollection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rows.append(TableViewRow.init(title: "Restaurants", items: ["a","b","c","a","b","c"]))
        rows.append(TableViewRow.init(title: "Hotels", items: ["a","b","c"]))
        rows.append(TableViewRow.init(title: "Infokantoren", items: ["a","b","c"]))
        rows.append(TableViewRow.init(title: "Parkings", items: ["a","b","c"]))
        rows.append(TableViewRow.init(title: "Toiletten", items: ["a","b","c"]))
        rows.append(TableViewRow.init(title: "Tramhaltes", items: ["a","b","c"]))
        rows.append(TableViewRow.init(title: "Interessante locaties", items: ["a","b","c"]))
        rows.append(TableViewRow.init(title: "Dijken", items: ["a","b","c"]))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return rows[section].title
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! TableViewCell
        
        cell.items = rows[indexPath.section].items
        print("cell made")
        
        return cell
    }
    
    
    //tabbar
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categorieën.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let tabbar = collectionView.dequeueReusableCell(withReuseIdentifier: "tabbar", for: indexPath)
        
        return tabbar
    }
 
}

