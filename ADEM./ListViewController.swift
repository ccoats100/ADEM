//
//  ListViewController.swift
//  ADEM.
//
//  Created by Coleman Coats on 3/30/17.
//  Copyright © 2017 Coleman Coats. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,UITableViewDataSource {
	@IBOutlet weak var totalPrice: UILabel!
	
	
	var item = [Any]()
	var name:[String] = ["Milk","Eggs"]
	var cost:[String] = ["$\(9)","$\(8)"]
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		self.navigationItem.rightBarButtonItem = self.editButtonItem
	}
	
	
	// Mark: - Segues
	
			
	
	
	// Mark: - Table View
	
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
		
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return name.count
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath) as! TotalPriceTableViewCell
		cell.itemName!.text  = name[indexPath.row]
		cell.itemPrice!.text = cost[indexPath.row]
		return cell
	}
	
	func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
		return true
	}
	
	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == .delete {
			name.remove(at: indexPath.row)
			tableView.deleteRows(at: [indexPath], with: .fade)
		}	else if editingStyle == .insert {
			
		}
	}
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

