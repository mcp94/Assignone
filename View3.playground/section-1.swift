// Playground - noun: a place where people can play

import UIKit

let viewRect = CGRect(x:0, y:0, width: 320.0, height:480)
let view = UIView(frame: viewRect)
view.backgroundColor = UIColor(red: 240.0/255, green: 230.0/255, blue: 242.0/255, alpha: 1.0)

let subView = UIView(frame: CGRectZero)
subView.setTranslatesAutoresizingMaskIntoConstraints(false)
subView.backgroundColor = UIColor.greenColor()
let subViewTopConstraint = NSLayoutConstraint(item: subView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 20.0)

let subViewRightConstraint = NSLayoutConstraint(item: subView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier:1.0, constant: -16.0)

let subViewBottomConstraint = NSLayoutConstraint(item: subView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: -10.0)

let subViewLeftConstraint = NSLayoutConstraint(item: subView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 16.0)


view.setTranslatesAutoresizingMaskIntoConstraints(false)
subView.setTranslatesAutoresizingMaskIntoConstraints(false)
view.addSubview(subView)

view.addConstraints([subViewTopConstraint,subViewBottomConstraint, subViewLeftConstraint, subViewRightConstraint])
view.constraints()




let orangeView = UIView(frame: CGRectZero)
orangeView.setTranslatesAutoresizingMaskIntoConstraints(false)
orangeView.backgroundColor = UIColor.orangeColor()
let blueView = UIView(frame: CGRectZero)
blueView.setTranslatesAutoresizingMaskIntoConstraints(false)
blueView.backgroundColor = UIColor.blueColor()
let yellowView = UIView(frame: CGRectZero)
yellowView.setTranslatesAutoresizingMaskIntoConstraints(false)
yellowView.backgroundColor = UIColor.yellowColor()

subView.addSubview(orangeView)
subView.addSubview(yellowView)
subView.addSubview(blueView)







let orangeViewTopConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 10.0)

let orangeViewRightConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: -10.0)

let orangeViewLeftConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 3.0)

let orangeViewBottomConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: -3.0)




let blueViewTopConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 10)
let blueViewRightConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: orangeView, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: -6.0)
let blueViewBottomConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: -6.0)
let blueViewLeftConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 10)




let yellowViewTopConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 3.0)

let yellowViewRightConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: -10.0)

let yellowViewLeftConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 10.0)

let yellowViewBottomConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: -10.0)


var constraints = [orangeViewTopConstraint,orangeViewBottomConstraint,orangeViewLeftConstraint,orangeViewRightConstraint,blueViewTopConstraint,blueViewBottomConstraint,blueViewLeftConstraint,blueViewRightConstraint,yellowViewLeftConstraint,yellowViewBottomConstraint,yellowViewTopConstraint,yellowViewRightConstraint,]
view.addConstraints(constraints)
view.layoutIfNeeded()
view

