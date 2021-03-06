//
//  AvailableCountriesHelper.swift
//  APNAssistant
//
//  Created by WataruSuzuki on 2016/09/12.
//  Copyright © 2016年 WataruSuzuki. All rights reserved.
//

import UIKit

struct DownloadProfiles {
    static let serverUrl = "https://watarusuzuki.github.io/"
    
    static let apnBookmarks = "APNBookmarkPage"
    static let jsonsDir = apnBookmarks + "/jsons/"
    static let resourcesDir = apnBookmarks + "/resources/"
    
    static let profileItems = "items"
    static let profileName = "name"
    static let profileUrl = "profile_url"
    static let version = "version"
    static let ERROR_INDEX = (-1)
    
    enum json: Int {
        case GlobalSIM = 0,
        Albania,
        Algeria,
        Angola,
        Anguilla,
        Antigua_and_Barbuda,
        Argentina,
        Armenia,
        Australia,
        Austria,
        Azerbaijan,
        Bahamas,
        Bahrain,
        Barbados,
        Belarus,
        Belgium,
        Belize,
        Benin,
        Bermuda,
        Bhutan,
        Bolivia,
        Botswana,
        Brazil,
        British_Virgin_Islands,
        Brunei,
        Bulgaria,
        Burkina_Faso,
        Cambodia,
        Canada,
        Cape_Verde,
        Cayman_Islands,
        Chad,
        Chile,
        China,
        Colombia,
        Congo_Republic_of,
        Costa_Rica,
        Croatia,
        Cyprus,
        Czech_Republic,
        Denmark,
        Dominica,
        Dominican_Republic,
        Ecuador,
        Egypt,
        El_Salvador,
        Estonia,
        Fiji,
        Finland,
        France,
        Gambia,
        Germany,
        Ghana,
        Greece,
        Grenada,
        Guatemala,
        Guinea_Bissau,
        Guyana,
        Honduras,
        Hong_Kong,
        Hungary,
        Iceland,
        India,
        Indonesia,
        Ireland,
        Israel,
        Italy,
        Jamaica,
        Japan,
        Jordan,
        Kazakhstan,
        Kenya,
        Kuwait,
        Kyrgyzstan,
        Laos,
        Latvia,
        Lebanon,
        Liberia,
        Lithuania,
        Luxembourg,
        Macao,
        Macedonia,
        Madagascar,
        Malawi,
        Malaysia,
        Mali,
        Malta,
        Mauritania,
        Mauritius,
        Mexico,
        Micronesia,
        Moldova,
        Mongolia,
        Montserrat,
        Mozambique,
        Namibia,
        Nepal,
        Netherlands,
        New_Zealand,
        Nicaragua,
        Niger,
        Nigeria,
        Norway,
        Oman,
        Pakistan,
        Palau,
        Panama,
        Papua_New_Guinea,
        Paraguay,
        Peru,
        Philippines,
        Poland,
        Portugal,
        Qatar,
        Republic_of_Korea,
        Romania,
        Russia,
        Saudi_Arabia,
        Senegal,
        Seychelles,
        Sierra_Leone,
        Singapore,
        Slovakia,
        Slovenia,
        Solomon_Islands,
        South_Africa,
        Spain,
        Sri_Lanka,
        St_Kitts,
        St_Lucia,
        St_Vincent_and_the_Grenadines,
        Suriname,
        Swaziland,
        Sweden,
        Switzerland,
        Taiwan,
        Tajikistan,
        Tanzania,
        Thailand,
        Trinidad_and_Tobago,
        Tunisia,
        Turkey,
        Turkmenistan,
        Turks_and_Caicos,
        Uganda,
        UK,
        Ukraine,
        United_Arab_Emirates,
        Uruguay,
        USA,
        Uzbekistan,
        Venezuela,
        Vietnam,
        Yemen,
        Zimbabwe,
        MAX
        
        init(fileName: String) {
            switch fileName {
            case json.GlobalSIM.getFileName():  self = json.GlobalSIM
            case json.Albania.getFileName():	self = json.Albania
            case json.Algeria.getFileName():	self = json.Algeria
            case json.Angola.getFileName():     self = json.Angola
            case json.Anguilla.getFileName():	self = json.Anguilla
            case json.Antigua_and_Barbuda.getFileName():	self = json.Antigua_and_Barbuda
            case json.Argentina.getFileName():	self = json.Argentina
            case json.Armenia.getFileName():	self = json.Armenia
            case json.Australia.getFileName():	self = json.Australia
            case json.Austria.getFileName():	self = json.Austria
            case json.Azerbaijan.getFileName():	self = json.Azerbaijan
            case json.Bahamas.getFileName():	self = json.Bahamas
            case json.Bahrain.getFileName():	self = json.Bahrain
            case json.Barbados.getFileName():	self = json.Barbados
            case json.Belarus.getFileName():	self = json.Belarus
            case json.Belgium.getFileName():	self = json.Belgium
            case json.Belize.getFileName():     self = json.Belize
            case json.Benin.getFileName():      self = json.Benin
            case json.Bermuda.getFileName():	self = json.Bermuda
            case json.Bhutan.getFileName():     self = json.Bhutan
            case json.Bolivia.getFileName():	self = json.Bolivia
            case json.Botswana.getFileName():	self = json.Botswana
            case json.Brazil.getFileName():     self = json.Brazil
            case json.British_Virgin_Islands.getFileName():	self = json.British_Virgin_Islands
            case json.Brunei.getFileName():     self = json.Brunei
            case json.Bulgaria.getFileName():	self = json.Bulgaria
            case json.Burkina_Faso.getFileName():	self = json.Burkina_Faso
            case json.Cambodia.getFileName():	self = json.Cambodia
            case json.Canada.getFileName():     self = json.Canada
            case json.Cape_Verde.getFileName():	self = json.Cape_Verde
            case json.Cayman_Islands.getFileName():	self = json.Cayman_Islands
            case json.Chad.getFileName():       self = json.Chad
            case json.Chile.getFileName():      self = json.Chile
            case json.China.getFileName():      self = json.China
            case json.Colombia.getFileName():	self = json.Colombia
            case json.Congo_Republic_of.getFileName():	self = json.Congo_Republic_of
            case json.Costa_Rica.getFileName():	self = json.Costa_Rica
            case json.Croatia.getFileName():	self = json.Croatia
            case json.Cyprus.getFileName():     self = json.Cyprus
            case json.Czech_Republic.getFileName():	self = json.Czech_Republic
            case json.Denmark.getFileName():	self = json.Denmark
            case json.Dominica.getFileName():	self = json.Dominica
            case json.Dominican_Republic.getFileName():	self = json.Dominican_Republic
            case json.Ecuador.getFileName():	self = json.Ecuador
            case json.Egypt.getFileName():      self = json.Egypt
            case json.El_Salvador.getFileName():self = json.El_Salvador
            case json.Estonia.getFileName():	self = json.Estonia
            case json.Fiji.getFileName():       self = json.Fiji
            case json.Finland.getFileName():	self = json.Finland
            case json.France.getFileName():     self = json.France
            case json.Gambia.getFileName():     self = json.Gambia
            case json.Germany.getFileName():	self = json.Germany
            case json.Ghana.getFileName():      self = json.Ghana
            case json.Greece.getFileName():     self = json.Greece
            case json.Grenada.getFileName():	self = json.Grenada
            case json.Guatemala.getFileName():	self = json.Guatemala
            case json.Guinea_Bissau.getFileName():	self = json.Guinea_Bissau
            case json.Guyana.getFileName():     self = json.Guyana
            case json.Honduras.getFileName():	self = json.Honduras
            case json.Hong_Kong.getFileName():	self = json.Hong_Kong
            case json.Hungary.getFileName():	self = json.Hungary
            case json.Iceland.getFileName():	self = json.Iceland
            case json.India.getFileName():      self = json.India
            case json.Indonesia.getFileName():	self = json.Indonesia
            case json.Ireland.getFileName():	self = json.Ireland
            case json.Israel.getFileName():     self = json.Israel
            case json.Italy.getFileName():      self = json.Italy
            case json.Jamaica.getFileName():	self = json.Jamaica
            case json.Japan.getFileName():      self = json.Japan
            case json.Jordan.getFileName():     self = json.Jordan
            case json.Kazakhstan.getFileName():	self = json.Kazakhstan
            case json.Kenya.getFileName():      self = json.Kenya
            case json.Kuwait.getFileName():     self = json.Kuwait
            case json.Kyrgyzstan.getFileName():	self = json.Kyrgyzstan
            case json.Laos.getFileName():       self = json.Laos
            case json.Latvia.getFileName():     self = json.Latvia
            case json.Lebanon.getFileName():	self = json.Lebanon
            case json.Liberia.getFileName():	self = json.Liberia
            case json.Lithuania.getFileName():	self = json.Lithuania
            case json.Luxembourg.getFileName():	self = json.Luxembourg
            case json.Macao.getFileName():      self = json.Macao
            case json.Macedonia.getFileName():	self = json.Macedonia
            case json.Madagascar.getFileName():	self = json.Madagascar
            case json.Malawi.getFileName():     self = json.Malawi
            case json.Malaysia.getFileName():	self = json.Malaysia
            case json.Mali.getFileName():       self = json.Mali
            case json.Malta.getFileName():      self = json.Malta
            case json.Mauritania.getFileName():	self = json.Mauritania
            case json.Mauritius.getFileName():	self = json.Mauritius
            case json.Mexico.getFileName():     self = json.Mexico
            case json.Micronesia.getFileName():	self = json.Micronesia
            case json.Moldova.getFileName():	self = json.Moldova
            case json.Mongolia.getFileName():	self = json.Mongolia
            case json.Montserrat.getFileName():	self = json.Montserrat
            case json.Mozambique.getFileName():	self = json.Mozambique
            case json.Namibia.getFileName():	self = json.Namibia
            case json.Nepal.getFileName():      self = json.Nepal
            case json.Netherlands.getFileName():self = json.Netherlands
            case json.New_Zealand.getFileName():self = json.New_Zealand
            case json.Nicaragua.getFileName():	self = json.Nicaragua
            case json.Niger.getFileName():      self = json.Niger
            case json.Nigeria.getFileName():	self = json.Nigeria
            case json.Norway.getFileName():     self = json.Norway
            case json.Oman.getFileName():       self = json.Oman
            case json.Pakistan.getFileName():	self = json.Pakistan
            case json.Palau.getFileName():      self = json.Palau
            case json.Panama.getFileName():     self = json.Panama
            case json.Papua_New_Guinea.getFileName():	self = json.Papua_New_Guinea
            case json.Paraguay.getFileName():	self = json.Paraguay
            case json.Peru.getFileName():       self = json.Peru
            case json.Philippines.getFileName():self = json.Philippines
            case json.Poland.getFileName():     self = json.Poland
            case json.Portugal.getFileName():	self = json.Portugal
            case json.Qatar.getFileName():      self = json.Qatar
            case json.Republic_of_Korea.getFileName():	self = json.Republic_of_Korea
            case json.Romania.getFileName():	self = json.Romania
            case json.Russia.getFileName():     self = json.Russia
            case json.Saudi_Arabia.getFileName():	self = json.Saudi_Arabia
            case json.Senegal.getFileName():	self = json.Senegal
            case json.Seychelles.getFileName():	self = json.Seychelles
            case json.Sierra_Leone.getFileName():	self = json.Sierra_Leone
            case json.Singapore.getFileName():	self = json.Singapore
            case json.Slovakia.getFileName():	self = json.Slovakia
            case json.Slovenia.getFileName():	self = json.Slovenia
            case json.Solomon_Islands.getFileName():	self = json.Solomon_Islands
            case json.South_Africa.getFileName():   self = json.South_Africa
            case json.Spain.getFileName():      self = json.Spain
            case json.Sri_Lanka.getFileName():	self = json.Sri_Lanka
            case json.St_Kitts.getFileName():	self = json.St_Kitts
            case json.St_Lucia.getFileName():	self = json.St_Lucia
            case json.St_Vincent_and_the_Grenadines.getFileName():	self = json.St_Vincent_and_the_Grenadines
            case json.Suriname.getFileName():	self = json.Suriname
            case json.Swaziland.getFileName():	self = json.Swaziland
            case json.Sweden.getFileName():     self = json.Sweden
            case json.Switzerland.getFileName():self = json.Switzerland
            case json.Taiwan.getFileName():     self = json.Taiwan
            case json.Tajikistan.getFileName():	self = json.Tajikistan
            case json.Tanzania.getFileName():	self = json.Tanzania
            case json.Thailand.getFileName():	self = json.Thailand
            case json.Trinidad_and_Tobago.getFileName():	self = json.Trinidad_and_Tobago
            case json.Tunisia.getFileName():	self = json.Tunisia
            case json.Turkey.getFileName():     self = json.Turkey
            case json.Turkmenistan.getFileName():	self = json.Turkmenistan
            case json.Turks_and_Caicos.getFileName():	self = json.Turks_and_Caicos
            case json.Uganda.getFileName():     self = json.Uganda
            case json.UK.getFileName():         self = json.UK
            case json.Ukraine.getFileName():	self = json.Ukraine
            case json.United_Arab_Emirates.getFileName():	self = json.United_Arab_Emirates
            case json.Uruguay.getFileName():	self = json.Uruguay
            case json.USA.getFileName():        self = json.USA
            case json.Uzbekistan.getFileName():	self = json.Uzbekistan
            case json.Venezuela.getFileName():	self = json.Venezuela
            case json.Vietnam.getFileName():	self = json.Vietnam
            case json.Yemen.getFileName():      self = json.Yemen
            case json.Zimbabwe.getFileName():	self = json.Zimbabwe
            default:
                self = json.MAX
            }
        }
        
        func getFileName() -> String {
            return String(describing: self) + ".json"
        }
        
        func toString() -> String {
            return String(describing: self)
        }
    }
}

class AvailableCountriesHelper: NSObject {
    
    var publicProfileList = [NSArray](repeating: [], count: DownloadProfiles.json.MAX.rawValue)
    var updateUrl = [URL]()
    var senderDelegate: URLSessionDownloadDelegate!
    
    func loadCachedJsonList() {
        let filemanager = FileManager()
        let files = filemanager.enumerator(atPath: UtilCocoaHTTPServer().getTargetFilePath("", fileType: ""))
        while let file = files?.nextObject() as? String {
            if isJsonFile(file) {
                let country = file.replacingOccurrences(of: ".json", with: "")
                let path = UtilCocoaHTTPServer().getTargetFilePath(country, fileType: ".json")
                let localUrl = URL(fileURLWithPath: path)
                if let jsonData = try? Data(contentsOf: localUrl) {
                    let items = serializeCountryJsonData(jsonData)
                    addProfileList(localUrl, items: items)
                }
            }
        }
    }
    
    func isJsonFile(_ file: String) -> Bool {
        if file.contains(DownloadProfiles.version)
        || !file.contains(".json"){
            return false
        }
        return true
    }
    
    func getCountryFileUrl(_ response: URLResponse) -> URL? {
        if let url = response.url {
            return url
        }
        return nil
    }
    
    func getOriginalFileName(_ fileName: String) -> String {
        if fileName.contains(DownloadProfiles.apnBookmarks) {
            let replaced = fileName.replacingOccurrences(of: DownloadProfiles.apnBookmarks, with: "")
            return replaced.replacingOccurrences(of: "-", with: "")
        }
        return fileName
    }
    
    func getUpdateIndexSection(_ url: URL) -> Int {
        let country = DownloadProfiles.json.init(fileName: getOriginalFileName(url.lastPathComponent))
        return country.rawValue
    }
    
    func generateFileNameFromLastPathComponent(_ responseUrl: URL, lastPathComponent: String) -> String {
        let fileName = lastPathComponent.replacingOccurrences(of: ".json", with: "-" + DownloadProfiles.apnBookmarks)
        return fileName
    }
    
    func getVersionCheckFileName(_ lastPathComponent: String) -> String {
        return lastPathComponent.replacingOccurrences(of: ".json", with: "")
    }
    
    func moveJSONFromURLSessionToLocation(_ downloadTask: URLSessionDownloadTask, location: URL) {
        guard let response = downloadTask.response else { return }
        let filePath = moveJSONByURLResponse(response, location: location)
        let localUrl = URL(fileURLWithPath: filePath)
        if let jsonData = try? Data(contentsOf: localUrl) {
            parseCountryJson(response, jsonData: jsonData)
        }
    }
    
    func moveJSONByURLResponse(_ response: URLResponse, location: URL) -> String {
        guard let responseUrl = response.url else { return "" }
        let lastPathComponent = responseUrl.lastPathComponent
        
        let fileName = generateFileNameFromLastPathComponent(responseUrl, lastPathComponent: lastPathComponent)
        let filePath = UtilCocoaHTTPServer().getTargetFilePath(fileName, fileType: ".json")
        UtilFileManager.moveDownloadItemAtURL(filePath, location: location)
        
        return filePath
    }
    
    func parseCountryJson(_ response: URLResponse, jsonData: Data) {
        let items = serializeCountryJsonData(jsonData)
        
        if let countryUrl = getCountryFileUrl(response) {
            addProfileList(countryUrl, items: items)
        }
    }
    
    func addProfileList(_ countryUrl: URL, items: NSArray) {
        let section = getUpdateIndexSection(countryUrl)
        if section != DownloadProfiles.ERROR_INDEX && section < publicProfileList.count {
            publicProfileList[section] = items
        }
    }
    
    func serializeCountryJsonData(_ jsonData: Data) -> NSArray {
        do {
            let json = try JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as! NSDictionary
            
            let items = json.object(forKey: DownloadProfiles.profileItems) as! NSArray
            let sortDescriptor = NSSortDescriptor(key: DownloadProfiles.profileName, ascending: true)
            return items.sortedArray(using: [sortDescriptor]) as NSArray
            
        } catch {
            let nsError = error as NSError
            print(nsError.description)
        }
        return NSArray()
    }
    
    func startJsonFileDownload(_ delegate: URLSessionDownloadDelegate) {
        senderDelegate = delegate
        updateUrl = [URL]()
        for index in 0..<DownloadProfiles.json.MAX.rawValue {
            let url = URL(string: DownloadProfiles.serverUrl + DownloadProfiles.jsonsDir + DownloadProfiles.json(rawValue: index)!.getFileName())
            DispatchQueue.global(qos: .default).async(execute: {
                let config = URLSessionConfiguration.default
                let session = URLSession(configuration: config, delegate: self.senderDelegate, delegateQueue: OperationQueue.main)
                session.downloadTask(with: url!).resume()
            })
        }
    }
    
    func cancelDownloadTask() {
        //do nothing
    }
    
//    func endJsonFileDownload() {
//        confirmUpdateCachedProfile()
//    }
}
