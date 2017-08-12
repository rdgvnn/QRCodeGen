//
//  ViewController.swift
//  QRCodeGen
//
//  Created by Renato Degiovanni on 11/08/17.
//  Copyright © 2017 Renato Degiovanni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MyText: UITextField!
    @IBOutlet weak var MyImage: UIImageView!
    
    @IBAction func MyButton(_ sender: UIButton)
    {
    
    if let myString = MyText.text
        {
            let data = myString.data(using: .ascii, allowLossyConversion: false)
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter?.setValue(data, forKey: "inputMessage")
            
            let image = UIImage(ciImage: (filter?.outputImage)!)
            
            MyImage.image = image
    }
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

