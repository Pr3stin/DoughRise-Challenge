//
//  TransactionViewController.swift
//  DoughRise Challenge
//
//  Created by Prestin Lau on 5/13/23.
//

import UIKit
import CoreData

class TransactionViewController: UIViewController {

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    let category = CategoryType()
    
    @IBOutlet weak var TypeOfTransaction: UISegmentedControl!
    @IBOutlet weak var AmountSpent: UITextField!
    @IBOutlet weak var AmoutAllowed: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
        guard let amountAllowed = AmoutAllowed.text,
              let amountSpent = AmountSpent.text,
              let type = TypeOfTransaction.titleForSegment(at: TypeOfTransaction.selectedSegmentIndex)
        else { return }
        
        let newCategory = CategoryType(context: self.context)
        newCategory.title = type
        newCategory.left = amountAllowed
        newCategory.spent = amountSpent
        
        self.saveData()
        self.dismiss(animated: true, completion: nil)
        
    }
    
    func saveData() {
        do {
            try context.save()
        } catch {
            print("error saving data \(error)")
        }
    }

    @IBAction func cancelButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
