//
//  ContentView.swift
//  BLE Exerciser
//
//  Created by Mike Wirth on 5/5/20.
//  Copyright © 2020 Wirth Consulting. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 10) {
             Text("Bluetooth Devices")
                .font(.largeTitle)
                .frame(maxWidth: .infinity,
                       alignment: .center)
            List() {
                Text("foo")
                Text("bar")
                } .frame(idealHeight: 300)
            
            Spacer()
            
            Text("STATUS")
                .font(.headline)
            
            if bleManager.bleIsOn {
                Text("Bluetooth is On")
                    .foregroundColor(.green)
            }
            else {
                Text("Bluetooth is Off")
                .foregroundColor(.red)
            }
            
            Spacer()
            
           
                VStack (spacing: 10) {
                    Button("Start Advertising",
                           action: {print("Start Advertising")
                    })
                    Button("Stop Advertising",
                           action: {print("Stop Advertising")
                    })
                }
                
            }
            .padding()
       
        Spacer()
    
    }
}

//@ObservedObject var bleManager = BLEManager()
var bleManager = BLEManager()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
