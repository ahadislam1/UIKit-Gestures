//
//  TapGestureController.swift
//  UIKit-Gestures
//
//  Created by Ahad Islam on 2/3/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import UIKit

/*
 UITapGestureRecognizer
 
 long press
 rotation
 swipe left right up down
 pinch
 pan
 */

class TapGestureController: UIViewController {
    
    @IBOutlet weak var heartImageView: UIImageView!
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(didTap(_:)))
        gesture.numberOfTouchesRequired = 1
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        // Do any additional setup after loading the view.
        
        // 2. add gesture to imageView
        heartImageView.addGestureRecognizer(tapGesture)
        heartImageView.isUserInteractionEnabled = true
    }
    
    @objc private func didTap(_ gesture: UITapGestureRecognizer) {
        
        heartImageView.image == UIImage(systemName: "heart.fill") ? (heartImageView.image = UIImage(systemName: "heart")) : (heartImageView.image = UIImage(systemName: "heart.fill"))
        
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
