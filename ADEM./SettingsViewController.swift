//
//  SettingsViewController.swift
//  ADEM.
//
//  Created by Coleman Coats on 3/30/17.
//  Copyright © 2017 Coleman Coats. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController,UITableViewDataSource {
	
	let data:[[String]] = [["Stores", "Coupons"],
	                       ["Location Services"],
	                       ["Cards", "Apple Pay"],
	                       ["Walmart","Vons","Trader Joes"]]
	
	let headers:[String] = ["ADEM", "App", "Payment","Stores"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data[section].count
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		cell.textLabel?.text  = data[indexPath.section][indexPath.row]
		return cell
	}
	func numberOfSections(in tableView: UITableView) -> Int {
		return data.count
	}
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return headers[section]
	}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
