//
//  SettingsSectionHeaderFooter.swift
//
//  SwiftySettings
//  Created by Tomasz Gebarowski on 07/08/15.
//  Copyright © 2015 codica Tomasz Gebarowski <gebarowski at gmail.com>.
//  All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import Foundation
import UIKit

class SectionHeaderFooter : UITableViewHeaderFooterView {

    var appearance: SwiftySettingsViewController.Appearance?
    let titleLabel = UILabel()
    let spacing: CGFloat = 10

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.setNeedsLayout()
        contentView.layoutIfNeeded()
    }

    func load(_ text: String) {
        configureAppearance()
        titleLabel.text = text.uppercased()
        titleLabel.accessibilityIdentifier = "Header_Footer_Label_\(text)"
        titleLabel.accessibilityLabel = text
        contentView.accessibilityIdentifier = "Header_Footer_ContentView_\(text)"
    }

    func configureAppearance() {
        titleLabel.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline)
        titleLabel.textColor = appearance?.headerFooterCellTextColor
        titleLabel.isAccessibilityElement = appearance?.enableAccessibility ?? false
        titleLabel.accessibilityTraits = UIAccessibilityTraitStaticText | UIAccessibilityTraitHeader

        self.isAccessibilityElement = false
        self.accessibilityElements = [contentView, titleLabel]

        contentView.backgroundColor = appearance?.viewBackgroundColor
        contentView.isAccessibilityElement = appearance?.enableAccessibility ?? false
        contentView.accessibilityTraits = UIAccessibilityTraitNone
    }

    func setup() {

        contentView.addSubview(titleLabel)

        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        // Title UILabel - Vertical Constraint
        contentView.addConstraint(NSLayoutConstraint(
            item: titleLabel,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .bottom,
            multiplier: 1.0,
            constant: -5))

        contentView.addConstraint(NSLayoutConstraint(
            item: titleLabel,
            attribute: .leading,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .leading,
            multiplier: 1.0,
            constant: spacing))
    }
}
