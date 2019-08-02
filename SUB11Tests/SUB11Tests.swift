// SUB11Tests.swift
// SUB11Tests
// Created by John Christopher Ferris
// Copyright © 2019 sub11 LLC. All rights reserved.

import XCTest
@testable import SUB11

class SUB11Tests: XCTestCase {
  private let identifier = "Identifier"

  func testActivityIndicator() {
    let activityIndicator = SUB11.activityIndicator(identifier: identifier)
    XCTAssertFalse(activityIndicator.translatesAutoresizingMaskIntoConstraints)
    XCTAssertEqual(activityIndicator.style, .white)
    XCTAssertTrue(activityIndicator.isAnimating)
  }

  func testAlertController() {
    let title = "Title"
    let message = "Message"
    let alertController = SUB11.alertController(title: title, message: message)
    XCTAssertEqual(alertController.title, title)
    XCTAssertEqual(alertController.message, message)
    XCTAssertEqual(alertController.preferredStyle, .alert)
    XCTAssertGreaterThan(alertController.actions.count, 0)
    let action = alertController.actions[0]
    XCTAssertEqual(action.title, SUB11.OK)
    XCTAssertEqual(action.style, .cancel)
  }

  func testLabel() {
    let text = "Text"
    let multiplier = CGFloat(1.0)
    let textColor = SUB11.foregroundColor
    let label = SUB11.label(text: text, multiplier: multiplier, textColor: textColor, identifier: identifier)
    XCTAssertFalse(label.translatesAutoresizingMaskIntoConstraints)
    XCTAssertEqual(label.text, text)
    XCTAssertEqual(label.font.pointSize, UILabel().font.pointSize * multiplier)
    XCTAssertEqual(label.textColor, textColor)
  }

  func testNavigationController() {
    let navigationController = SUB11.navigationController(rootController: UIViewController())
    XCTAssertFalse(navigationController.navigationBar.isTranslucent)
    XCTAssertEqual(navigationController.navigationBar.barTintColor, SUB11.backgroundColor)
    XCTAssertEqual(navigationController.navigationBar.tintColor, SUB11.foregroundColor)
    XCTAssertNotNil(navigationController.navigationBar.titleTextAttributes)
    let foregroundColor = navigationController.navigationBar.titleTextAttributes?[.foregroundColor] as? UIColor
    XCTAssertEqual(foregroundColor, SUB11.foregroundColor)
  }

  func testNumberFormatter() {
    let fractionDigits = 3
    let numberFormatter = SUB11.numberFormatter(fractionDigits: 3)
    XCTAssertEqual(numberFormatter.numberStyle, .decimal)
    XCTAssertEqual(numberFormatter.minimumFractionDigits, fractionDigits)
    XCTAssertEqual(numberFormatter.maximumFractionDigits, fractionDigits)
    XCTAssertTrue(numberFormatter.alwaysShowsDecimalSeparator)
  }

  func testTableView() {
    let tableView = SUB11.tableView(identifier: identifier)
    XCTAssertEqual(tableView.frame, .zero)
    XCTAssertEqual(tableView.style, .grouped)
    XCTAssertFalse(tableView.translatesAutoresizingMaskIntoConstraints)
    XCTAssertEqual(tableView.separatorStyle, .none)
    XCTAssertEqual(tableView.backgroundColor, .clear)
  }

  func tableViewCell() {
    let style = UITableViewCell.CellStyle.default
    let tableViewCell = SUB11.tableViewCell(style: style, identifier: identifier)
    XCTAssertEqual(tableViewCell.selectionStyle, .none)
    XCTAssertEqual(tableViewCell.backgroundColor, .clear)
    XCTAssertEqual(tableViewCell.textLabel?.textColor, SUB11.foregroundColor)
    XCTAssertEqual(tableViewCell.detailTextLabel?.textColor, SUB11.foregroundColor)
  }

  func testTextField() {
    let textField = SUB11.textField(identifier: identifier)
    XCTAssertFalse(textField.translatesAutoresizingMaskIntoConstraints)
    XCTAssertEqual(textField.clearButtonMode, .always)
    XCTAssertEqual(textField.borderStyle, .roundedRect)
    XCTAssertEqual(textField.keyboardAppearance, .dark)
  }

  func testView() {
    let view = SUB11.view()
    XCTAssertFalse(view.translatesAutoresizingMaskIntoConstraints)
  }
}
