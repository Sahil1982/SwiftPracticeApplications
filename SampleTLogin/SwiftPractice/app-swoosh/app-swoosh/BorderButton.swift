//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Cognizant on 28/03/22.
//  Copyright © 2022 T-Systems. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
