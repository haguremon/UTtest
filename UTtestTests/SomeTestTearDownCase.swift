//
//  SomeTestTearDownCase.swift
//  UTtestTests
//
//  Created by IwasakIYuta on 2021/12/11.
//テストの事後処理を行うメソッド tearDown()
//一時ファイルの削除など、テストのあとに必要な処理を実行

import XCTest

class SomeTestTearDownCase: XCTestCase {
    //一番最後に一回だけ呼ばれるクラスメソッド setupと逆
    override class func tearDown() {
        super.tearDown()
        print("テストケース全体の事後処理")
        
    }
    //テストが呼ばれた後に呼ばれる
    override func tearDown() {
        super.tearDown()
        print("テストごとの事後処理")
    }
    func test1() {
        print("テスト1")
    }
    func test2() {
        print("テスト2")
    }
    func test3() {
        print("テスト3")
    }
    
}
