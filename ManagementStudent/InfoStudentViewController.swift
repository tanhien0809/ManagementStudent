//
//  InfoStudentViewController.swift
//  ManagementStudent
//
//  Created by Hien on 5/10/17.
//  Copyright © 2017 Hien. All rights reserved.
//

import UIKit

class InfoStudentViewController: ViewController {
    
    var infoStudent: Student?
    
    @IBOutlet var Name_lb: UILabel!
    @IBOutlet var Age_lb: UILabel!
    @IBOutlet var University_lb: UILabel!
    @IBOutlet var Description_lb: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        Name_lb.text = infoStudent?.getName()
        Age_lb.text = String( describing: infoStudent?.getAge())
        University_lb.text = infoStudent?.getUniversity()
        Description_lb.text = infoStudent?.getDescription()


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
