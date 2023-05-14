//
//  HomeViewController.swift
//  DoughRise Challenge
//
//  Created by Prestin Lau on 5/12/23.
//

import UIKit
import CoreData

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var BudgetBreakdownView: UIView!
    @IBOutlet weak var MonthlyBudgetView: UIView!
    @IBOutlet weak var BudgetLabel: UILabel!
    @IBOutlet weak var SpentLabel: UILabel!
    @IBOutlet weak var AvailableLabel: UILabel!
    @IBOutlet weak var CategoryTableView: UITableView!
    @IBOutlet weak var AddButton: UIButton!
    
    var category = [CategoryType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        CategoryTableView.delegate = self
        CategoryTableView.dataSource = self
       
        // UI
        
        MonthlyBudgetView?.layer.cornerRadius = 25
        BudgetBreakdownView?.layer.cornerRadius = 25
        BudgetBreakdownView?.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        CategoryTableView?.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        CategoryTableView?.layer.cornerRadius = 25
        AddButton?.layer.cornerRadius = 0.5 * AddButton.bounds.size.width
        
    }
    
    // Category TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CellTableViewCell
        let cat = category[indexPath.row]
        cell.TitleLabel?.text = cat.title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    
    
}
