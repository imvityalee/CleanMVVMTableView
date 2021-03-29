//
//  AppDelegate.swift
//  CleanMVVMTableView
//
//  Created by Victor Lee on 3/26/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?
    private let coordinator: AppFlowCoordinatorProtocol =  AppFlowCoordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {


        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        coordinator.configure(window: window)
        
        return true
    }



}

