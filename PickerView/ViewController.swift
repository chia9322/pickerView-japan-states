//
//  ViewController.swift
//  PickerView
//
//  Created by Chia on 2022/03/18.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedArea: Area = areas[0]
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
    }

}


extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 2
}
    
func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    if component == 0 {
        return areas.count
    } else {
        return selectedArea.states.count
    }
}

func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    if component == 0 {
        return areas[row].name
    } else {
        return selectedArea.states[row]
    }
}

func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    resultLabel.text = "row:\(row), component:\(component)"
    if component == 0 {
        selectedArea = areas[row]
        pickerView.reloadComponent(1)
        pickerView.selectRow(0, inComponent: 1, animated: true)
        resultLabel.text = selectedArea.states[0]
    } else {
        resultLabel.text = selectedArea.states[row]
    }
}
    
}
