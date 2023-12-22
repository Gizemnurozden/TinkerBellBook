//
//  detailsVC.swift
//  TinkerBellBook
//
//  Created by Gizemnur Özden on 5.09.2023.
//

import UIKit

class detailsVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedTinkerbell : TinkerBell?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedTinkerbell?.name
        jobLabel.text = selectedTinkerbell?.job
        imageView.image = selectedTinkerbell?.image
        
    }
    

   

}
