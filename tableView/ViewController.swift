//
//  ViewController.swift
//  tableView
//
//  Created by Prabhjot on 09/03/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    let fruits = ["Mango","Apple","Banana","Kiwi","Papaya","Orange","Cherry","Pomergrenate","Mango","Apple","Banana","Kiwi","Papaya","Orange","Cherry","Pomergrenate","Mango","Apple","Banana","Kiwi","Papaya","Orange","Cherry","Pomergrenate","Mango","Apple","Banana","Kiwi","Papaya","Orange","Cherry","Pomergrenate","Mango","Apple","Banana","Kiwi","Papaya","Orange","Cherry","Pomergrenate"];
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count;
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = fruits[indexPath.row]
        
        if(indexPath.row == fruits.count - 1){
            cell.layer.shadowColor = UIColor.lightGray.cgColor
            cell.layer.shadowOpacity = 0.3
            cell.layer.shadowOffset = CGSize(width: 10, height: 10)
            cell.layer.shadowRadius = 1
            cell.layer.masksToBounds = false
        } // add shadow to bottom of last cell instead of table view
        else{
            cell.backgroundColor = UIColor.clear
        }
        
        return cell
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.bounces = false
        
        tableView.contentInset.bottom = 6 // add little extra space to show shadow

        
        // Do any additional setup after loading the view.
    }


}

