//
//  ItemInfoViewController.swift
//  Gundeti_GroceryApp
//
//  Created by Gundeti,Reshwanth on 4/12/22.
//

import UIKit

class ItemInfoViewController: UIViewController {
    
    var details : GroceryItem?
    
    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    
    
    @IBOutlet weak var itemInfoOutlet: UITextView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = details?.itemName
        itemInfoOutlet.isHidden = true
//        itemInfoOutlet.text = details?.itemInfo
        var imgn = details?.itemImage
        itemImageViewOutlet.image = UIImage(named: imgn!)
        let originalImageFrame = itemImageViewOutlet.frame
        let widthShrink: CGFloat = 30
        let heightShrink: CGFloat = 30
        let newFrame = CGRect(
        x: itemImageViewOutlet.frame.origin.x + widthShrink,
        y: itemImageViewOutlet.frame.origin.y + heightShrink,
        width: itemImageViewOutlet.frame.width - widthShrink,
        height: itemImageViewOutlet.frame.height - heightShrink)
        itemImageViewOutlet.frame = newFrame
        UIView.animate(withDuration: 1.0, delay: 0.7, usingSpringWithDamping: 0.3, initialSpringVelocity: 30.0,  animations: {
                        self.itemImageViewOutlet.frame = originalImageFrame
                    })
            
    }
    

   
    
    
    @IBAction func showItemInfoAction(_ sender: UIButton) {
        
        itemInfoOutlet.isHidden = false
        itemInfoOutlet.text = details?.itemInfo
    }
    
    

}
