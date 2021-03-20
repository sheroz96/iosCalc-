//
//  history.swift
//  calc+
//
//  Created by MacBook on 1/1/21.
//

import UIKit

class history: UIViewController {

    @IBOutlet weak var label: UILabel!
    var equals: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = equals

    
    }    

}
