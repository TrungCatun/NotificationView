//
//  ViewController.swift
//  NotificationView
//
//  Created by trung on 2018/08/27.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(setData(notification:)), name: .key, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }
    deinit {
         NotificationCenter.default.removeObserver(self)
        print("sao lai xoa")
    }

    @IBOutlet weak var outletView: UITextField!
    
    @IBAction func bottonView(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let toDetail = segue.destination as? DetailViewController {
            toDetail.dataTake = outletView.text
        }
    }
    @objc func setData(notification: NSNotification) {
        outletView.text = notification.object as? String 
    }
    
}

