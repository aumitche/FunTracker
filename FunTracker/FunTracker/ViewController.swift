//
//  ViewController.swift
//  FunTracker
//
//  Created by aumitche on 2015–10–02.
//  Copyright © 2015 NIMF. All rights reserved.
//

import UIKit
import SwiftHTTP

class ViewController: UIViewController {
	let ip = "http://10.10.10.60/rec.php?ID=10&BPM=120&X=0&Y=30"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		do {
			let opt = try HTTP.GET(ip)
			opt.start { response in
				if let err = response.error {
					print("error: \(err.localizedDescription)")
					return //also notify app of failure as needed
				}
				//print("opt finished: \(response.description)")
				//print("\(response.data)") //access the response of the data with response.data
				var data = NSString(data: response.data, encoding: NSUTF8StringEncoding)
				print(data!)
			}
		} catch let error {
			print("got an error creating the request: \(error)")
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func initialComm() {
		
	}

	func communicate(id: NSInteger, bpm: NSInteger, x: NSInteger, y: NSInteger) {
		
	}
	
}

