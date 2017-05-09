//
//  AddStudentViewController.swift
//  ManagementStudent
//
//  Created by Hien on 5/10/17.
//  Copyright © 2017 Hien. All rights reserved.
//

import UIKit

class AddStudentViewController: ViewController, UITextFieldDelegate, UITextViewDelegate {
    
    @IBOutlet var Name_tf: UITextField!
    @IBOutlet var Age_tf: UITextField!
    @IBOutlet var University_tf: UITextField!
    @IBOutlet var Description_tv: UITextView!
    @IBOutlet var ScrollView: UIScrollView!

    @IBAction func Add(_ sender: Any) {
        
        if (Name_tf.text!.isEmpty || University_tf.text!.isEmpty || Age_tf.text!.isEmpty ) {
            //create alert
            let alert = UIAlertController(title: "Warning", message: "TextField is blank", preferredStyle: UIAlertControllerStyle.alert);
            //add an action
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil));
            //show alert
            self.present(alert, animated: true, completion: nil);
            
        }
        else{
            NewStudent.isLoadData = true
            let st : Student = Student(name: Name_tf.text!, university: University_tf.text!, description: Description_tv.text!, age: Int(Age_tf.text!)! )
            
            NewStudent.student = st
            self.navigationController?.popViewController(animated: true)
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        Age_tf.keyboardType = UIKeyboardType.decimalPad
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardDidShow(notification:)) , name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardDidHide(notification:)), name: NSNotification.Name.UIKeyboardDidHide, object: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //ScrollView.setContentOffset(CGPoint(x:0,y:250), animated: true)
        self.Name_tf = textField
        self.Age_tf = textField
        self.University_tf = textField
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.Name_tf = nil
        self.Age_tf = nil
        self.University_tf = nil
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        self.Description_tv = textView
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        self.Description_tv = nil
    }
    
    func keyboardDidShow(notification: NSNotification) {
        
        if let activeField = self.University_tf, let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardSize.height, right: 0.0)
            self.ScrollView.contentInset = contentInsets
            self.ScrollView.scrollIndicatorInsets = contentInsets
            var aRect = self.view.frame
            aRect.size.height -= keyboardSize.size.height
            if (!aRect.contains(activeField.frame.origin)) {
                self.ScrollView.scrollRectToVisible(activeField.frame, animated: true)
            }
        }
    }
    
    func keyboardDidHide(notification: NSNotification) {
        let contentInsets = UIEdgeInsets.zero
        self.ScrollView.contentInset = contentInsets
        self.ScrollView.scrollIndicatorInsets = contentInsets
        
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
