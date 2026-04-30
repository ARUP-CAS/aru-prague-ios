//
//  ImageCard.swift
//  Archeologie
//
//  Created by Matěj Novák on 14/09/2020.
//  Copyright © 2020 Matěj Novák. All rights reserved.
//

import UIKit

class SphereImageCard:UIView {
    @IBOutlet weak var imageView:CTPanoramaView!
    @IBOutlet weak var textLabel:UILabel!
    @IBOutlet weak var overlayView:UIView!
    
    var image:SphereContent! {
        didSet {
            if let url = try? image.sphereurl.asURL(), let data = try? Data(contentsOf: url), let rImage = UIImage(data: data) {
                imageView.image = rImage
            }
            textLabel.attributedText = image.text.htmlAttributed
            imageView.panoramaType = .spherical
            imageView.controlMethod = .motion
        }
    }
    
}

