//
//  StoresViewController.swift
//  ADEM.
//
//  Created by Coleman Coats on 3/30/17.
//  Copyright © 2017 Coleman Coats. All rights reserved.
//

import UIKit
import WebKit

class StoresViewController: UIViewController {

	var webView:WKWebView!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		webView = WKWebView(frame: CGRect(x: 0, y: 20, width: 300, height: 300))
		view.addSubview(webView)
		let url:URL = URL(string: "https://www.amazon.com/")!
		let req:URLRequest = URLRequest(url: url)
		webView.load(req)
    }

	@IBAction func amazon(_ sender: Any) {

	webView = WKWebView(frame: CGRect(x: 61, y: 193, width: 187, height: 147))
	view.addSubview(webView)
	let url:URL = URL(string: "https://www.amazon.com/")!
	let req:URLRequest = URLRequest(url: url)
	webView.load(req)
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
