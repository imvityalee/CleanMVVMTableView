//
//  CleanMVVMTableViewTests.swift
//  CleanMVVMTableViewTests
//
//  Created by Victor Lee on 3/29/21.
//

import XCTest
import Quick
import Nimble
import SnapshotTesting

@testable import CleanMVVMTableView
class CleanMVVMTableViewTests: QuickSpec  {
    
    override func spec() {
        testService()
    }
    
     private func testService() {
        var service: FavouriteThingsService!
        beforeEach {
            service = FavouriteThingsService()
        }
        describe("The user take image ") {
            context("by its Name") {
                it("sould match by id in the service") {
                    let result = service.thing(with: 1)
                    expect(result).notTo(be(nil), description: "The service does not containt image with this id")
                }
            }
        }
    }
    
 
    
}
