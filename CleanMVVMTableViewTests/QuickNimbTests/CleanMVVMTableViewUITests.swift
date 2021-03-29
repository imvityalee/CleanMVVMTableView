//
//  CleanMVVMTableViewUITests.swift
//  CleanMVVMTableViewTests
//
//  Created by Victor Lee on 3/29/21.


import XCTest
import SnapshotTesting

@testable import CleanMVVMTableView
class CleanMVVMTableViewUITests: XCTestCase {



    private func testDetailsVc() {
        let service = FavouriteThingsService()
        let viewModel = FavouriteThingsDetailsViewModel(thingsService: service, thingId: 1)
        let vc = FavouriteThingsDetailsViewController(viewModel: viewModel)
        let viewController = UINavigationController(rootViewController: vc)
        
        detailViewController(viewController, named: "Default")
    }
    
    private func detailViewController(_ viewControlle: UIViewController, named: String) {
        let devices: [String: ViewImageConfig] = ["iPhoneX": .iPhoneX, "iPhone8": .iPhone8, "iPhoneSe": .iPhoneSe]
        
        let results = devices.map { (device)  in
            verifySnapshot(matching: viewControlle, as: .image(on: device.value), named: name,testName: "FavouriteThingsDetailsViewController")
        }
        results.forEach { XCTAssertNil($0) }
    }


}
