//
//  FirstViewController.swift
//  ADEM Searchbar
//
//  Created by Coleman Coats on 3/24/17.
//  Copyright © 2017 Coleman Coats. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController,UITableViewDataSource {
	var name:[String] = ["Milk","Eggs"]
	var cost:[String] = ["$\(9)","$\(8)"]
	var headers = "\(18)"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return name.count
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return headers
	}
	
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let item = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath) as! ListTableViewCell
		item.itemName.text = name[indexPath.row]
		item.price.text = cost[indexPath.row]
		let sum = tableView.dequeueReusableCell(withIdentifier: "total", for: indexPath) as! ListTableViewCell
		return sum
		
	}
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

