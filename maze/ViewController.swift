//
//  ViewController.swift
//  maze
//
//  Created by 20161104599 on 2018/11/23.
//  Copyright © 2018 20161104599. All rights reserved.
//

import UIKit

var animator: UIDynamicAnimator!;//物理引擎
var gravity: UIGravityBehavior!;//重力行为
var collision: UICollisionBehavior!;


class ViewController: UIViewController {

    override func viewDidLoad() {
        
        
       
        
        
     // collision = UICollisionBehavior(items: [square,barrier]);
        
        
        
        
        
        
        
        
        let square = UIView(frame: CGRect(x: 110, y: 100, width: 110, height: 110));
        square.backgroundColor = UIColor.black;
        self.view.addSubview(square);
        
       
        
  //      animator = UIDynamicAnimator(referenceView: self.view);
   //     gravity = UIGravityBehavior(items: [square]);
   //     animator.addBehavior(gravity);
        
        
        animator = UIDynamicAnimator(referenceView: self.view);
        gravity = UIGravityBehavior(items: [square]);
        gravity.angle = 1.6;
        // 速率
        gravity.magnitude = 0.1;
        // 将重力行为添加到UIKit物理引擎类中
        animator.addBehavior(gravity);
      //  collision = UICollisionBehavior(items: [square]);
        
        let barrier = UIView(frame:CGRect(x: 0, y: 300, width: 140, height: 20));
        barrier.backgroundColor = UIColor.red;
        
        
        let barrier1 = UIView(frame:CGRect(x: 240, y: 450, width: 140, height: 20));
        barrier1.backgroundColor = UIColor.red;
        
        
        let barrier2 = UIView(frame:CGRect(x: -50, y: 650, width: 140, height: 20));
        barrier2.backgroundColor = UIColor.red;
        
        self.view.addSubview(barrier);
        self.view.addSubview(barrier1);
        self.view.addSubview(barrier2);
        gravity = UIGravityBehavior(items: [barrier]);
        gravity = UIGravityBehavior(items: [barrier1]);
        gravity = UIGravityBehavior(items: [barrier2]);
        gravity.angle = 0;
        // 速率
        gravity.magnitude = 0;
        
        
        
        collision = UICollisionBehavior(items: [square]);
       // collision.addBoundary(withIdentifier: "square", for: <#T##UIBezierPath#>)
    //    collision.addBoundary(withIdentifier: "square", from: (0,300), to: (300,400))
      collision.addBoundary(withIdentifier: "square" as NSCopying, from: CGPoint(x: 0,y: 300), to: CGPoint(x: 140, y: 300))
        
        collision.translatesReferenceBoundsIntoBoundary = true;// 将碰撞行为添加到UIKit物理引擎类中
        animator.addBehavior(collision);
        
        
        collision = UICollisionBehavior(items: [square]);
        collision.addBoundary(withIdentifier: "square" as NSCopying, from: CGPoint(x: 240, y: 450), to: CGPoint(x: 250, y: 450))
        
        collision.translatesReferenceBoundsIntoBoundary = true;// 将碰撞行为添加到UIKit物理引擎类中
        animator.addBehavior(collision);
        
        
        collision = UICollisionBehavior(items: [square]);
        collision.addBoundary(withIdentifier: "square" as NSCopying, from: CGPoint(x: 50,y: 650), to: CGPoint(x: 100, y: 650))
        
        collision.translatesReferenceBoundsIntoBoundary = true;// 将碰撞行为添加到UIKit物理引擎类中
        animator.addBehavior(collision);
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

