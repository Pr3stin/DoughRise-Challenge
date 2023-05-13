//
//  HomeViewController.swift
//  DoughRise Challenge
//
//  Created by Prestin Lau on 5/12/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var MonthlyBudgetView: UIView!
    
    @IBOutlet weak var CategoryTableView: UITableView!
    @IBOutlet weak var BudgetBreakdownView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MonthlyBudgetView?.layer.cornerRadius = 25
        BudgetBreakdownView?.layer.cornerRadius = 25
        BudgetBreakdownView?.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        CategoryTableView?.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        CategoryTableView?.layer.cornerRadius = 25
        
        
    }
    

}
