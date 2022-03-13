//
//  SettingsViewController.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit

class SettingsViewController: UIViewController {
  @IBOutlet weak var settingsTableView: UITableView!
  
  private let logoutAuth = AuthManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    settingsTableView.delegate = self
    settingsTableView.dataSource = self
  }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return settingsData.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath)
    cell.imageView?.image = settingsData[indexPath.row].icon
    cell.imageView?.tintColor = .lightGray
    cell.textLabel?.text = settingsData[indexPath.row].title
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 60
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    switch indexPath.row {
      case  3:
        navigateToLegalViewController()
      case 5:
        navToSystemViewController()
      case 7:
        logout()
      default:
        break
    }
  }
  
  private func navigateToLegalViewController () {
    guard let legalViewControler = storyboard?.instantiateViewController(withIdentifier: "LegalViewController") as? LegalViewController else { return }
    navigationController?.pushViewController(legalViewControler, animated: true)
  }
  
  private func navToSystemViewController () {
    guard let systemViewController = storyboard?.instantiateViewController(withIdentifier: "SystemViewController") as? SystemViewController else { return }
    navigationController?.pushViewController(systemViewController, animated: true)
  }
  
  private func alertUserLogoutError ( _ title: String, _ message: String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
    self.present(alert, animated: true, completion: nil)
  }
  
  func logout () {
    logoutAuth.userLogOut {[weak self] logoutResult in
      logoutResult ? self?.dismiss(animated: true, completion: nil) : self?.alertUserLogoutError("Woops", "\(self?.logoutAuth.appError?.localizedDescription ?? "Can't log out")")
    }
  }
  
}


