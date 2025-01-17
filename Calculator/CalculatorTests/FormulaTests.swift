//
//  FormulaTests.swift
//  CalculatorTests
//
//  Created by mint on 2023/06/06.
//

import XCTest
@testable import Calculator

final class FormulaTests: XCTestCase {
    var sut: Formula!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Formula()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    func test_1더하기2일때_결과값이_3인지() {
        //given
        sut.operators.enqueue(Operator.add)
        sut.operands.enqueue(1)
        sut.operands.enqueue(2)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertEqual(result, 3)
    }
    
    func test_1더하기2더하기3일때_결과값이_6인지() {
        //given
        sut.operators.enqueue(Operator.add)
        sut.operators.enqueue(Operator.add)
        sut.operands.enqueue(1)
        sut.operands.enqueue(2)
        sut.operands.enqueue(3)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertEqual(result, 6)
    }
    
    func test_1빼기2일때_결과값이_마이너스1인지() {
        //given
        sut.operators.enqueue(Operator.subtract)
        sut.operands.enqueue(1)
        sut.operands.enqueue(2)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertEqual(result, -1)
    }
    
    func test_1빼기2빼기3일때_결과값이_마이너스4인지() {
        //given
        sut.operators.enqueue(Operator.subtract)
        sut.operators.enqueue(Operator.subtract)
        sut.operands.enqueue(1)
        sut.operands.enqueue(2)
        sut.operands.enqueue(3)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertEqual(result, -4)
    }
    
    func test_10빼기마이너스5일때_결과값이_15인지() {
        //given
        sut.operators.enqueue(Operator.subtract)
        sut.operands.enqueue(10)
        sut.operands.enqueue(-5)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertEqual(result, 15)
    }
    
    func test_1곱하기2일때_결과값이_2인지() {
        //given
        sut.operators.enqueue(Operator.multiply)
        sut.operands.enqueue(1)
        sut.operands.enqueue(2)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertEqual(result, 2)
    }
    
    func test_1곱하기2곱하기3일때_결과값이_6인지() {
        //given
        sut.operators.enqueue(Operator.multiply)
        sut.operators.enqueue(Operator.multiply)
        sut.operands.enqueue(1)
        sut.operands.enqueue(2)
        sut.operands.enqueue(3)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertEqual(result, 6)
    }
    
    func test_1나누기2일때_결과값이_0점5인지() {
        //given
        sut.operators.enqueue(Operator.divide)
        sut.operands.enqueue(1)
        sut.operands.enqueue(2)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertEqual(result, 0.5)
    }
    
    func test_1나누기2나누기4일때_결과값이_0점125인지() {
        //given
        sut.operators.enqueue(Operator.divide)
        sut.operators.enqueue(Operator.divide)
        sut.operands.enqueue(1)
        sut.operands.enqueue(2)
        sut.operands.enqueue(4)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertEqual(result, 0.125)
    }
    
    func test_10나누기0일때_결과값이_nan인지() {
        //given
        sut.operators.enqueue(Operator.divide)
        sut.operands.enqueue(10)
        sut.operands.enqueue(0)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertTrue(result.isNaN)
    }
    
    func test_1더하기2더하기3빼기3일때_결과값이_3인지() {
        //given
        sut.operators.enqueue(Operator.add)
        sut.operators.enqueue(Operator.add)
        sut.operators.enqueue(Operator.subtract)
        sut.operands.enqueue(1)
        sut.operands.enqueue(2)
        sut.operands.enqueue(3)
        sut.operands.enqueue(3)
        
        //when
        let result = sut.result()
        
        //then
        XCTAssertEqual(result, 3)
    }
}
