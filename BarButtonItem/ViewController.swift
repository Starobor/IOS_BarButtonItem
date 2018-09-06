//
//  ViewController.swift
//  BarButtonItem
//
//  Created by Citizen on 06.09.2018.
//  Copyright © 2018 Citizen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let simpleSwitch = UISwitch()
        let items = ["up", "down"]
        
        simpleSwitch.isOn = true
        simpleSwitch.addTarget(self, action: #selector(switchIsChange(param:)), for: .valueChanged)
        
        let segmentControl = UISegmentedControl(items: items)
        segmentControl.isMomentary = true
        segmentControl.addTarget(self, action: #selector(segmentControllerTaped), for: .valueChanged)
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: segmentControl)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: simpleSwitch)
    }
    
    @objc func perfrAdd(param: UIBarButtonItem) {
        print("Add click")
    }
    
    @objc func switchIsChange(param: UISwitch) {
        if param.isOn {
            print("Switch is on")
        } else {
            print("Switch is off")
        }
    }
    
    @objc func segmentControllerTaped(param: UISegmentedControl) {
        switch param.selectedSegmentIndex {
        case 0:
            print("up")
        case 1:
            print("down")
        default:
            break
        }
    }
    

}

