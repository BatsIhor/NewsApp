//
//  BeamSafariViewController.swift
//  beam
//
//  Created by Powermobile on 16-12-15.
//  Copyright © 2015 Powermobile. All rights reserved.
//

import UIKit
import SafariServices

final class BeamSafariViewController: SFSafariViewController {
    
    init(url: URL) {
        let configuration = SFSafariViewController.Configuration()
        configuration.entersReaderIfAvailable = UserSettings[.prefersSafariViewControllerReaderMode]
        super.init(url: url, configuration: configuration)
        if AppDelegate.shared.displayModeController.currentMode == .dark {
            self.preferredBarTintColor = UIColor.black
            self.preferredControlTintColor = UIColor.white
        }
    }

}
