//
//  Copyright © 2016 Tomas Linhart. All rights reserved.
//

import CGtk

protocol SignalBox {
    associatedtype CallbackType
    var callback: CallbackType { get }
    init(callback: CallbackType)
}

func gCallback<T>(_ closure: T) -> GCallback {
    return unsafeBitCast(closure, to: GCallback.self)
}

class SignalBox0: SignalBox {
    typealias CallbackType = () -> Void

    let callback: CallbackType

    required init(callback: @escaping CallbackType) {
        self.callback = callback
    }
}

class SignalBox1<T1>: SignalBox {
    typealias CallbackType = (T1) -> Void

    let callback: CallbackType

    required init(callback: @escaping CallbackType) {
        self.callback = callback
    }

    static func run<U1>(_ data: UnsafeMutableRawPointer, _ value1: U1) {
        let box = Unmanaged<SignalBox1<U1>>.fromOpaque(data)
            .takeUnretainedValue()
        box.callback(value1)
    }
}

class SignalBox2<T1, T2>: SignalBox {
    typealias CallbackType = (T1, T2) -> Void

    let callback: CallbackType

    required init(callback: @escaping CallbackType) {
        self.callback = callback
    }

    static func run<U1, U2>(_ data: UnsafeMutableRawPointer, _ value1: U1, _ value2: U2) {
        let box = Unmanaged<SignalBox2<U1, U2>>.fromOpaque(data)
            .takeUnretainedValue()
        box.callback(value1, value2)
    }
}

class SignalBox3<T1, T2, T3>: SignalBox {
    typealias CallbackType = (T1, T2, T3) -> Void

    let callback: CallbackType

    required init(callback: @escaping CallbackType) {
        self.callback = callback
    }

    static func run<U1, U2, U3>(
        _ data: UnsafeMutableRawPointer, _ value1: U1, _ value2: U2, _ value3: U3
    ) {
        let box = Unmanaged<SignalBox3<U1, U2, U3>>.fromOpaque(data)
            .takeUnretainedValue()
        box.callback(value1, value2, value3)
    }
}

class SignalBox4<T1, T2, T3, T4>: SignalBox {
    typealias CallbackType = (T1, T2, T3, T4) -> Void

    let callback: CallbackType

    required init(callback: @escaping CallbackType) {
        self.callback = callback
    }

    static func run<U1, U2, U3, U4>(
        _ data: UnsafeMutableRawPointer, _ value1: U1, _ value2: U2, _ value3: U3, _ value4: U4
    ) {
        let box = Unmanaged<SignalBox4<U1, U2, U3, U4>>.fromOpaque(data)
            .takeUnretainedValue()
        box.callback(value1, value2, value3, value4)
    }
}

class SignalBox5<T1, T2, T3, T4, T5>: SignalBox {
    typealias CallbackType = (T1, T2, T3, T4, T5) -> Void

    let callback: CallbackType

    required init(callback: @escaping CallbackType) {
        self.callback = callback
    }

    static func run<U1, U2, U3, U4, U5>(
        _ data: UnsafeMutableRawPointer, _ value1: U1, _ value2: U2, _ value3: U3, _ value4: U4,
        _ value5: U5
    ) {
        let box = Unmanaged<SignalBox5<U1, U2, U3, U4, U5>>.fromOpaque(data)
            .takeUnretainedValue()
        box.callback(value1, value2, value3, value4, value5)
    }
}

class SignalBox6<T1, T2, T3, T4, T5, T6>: SignalBox {
    typealias CallbackType = (T1, T2, T3, T4, T5, T6) -> Void

    let callback: CallbackType

    required init(callback: @escaping CallbackType) {
        self.callback = callback
    }

    static func run<U1, U2, U3, U4, U5, U6>(
        _ data: UnsafeMutableRawPointer, _ value1: U1, _ value2: U2, _ value3: U3, _ value4: U4,
        _ value5: U5, _ value6: U6
    ) {
        let box = Unmanaged<SignalBox6<U1, U2, U3, U4, U5, U6>>.fromOpaque(data)
            .takeUnretainedValue()
        box.callback(value1, value2, value3, value4, value5, value6)
    }
}
