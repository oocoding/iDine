//
//  iDineApp.swift
//  iDine
//
//  Created by Zhang.xiangxiong on 2021/3/9.
//

import SwiftUI

@main
struct iDineApp: App {
    
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
