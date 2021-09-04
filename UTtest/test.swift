//
//  test.swift
//  UTtest
//
//  Created by IwasakIYuta on 2021/09/03.
// テストするコード

import Foundation

//@testable import UTtest //internalまでなら使える



struct Temperature: Equatable {
    
    public var celsius: Double
    
    public var faherneit: Double {
        
        return (9.0 / 5.0) * celsius + 32.0
    }
    public init(celsius: Double) {
        self.celsius = celsius
    }
    
    internal var test: String = "aaa"
    internal var test1: String = "bbbb"
    
    private var testprivate: String = "avbc"
    
    static let teststatic: String = "static"
    
    
    
}
//errorの構造体
struct errorType:Error {
    
}

//errorを発生させる処理

public struct ThrowError {
    
    func throwableFunc(throwsError: Bool) throws {
        
        if throwsError {
            
            throw errorType()
            
        }
    }
    
}
