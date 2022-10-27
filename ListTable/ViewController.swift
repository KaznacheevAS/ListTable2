//
//  ViewController.swift
//  ListTable
//
//  Created by Anton Kaznacheev on 25.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet  private weak var imagesCover: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    var track: ListTugle!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagesCover.image = UIImage(named: "\(track.artist)")
        titleLabel.text = track.song
    }
}

