//
//  SomeTestSetUpCase.swift
//  UTtestTests
//
//  Created by IwasakIYuta on 2021/12/01.
//

import XCTest
//事前処理の使い所
//テスト対象の状態のリセットや、一時ファイルの作成など、テストの前に必要な処理を実行

//事前処理
final class SomeTestSetUpCase: XCTestCase {
//一番最初に呼ばれる
    override class func setUp() {
        super.setUp()
        print("テストケース全体の事前処理で一度だけしか行われない")
        
    }
    
    override func setUp() {
        super.setUp()
        print("下のテストごとに事前処理を行う")
        
    }
    
    //func setUp()が呼ばれたからテストがそれぞれ行われる
    func test1() {
        
        print("テスト1")
    }
    
    
    func test2() {
        print("テスト2")
    }

}
