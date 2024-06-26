//
//  ViewController.swift
//  IMC App
//
//  Created by Guilherme Nazaré Araújo on 08/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var imResult: UIImageView!
    @IBOutlet weak var viResult: UIView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculo(_ sender: Any) {
    if let weight = Double(tfWeight.text!), let height = Double(tfHeight.text!) {
            imc = weight / (height*height)
            showResults()
        }
    }

    func showResults(){
        var result: String = ""
        var image: String = ""
        switch imc {
            case 0..<16:
                result = "Magreza"
                image = "abaixo"
            case 16..<18.5:
                result = "Abaixo do peso"
                image = "abaixo"
            case 18.5..<25:
                result = "Peso ideal"
                image = "ideal"
            case 25..<30:
                result = "Sobrepeso"
                image = "sobre"
            default:
                result = "Obesidade"
                image = "obesidade"
        }
        lbResult.text = result
        imResult.image = UIImage (named: image)
        viResult.isHidden = false
    }
}

