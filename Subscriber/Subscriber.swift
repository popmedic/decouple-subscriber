//
//  SubscriberFramework.swift
//  SubscriberFramework
//
//  Created by Scardina, Kevin on 11/23/19.
//  Copyright © 2019 kscars. All rights reserved.
//

import Foundation
import Protocols

public class Subscriber: Observer {
    public var observable: Observable
    private func add() {
        for event in Events.allCases {
            print("adding event \(event.rawValue) \(event.name)")
            observable.center.addObserver(self,
                                          selector: #selector(observed(notification:)),
                                          name: event.name,
                                          object: nil)
        }
    }

    private func remove() {
        observable.center.removeObserver(self)
    }

    @objc public func observed(notification: Notification) {
        switch notification.name {
            case .ObservableEventOne:
                print(notification.userInfo?[Events.OneFields.name.rawValue] as? String ?? "Unknown Event Name")
            case .ObservableEventTwo:
                print(notification.userInfo?[Events.TwoFields.name.rawValue] as? String ?? "Unknown Event Name")
            case .ObservableEventThree:
                print(notification.userInfo?[Events.ThreeFields.name.rawValue] as? String ?? "Unknown Event Name")
            case .ObservableEventFour:
                print(notification.userInfo?[Events.FourFields.name.rawValue] as? String ?? "Unknown Event Name")
            default: break
        }
    }
    public init(observable: Observable) {
        self.observable = observable
        guard Protocols.protocolFrameworkVersion == self.observable.protocolVersionString else {
            preconditionFailure("Must be on the same Protocol Framework version.")
        }
        add()
    }

    deinit {
        remove()
    }
}
