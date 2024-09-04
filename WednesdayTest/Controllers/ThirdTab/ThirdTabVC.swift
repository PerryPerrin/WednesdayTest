//
//  ThirdTabVC.swift
//  WednesdayTest
//
//  Created by Perry Perrin on R 6/09/04.
//

import UIKit

class ThirdTabVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let settings: [String] = ["Airplane Mode", "WLAN", "Bluetooth", "Cellular", "Personal Hotspot", "VPN"];
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let appearance = UINavigationBarAppearance();
        appearance.configureWithOpaqueBackground();
        appearance.backgroundColor = .systemBlue;
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        tableView.delegate = self;
        tableView.dataSource = self;
        
    }
    
}

//MARK: - UITableViewDataSource

extension ThirdTabVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath);
        
        cell.textLabel?.text = settings[indexPath.row];
        
        return cell;
    }
}

extension ThirdTabVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true);
    }
}
