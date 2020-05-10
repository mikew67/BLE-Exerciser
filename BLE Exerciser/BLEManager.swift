//
//  BLEManager.swift
//  BLE Exerciser
//
//  Created by Mike Wirth on 5/5/20.
//  Copyright © 2020 Wirth Consulting. All rights reserved.
//

import Foundation
import CoreBluetooth

struct Peripheral: Identifiable {
    let id: Int
    let name: String
    let rssi: Int
}



class BLEManager: NSObject, ObservableObject, CBCentralManagerDelegate {
    
    var myCentral: CBCentralManager!
    
    @Published 
    
    @Published var bleIsOn = false
    
    override init() {
        super.init()
        myCentral = CBCentralManager(delegate: self, queue: nil)
        myCentral.delegate = self
    }

    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state == .poweredOn {
            bleIsOn = true
        }
        else {
            bleIsOn = false
        }
    }
    
}
