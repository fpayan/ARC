//
//  SelectionInMapViewController.swift
//  ARC_Circles
//
//  Created by Joaquin Perez on 13/03/2018.
//  Copyright © 2018 Joaquin Perez. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SelectionInMapViewController: UIViewController {
    
    let mapView = MKMapView()
    let textField = UITextField()
    
    override func loadView() {
        
        let backView = UIView()
        
        backView.addSubview(mapView)
        backView.addSubview(textField)
        textField.backgroundColor = UIColor.init(white: 1, alpha: 0.7)
        
        // MARK: Autolayout.
        mapView.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        let dictViews = ["mapView":mapView, "textField":textField]
        
        // Horizontals
        var constraint = NSLayoutConstraint.constraints(withVisualFormat: "|-0-[mapView]-0-|", options: [], metrics: nil, views: dictViews)
        
        constraint.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "|-20-[textField]-20-|", options: [], metrics: nil, views: dictViews))
        
        // Verticals
        
        constraint.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[mapView]-0-|", options: [], metrics: nil, views: dictViews))
        
        constraint.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:|-70-[textField(40)]", options: [], metrics: nil, views: dictViews))
        
        backView.addConstraints(constraint)
        
        self.view = backView
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
