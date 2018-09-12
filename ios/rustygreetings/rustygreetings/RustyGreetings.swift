//
//  RustyGreetings.swift
//  rustygreetings
//
//  Created by Paul Ehrhardt on 12.09.18.
//  Copyright © 2018 Paul Ehrhardt. All rights reserved.
//

import Foundation

class RustGreetings {
    func sayHello(to: String) -> String {
        let result = rust_greeting(to)
        let swift_result = String(cString: result!)
        rust_greeting_free(UnsafeMutablePointer(mutating: result))
        return swift_result
    }
}
