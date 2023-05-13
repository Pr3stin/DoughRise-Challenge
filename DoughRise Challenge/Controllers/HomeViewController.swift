//
//  HomeViewController.swift
//  DoughRise Challenge
//
//  Created by Prestin Lau on 5/12/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var MonthlyBudgetView: UIView!
    @IBOutlet weak var CategoryTableView: UITableView!
    @IBOutlet weak var BudgetBreakdownView: UIView!
    @IBOutlet weak var AddButton: UIButton!
    
    var category = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // UI
        
        MonthlyBudgetView?.layer.cornerRadius = 25
        BudgetBreakdownView?.layer.cornerRadius = 25
        BudgetBreakdownView?.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        CategoryTableView?.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        CategoryTableView?.layer.cornerRadius = 25
        AddButton?.layer.cornerRadius = 0.5 * AddButton.bounds.size.width
        
    }
    
    // Category TableView
    
    class CustomCell : UITableViewCell {
        @IBOutlet weak var CellImageLabel: UILabel!
        @IBOutlet weak var CellTitleLabel: UILabel!
        @IBOutlet weak var CellSpentLabel: UILabel!
        @IBOutlet weak var CellLeftLabel: UILabel!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        
    }
    
    
    
}
