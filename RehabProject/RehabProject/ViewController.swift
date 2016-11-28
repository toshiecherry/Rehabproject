//
//  ViewController.swift
//  RehabProject
//
//  Created by Elin Sakurai on 2016-11-28.
//  Copyright © 2016 Elin Sakurai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var degrees: CGFloat = 0;
    
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var compassImageView: UIImageView!
    @IBOutlet weak var catchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateImage() {
        degrees += 20
        compassImageView.transform = CGAffineTransform(rotationAngle: degrees * CGFloat(M_PI/180) )
    }
    
    @IBAction func catchButtonPressed(_ sender: AnyObject) {
        updateImage()
    }
    
    


}

