//
//  GesturesTabController.swift
//  UIKit-Gestures
//
//  Created by Ahad Islam on 2/3/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import UIKit

class GesturesTabController: UITabBarController {
    
    private lazy var tapGestureVC: TapGestureController = {
        // we need the storyboard instance
        let storyboard = UIStoryboard(name: "TapGesture", bundle: nil)
        // we need to get an instance from storyboard
        guard let viewController = storyboard.instantiateViewController(identifier: "TapGestureController") as? TapGestureController else {
            fatalError("could not downcast to TapgestureController")
        }
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [tapGestureVC, SwipeGestureController()]
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
