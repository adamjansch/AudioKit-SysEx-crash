//
//  AudioKit_SysEx_crashApp.swift
//  AudioKit SysEx crash
//
//  Created by Adam Jansch on 17/01/2021.
//

import SwiftUI
import AudioKit
import CoreMIDI

@main
struct AudioKit_SysEx_crashApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
	
	
	// MARK: - METHODS
	// MARK: Initializers
	init() {
		let midi = MIDI.sharedInstance
		
		print("MIDI Sources:      \(midi.inputInfos)")
		print("MIDI Destinations: \(midi.destinationInfos)")
		
		midi.clearListeners()
		midi.addListener(self)
		
		midi.openInput(uid: 0)
	}
}

extension AudioKit_SysEx_crashApp: MIDIListener {
	func receivedMIDISystemCommand(_ data: [MIDIByte], portID: MIDIUniqueID?, offset: MIDITimeStamp) {
		print("SYSEX received: \(data)")
	}
	
	func receivedMIDINoteOn(noteNumber: MIDINoteNumber, velocity: MIDIVelocity, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
		// Not used
	}
	
	func receivedMIDINoteOff(noteNumber: MIDINoteNumber, velocity: MIDIVelocity, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
		// Not used
	}
	
	func receivedMIDIController(_ controller: MIDIByte, value: MIDIByte, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
		// Not used
	}
	
	func receivedMIDIAftertouch(noteNumber: MIDINoteNumber, pressure: MIDIByte, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
		// Not used
	}
	
	func receivedMIDIAftertouch(_ pressure: MIDIByte, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
		// Not used
	}
	
	func receivedMIDIPitchWheel(_ pitchWheelValue: MIDIWord, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
		// Not used
	}
	
	func receivedMIDIProgramChange(_ program: MIDIByte, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
		// Not used
	}
	
	func receivedMIDISetupChange() {
		// Not used
	}
	
	func receivedMIDIPropertyChange(propertyChangeInfo: MIDIObjectPropertyChangeNotification) {
		// Not used
	}
	
	func receivedMIDINotification(notification: MIDINotification) {
		// Not used
	}
}
