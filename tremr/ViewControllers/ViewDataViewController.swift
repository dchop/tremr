//
//  ViewDataViewController.swift
//  tremr
//
//  Created by Nic Klaasen and Devansh Chopra on 10/22/18.
//  Created by Kira Nishi Beckingham on 2018-11-01.
//  Copyright © 2018 CO.DEsign. All rights reserved.
//
// This file controls the View Data page
//

import Foundation
import UIKit
//import Charts

class ViewDataViewController: UIViewController {
    
    @IBOutlet weak var weekContainer: UIView!
    @IBOutlet weak var monthContainer: UIView!
    @IBOutlet weak var yearContainer: UIView!
    @IBOutlet weak var weekBarContainer: UIView!
    @IBOutlet weak var monthBarContainer: UIView!
    @IBOutlet weak var yearBarContaienr: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var mainView: UIView!
    
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            weekContainer.isHidden = false
            weekBarContainer.isHidden = false
            monthContainer.isHidden = true
            monthBarContainer.isHidden = true
            yearContainer.isHidden = true
            yearBarContaienr.isHidden = true
    
        case 1:
            weekContainer.isHidden = true
            weekBarContainer.isHidden = true
            monthContainer.isHidden = false
            monthBarContainer.isHidden = false
            yearContainer.isHidden = true
            yearBarContaienr.isHidden = true
    
        case 2:
            weekContainer.isHidden = true
            weekBarContainer.isHidden = true
            monthContainer.isHidden = true
            monthBarContainer.isHidden = true
            yearContainer.isHidden = false
            yearBarContaienr.isHidden = false
    
        default:
            weekContainer.isHidden = false
            weekBarContainer.isHidden = false
            monthContainer.isHidden = true
            monthBarContainer.isHidden = true
            yearContainer.isHidden = true
            yearBarContaienr.isHidden = true
    
            break;
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        //set default view to Week View
        mainView.bringSubview(toFront: weekBarContainer)
        mainView.bringSubview(toFront: weekContainer)
    }
    
    // go back to main menu when the back button is pressed
    @IBAction func mainViewTransition(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }

}
