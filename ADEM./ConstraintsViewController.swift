//
//  ConstraintsViewController.swift
//  ADEM.
//
//  Created by Coleman Coats on 3/30/17.
//  Copyright © 2017 Coleman Coats. All rights reserved.
//

import UIKit

class ConstraintsViewController: UIViewController,UITableViewDataSource {
	
	let data:[[String]] = [["Nuts", "Seafood", "Glutan"],
	                       ["Vegitarian","Pescatarien","Vegan"]]
	
	let headers:[String] = ["Allergies", "Lifestyle"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data[section].count
	}
	
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return data.count
	}
	
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "allergies", for: indexPath) as! ConstraintsTableViewCell
		cell.constraint.text = data[indexPath.section][indexPath.row]
		return cell
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
