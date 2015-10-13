//
//  Logger.swift
//  LumberJackExample
//
//  Created by Aromal Sasidharan on 10/8/15.
//  Copyright © 2015 Aromal Sasidharan. All rights reserved.
//

import Foundation

public class Logger:NSObject{
    
    var enableLogging:Bool = true
    static let instance = Logger()
    private var loggerTextView : JRTranscriptView?
    
    private func setLoggerTextView(uiview : JRTranscriptView){
    
        self.loggerTextView = uiview;
        
    }
    
    private func logToTextView(string : String){
        
        self.loggerTextView?.appendString(string);
        
    }
    
    
    public class func setTextView(uiview : JRTranscriptView){
        
        Logger.instance.setLoggerTextView(uiview)
        
    }
    public class func enableLog(flag : Bool)
    {
        Logger.instance.enableLogging = flag
    }
    public class func log(string : String){
        
        
        if Logger.instance.enableLogging {
            print(string)
            Logger.instance.logToTextView("\n\(string)")
        }
    }
    
}




