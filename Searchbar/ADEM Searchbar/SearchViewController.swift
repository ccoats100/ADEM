//
//  SearchViewController.swift
//  ADEM Searchbar
//
//  Created by Coleman Coats on 4/6/17.
//  Copyright © 2017 Coleman Coats. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController,UITableViewDataSource,UISearchBar {
	var name:[String] = ["Milk","Eggs"]
	var cost:[String] = ["$\(9)","$\(8)"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	

	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return name.count
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let item = tableView.dequeueReusableCell(withIdentifier: "result", for: indexPath) as! SearchTableViewCell
		item.itemName.text = name[indexPath.row]
		item.itemPrice.text = cost[indexPath.row]
		return item
		
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
