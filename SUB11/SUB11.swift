// SUB11.swift
// SUB11
// Created by John Christopher Ferris
// Copyright © 2019 sub11 LLC. All rights reserved.

public struct SUB11 {
  public static let OK = "OK"
  public static let margin8 = CGFloat(8.0)
  public static let margin16 = CGFloat(16.0)
  public static let margin25 = CGFloat(25.0)
  public static let margin28 = CGFloat(28.0)
  public static let margin34 = CGFloat(34.0)
  public static let backgroundColor = UIColor.black
  public static let foregroundColor = UIColor.white

  public static func activityIndicator(identifier:String) -> UIActivityIndicatorView {
    let activityIndicator = UIActivityIndicatorView(style: .white)
    activityIndicator.translatesAutoresizingMaskIntoConstraints = false
    activityIndicator.accessibilityIdentifier = identifier
    activityIndicator.startAnimating()
    return activityIndicator
  }

  public static func alertController(title: String, message: String?) -> UIAlertController {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: OK, style: .cancel, handler: nil))
    return alertController
  }

  public static func label(text: String, multiplier: CGFloat, textColor:UIColor, identifier:String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.font = label.font.withSize(label.font.pointSize * multiplier)
    label.textColor = textColor
    label.accessibilityIdentifier = identifier
    return label
  }

  public static func navigationController(rootController: UIViewController) -> UINavigationController {
    let navigationController = UINavigationController(rootViewController: rootController)
    navigationController.navigationBar.isTranslucent = false
    navigationController.navigationBar.barTintColor = backgroundColor
    navigationController.navigationBar.tintColor = foregroundColor
    navigationController.navigationBar.titleTextAttributes = [.foregroundColor : foregroundColor]
    return navigationController
  }

  public static func numberFormatter(fractionDigits: Int) -> NumberFormatter {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    numberFormatter.minimumFractionDigits = fractionDigits
    numberFormatter.maximumFractionDigits = fractionDigits
    numberFormatter.alwaysShowsDecimalSeparator = true
    return numberFormatter
  }

  public static func tableView(identifier:String) -> UITableView {
    let tableView = UITableView(frame: .zero, style: .grouped)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.accessibilityIdentifier = identifier
    tableView.separatorStyle = .none
    tableView.backgroundColor = .clear
    return tableView
  }

  public static func tableViewCell(style: UITableViewCell.CellStyle, identifier: String?) -> UITableViewCell {
    let tableViewCell = UITableViewCell(style: style, reuseIdentifier: identifier)
    tableViewCell.selectionStyle = .none
    tableViewCell.backgroundColor = .clear
    tableViewCell.textLabel?.textColor = foregroundColor
    tableViewCell.detailTextLabel?.textColor = foregroundColor
    return tableViewCell
  }

  public static func textField(identifier:String) -> UITextField {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.accessibilityIdentifier = identifier
    textField.clearButtonMode = .always
    textField.borderStyle = .roundedRect
    textField.keyboardAppearance = .dark
    return textField
  }

  public static func view() -> UIView {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }
}
