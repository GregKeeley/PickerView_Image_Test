//
//  ViewController.swift
//  ScrollView_Image_Test
//
//  Created by Gregory Keeley on 9/28/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    
    var collection = Array(repeating: 1, count: 3)
    
    override func viewDidLoad() {
        pickerView.delegate = self
        pickerView.dataSource = self
        super.viewDidLoad()
    }
    

}

extension ViewController: UIPickerViewDelegate {
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        let item = collection[row]
//        return ("\(item.description)")
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: pickerView.bounds.width / 2, height: pickerView.bounds.height / 2))
        var myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 220, height: 61))
        myImageView = UIImageView(image: UIImage(systemName: "heart"))
        myView.addSubview(myImageView)
        return myView
    }
}
extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return collection.count
    }
    
    
}
