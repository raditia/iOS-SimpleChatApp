//
//  QiscusColorConfiguration.swift
//  QiscusSDK
//
//  Created by Ahmad Athaullah on 9/7/16.
//  Copyright © 2016 Ahmad Athaullah. All rights reserved.
//

import UIKit

open class QiscusColorConfiguration: NSObject {
    static var sharedInstance = QiscusColorConfiguration()
    
    /// Your cancel button color, using UIColor class, Default value : UIColor(red: 223/255.0, green: 223/255.0, blue: 223/255.0, alpha:1.0)
    open var cancelButtonColor = UIColor(red: 223/255.0, green: 223/255.0, blue: 223/255.0, alpha:1.0)
    
    /// Your alert text color, using UIColor class, Default value : UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha:1.0)
    open var alertTextColor = UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha:1.0)
    
    /// Your left baloon color, using UIColor class, Default value : UIColor(red: 0/255.0, green: 187/255.0, blue: 150/255.0, alpha: 1.0)
    open var leftBaloonColor = UIColor(red: 0/255.0, green: 187/255.0, blue: 150/255.0, alpha: 1)
    
    /// Your right baloon color, using UIColor class, Default value : UIColor(red: 165/255.0, green: 226/255.0, blue: 221/255.0, alpha: 1.0)
    open var rightBaloonColor = UIColor(red: 165/255.0, green: 226/255.0, blue: 221/255.0, alpha: 1)
    
    /// Your right baloon color, using UIColor class, Default value : UIColor(red: 165/255.0, green: 226/255.0, blue: 221/255.0, alpha: 1.0)
    open var systemBalloonColor = UIColor(red: 201/255, green: 229/255, blue: 215/255, alpha: 1)
    
    /// Your right baloon color, using UIColor class, Default value : UIColor(red: 165/255.0, green: 226/255.0, blue: 221/255.0, alpha: 1.0)
    open var systemBalloonTextColor = UIColor(red: 33/255, green: 33/255, blue: 35/255, alpha: 1)
    
    /// Your left baloon text color, using UIColor class, Default value : UIColor.whiteColor()
    open var leftBaloonTextColor = UIColor.white
    
    /// Your right baloon text color, using UIColor class, Default value : UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
    open var rightBaloonTextColor = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
    
    /// Your text color of time label, using UIColor class, Default value : UIColor(red: 114/255.0, green: 114/255.0, blue: 114/255.0, alpha: 1)
    open var timeLabelTextColor = UIColor(red: 114/255.0, green: 114/255.0, blue: 114/255.0, alpha: 1)
    
    /// Your failed text color if the message fail to send, using UIColor class, Default value : UIColor(red: 1, green: 19/255.0, blue: 0, alpha: 1)
    open var failToSendColor = UIColor(red: 1, green: 19/255.0, blue: 0, alpha: 1)
    open var readMessageColor = UIColor.green
    
    /// Your link color of left baloon chat, using UIColor class, Default value : UIColor.whiteColor()
    open var leftBaloonLinkColor = UIColor.white
    
    /// Your link color of right baloon chat, using UIColor class, Default value : UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
    open var rightBaloonLinkColor = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
    
    /// Your background color of lock view, using UIColor class, Default value : UIColor(red: 255.0/255.0, green: 87/255.0, blue: 34/255.0, alpha: 1)
    open var lockViewBgColor = UIColor(red: 255.0/255.0, green: 87/255.0, blue: 34/255.0, alpha: 1)
    
    /// Your tint color of lock view, using UIColor class, Default value : UIColor.blackColor()
    open var lockViewTintColor = UIColor.black
    
    /// Welcome image color, using UIColor class, Default value: UIColor(red: 18/255.0, green: 180/255.0, blue: 147/255.0, alpha: 1)
    open var welcomeIconColor = UIColor(red: 18/255.0, green: 180/255.0, blue: 147/255.0, alpha: 1)
    
    public var topColor = UIColor(red: 8/255.0, green: 153/255.0, blue: 140/255.0, alpha: 1.0)
    public var bottomColor = UIColor(red: 23/255.0, green: 177/255.0, blue: 149/255.0, alpha: 1)
    public var tintColor = UIColor.white
    
    public var avatarBackgroundColor:[UIColor] = [
        UIColor(red: 1, green: 23/255, blue: 68/255, alpha: 1),
        UIColor(red: 61/255, green: 90/255, blue: 254/255, alpha: 1),
        UIColor(red: 198/255, green: 1, blue: 0, alpha: 1),
        UIColor(red: 29/255, green: 233/255, blue: 182/255, alpha: 1),
        UIColor(red: 1, green: 145/255, blue: 0, alpha: 1),
        UIColor(red: 0, green: 176/255, blue: 1, alpha: 1),
        UIColor(red: 118/255, green: 1, blue: 3/255, alpha: 1),
        UIColor(red: 1, green: 61/255, blue: 0, alpha: 1),
        UIColor(red: 101/255, green: 31/255, blue: 1, alpha: 1),
        UIColor(red: 1, green: 196/255, blue: 0, alpha: 1),
        UIColor(red: 41/255, green: 121/255, blue: 1, alpha: 1),
        UIColor(red: 1, green: 234/255, blue: 0, alpha: 1),
        UIColor(red: 213/255, green: 0, blue: 249/255, alpha: 1),
        UIColor(red: 0, green: 230/255, blue: 118/255, alpha: 1),
        UIColor(red: 245/255, green: 0, blue: 87/255, alpha: 1),
        UIColor(red: 0, green: 229/255, blue: 1, alpha: 1)
    ]
    
    
    
    public var baseColor:UIColor{
        get{
            return self.topColor
        }
    }
    
    fileprivate override init(){}
}
