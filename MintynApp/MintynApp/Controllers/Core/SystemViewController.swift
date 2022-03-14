//
//  SystemViewController.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit

class SystemViewController: UIViewController {
  @IBOutlet weak var systemTableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    systemTableView.separatorStyle = .none
    title = "Systems"
    systemTableView.delegate = self
    systemTableView.dataSource = self
  }
  
}

extension SystemViewController: UITableViewDataSource, UITableViewDelegate {
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "Appearance"
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return systemModelData.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = systemTableView.dequeueReusableCell(withIdentifier: "systemCell", for: indexPath) as? SystemTableViewCell else {
      return UITableViewCell()
    }
    cell.titleLabel.text = systemModelData[indexPath.row].title
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 60
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let totalRows = tableView.numberOfRows(inSection: 0)
    for row in  0..<totalRows {
      let indexPaths = IndexPath(row: row, section: 0)
      let c = tableView.cellForRow(at: indexPaths) as! SystemTableViewCell
      c.accessoryType = .none
    }
    
    let cell = tableView.cellForRow(at: indexPath) as! SystemTableViewCell
    
    systemTableView.deselectRow(at: indexPath, animated: true)
    cell.accessoryType = .checkmark
    
    switch indexPath.row {
      case 1:
        lightModeSupport()
        print("Light Mode Activated")
      case 2:
        darkModeSupport()
        print("Dark Mode Activated")
      default:
        neutralColorSupport()
        print("Default mode")
    }
    
  }
  
  // MARK: - Color Scheme Support
  func darkModeSupport() {
    let window = UIApplication.shared.keyWindow
    window?.overrideUserInterfaceStyle = .dark
  }
  
  func lightModeSupport() {
    let window = UIApplication.shared.keyWindow
    window?.overrideUserInterfaceStyle = .light
  }
  
  func neutralColorSupport() {
    let window = UIApplication.shared.keyWindow
    window?.overrideUserInterfaceStyle = .unspecified
  }
}
