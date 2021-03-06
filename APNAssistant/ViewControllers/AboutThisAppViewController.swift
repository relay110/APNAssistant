//
//  AboutThisAppViewController.swift
//  APNAssistant
//
//  Created by WataruSuzuki on 2016/09/22.
//  Copyright © 2016年 WataruSuzuki. All rights reserved.
//

import UIKit

struct AboutThisApp {
    
    enum Section: Int {
        case summary = 0,
        apn,
        profile,
        webApp,
        max
        
        func getText() -> String {
            let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String
            let key = (self == .summary
                ?"ata_" + String(describing: self) + appName
                :"ata_" + String(describing: self))
            return NSLocalizedString(key, comment: "")
        }
        
        func toString() -> String {
            return String(describing: self)
        }
    }
}

class AboutThisAppViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = NSLocalizedString("aboutThisApp", comment: "")
        self.tableView.estimatedRowHeight = 200
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return AboutThisApp.Section.max.rawValue
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutThisAppCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.numberOfLines = 0
        
        let aboutThis = AboutThisApp.Section(rawValue: indexPath.section)!
        if aboutThis == .summary {
            cell.accessoryType = .none
            cell.textLabel?.text = aboutThis.getText()
        } else {
            cell.accessoryType = .detailButton
            cell.textLabel?.text = NSLocalizedString("how_about_" + aboutThis.toString(), comment: "")
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let aboutThisApp = AboutThisApp.Section(rawValue: section)
        if aboutThisApp == .summary {
            return ""
        } else {
            return aboutThisApp!.getText()
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.rowHeight
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        switch AboutThisApp.Section(rawValue: indexPath.section)! {
        case .apn:
            if let url = URL(string: "https://en.m.wikipedia.org/wiki/APN") {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
            
        case .profile:
            if let url = URL(string: "https://developer.apple.com/library/prerelease/content/documentation/NetworkingInternet/Conceptual/iPhoneOTAConfiguration/Introduction/Introduction.html") {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
            
        case .webApp:
            if let url = URL(string: DownloadProfiles.serverUrl + DownloadProfiles.apnBookmarks + "/deployment/") {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
            
        default:
            break
        }
    }
}
