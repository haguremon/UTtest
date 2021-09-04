//
//  UTtestTests.swift
//  UTtestTests
//
//  Created by IwasakIYuta on 2021/09/03.
//

import XCTest
@testable import UTtest //テストするディレクトリー staticからinternalまでいける　privateは無理

final class UTtestTests: XCTestCase {
    
    //融点をテストする
    func testWatherMeltingPoint(){
        
        let temperature = Temperature(celsius: 0)
        //第一、第二がイコールの時に成功
        XCTAssertEqual(temperature.celsius,0)
        
        XCTAssertEqual(temperature.faherneit, 32)
        XCTAssertEqual(temperature.test, "aaa")
        XCTAssertEqual(Temperature.teststatic, "static")
    }
    //沸点を調べる
    
    func testWatherBoilingPoint(){
        
        let temperature = Temperature(celsius: 100)
        
        XCTAssertEqual(temperature.celsius,100)
        
        XCTAssertEqual(temperature.faherneit, 212)
        
    }
    //単一
    func testSingleExpression() {
        let value = 5
        //引数がTrueだったら成功
        XCTAssert(value == 5)//ここの方が簡潔
        XCTAssertTrue(value < 9)
        //引数がfalseだったら成功
        XCTAssertFalse(value > 100)
        
        var nilValue: Int? = nil
        //nilValue = 1
        //nilだった場合成功
        XCTAssertNil(nilValue)
        nilValue = 1
        //nilじゃなかったら成功
        XCTAssertNotNil(nilValue)
        
        nilValue = 1
        
        //特定のパスを取らない事を保証する
        guard let value = nilValue else  {
            //ここに入ってしまった場合はテスト失敗
            XCTFail()
            return
        }
        print(value)
        
    }
    //二つの式を比較
    func testTwoExpression(){
        //それぞれの引数が等しい場合
        XCTAssertEqual(1, 1)
        //$1 < $2　の場合成功
        XCTAssertLessThan(4, 100)
        //$1 <= $2 の場合成功
        XCTAssertLessThanOrEqual(4, 4)
        XCTAssertLessThanOrEqual(4, 10)
        // $1 > $2 の場合成功
        XCTAssertGreaterThan("aaa", "a")
        // $1 >= $2 の場合成功
        XCTAssertGreaterThanOrEqual("aaa", "a")
        XCTAssertGreaterThanOrEqual("aaa", "aaa")
        
        //エラーの有無を判断するアサーション
        let throwError = ThrowError()
        //Throwできたら成功　エラーが発生　テスト成功
        XCTAssertThrowsError(try throwError.throwableFunc(throwsError: true) )
        //Throwできなかったら成功　エラー失敗　テスト成功
        XCTAssertNoThrow(try throwError.throwableFunc(throwsError: false))
        
    }
    
    
}

