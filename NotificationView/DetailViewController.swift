//
//  DetailViewController.swift
//  NotificationView
//
//  Created by trung on 2018/08/27.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
     @IBOutlet weak var outletDetail: UITextField!
    var dataTake: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        if dataTake != nil {
            outletDetail.text = dataTake
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("ko hieu luon")
    }
    
    @IBAction func buttonDetail(_ sender: Any) {
        NotificationCenter.default.post(name: .key , object: outletDetail.text)
       navigationController?.popViewController(animated: true)
    }
    
    
 
    
}
