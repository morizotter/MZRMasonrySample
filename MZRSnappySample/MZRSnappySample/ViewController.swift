//
//  ViewController.swift
//  MZRSnappySample
//
//  Created by MORITA NAOKI on 2014/11/01.
//  Copyright (c) 2014年 molabo. All rights reserved.
//

import UIKit
import Snappy

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // FULL SCREEN VIEW [YELLOW]
        
        let yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(yellowView)
        
        yellowView.backgroundColor = UIColor.redColor()
        yellowView.snp_makeConstraints { make in
            make.edges.equalTo(self.view)
            return
        }
        
        // PADDING ALL EDGES [ORANGE]
        
        let orangeView = UIView()
        orangeView.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(orangeView)
        
        let orangeViewPadding = UIEdgeInsetsMake(10, 10, 10, 10)
        orangeView.snp_makeConstraints { make in
            make.edges.equalTo(self.view).with.insets(orangeViewPadding)
            return
        }
        
        // VIEW ON PADDING VIEW [GREEN]
        
        let greenView = UIView()
        greenView.backgroundColor = UIColor.greenColor()
        orangeView.addSubview(greenView)
        
        let greenViewPadding = UIEdgeInsetsMake(0.0, 0.0, 150.0, 10.0)
        greenView.snp_makeConstraints { make in
            make.top.equalTo(orangeView.snp_top).with.offset(greenViewPadding.top)
            make.left.equalTo(orangeView.snp_left).with.offset(greenViewPadding.left)
            make.bottom.equalTo(orangeView.snp_bottom).with.offset(-greenViewPadding.bottom)
            make.right.equalTo(orangeView.snp_right).with.offset(-greenViewPadding.right)
            return
        }
    }
}

