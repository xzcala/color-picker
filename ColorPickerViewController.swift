//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Jon Basa on 3/13/20.
//  Copyright © 2020 Jon Basa. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerLabel: UILabel!
    @IBOutlet weak var colorPickerView: UIPickerView!
    
    let colors = [Color(name: "Red", UIColor: UIColor.red),
                  Color(name: "Orange", UIColor: UIColor.orange),
                  Color(name: "Yellow", UIColor: UIColor.yellow),
                  Color(name: "Green", UIColor: UIColor.green),
                  Color(name: "Blue", UIColor: UIColor.blue),
                  Color(name: "Purple", UIColor: UIColor.purple),
    ]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerLabel.text = colors[row].name
        self.view.backgroundColor = colors[row].UIColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerLabel.text = colors[0].name
        self.view.backgroundColor = colors[0].UIColor
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
