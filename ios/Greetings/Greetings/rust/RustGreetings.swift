//
//  RustGreetings.swift
//  Greetings
//
//  Created by YOHEI OKAYA on 2019/09/15.
//  Copyright © 2019 YOHEI OKAYA. All rights reserved.
//

class RustGreetings {
    func sayHello(to: String) -> String {
        let result = rust_greeting(to)
        let swift_result = String(cString: result!)
        rust_greeting_free(UnsafeMutablePointer(mutating: result))
        return swift_result
    }
}
