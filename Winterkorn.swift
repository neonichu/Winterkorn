//
//  Winterkorn.swift
//
//  Created by Boris Bügling on 08/10/15.
//  Copyright © 2015 Boris Bügling. All rights reserved.
//

import XCTest

public class Winterkorn: NSObject {
    public override class func initialize() {
        let empty_block : @convention(block) () -> () = { () -> () in }
        let emptyIMP = imp_implementationWithBlock(unsafeBitCast(empty_block, AnyObject.self))
        let enqueueFailure_method = class_getInstanceMethod(XCTestCase.self, "_enqueueFailureWithDescription:inFile:atLine:expected:")
        let _ = method_setImplementation(enqueueFailure_method, emptyIMP)
    }
}
