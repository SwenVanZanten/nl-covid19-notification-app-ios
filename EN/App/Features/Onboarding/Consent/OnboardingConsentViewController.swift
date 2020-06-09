/*
* Copyright (c) 2020 De Staat der Nederlanden, Ministerie van Volksgezondheid, Welzijn en Sport.
*  Licensed under the EUROPEAN UNION PUBLIC LICENCE v. 1.2
*
*  SPDX-License-Identifier: EUPL-1.2
*/

import UIKit

/// @mockable
protocol OnboardingConsentViewControllable: ViewControllable { }

final class OnboardingConsentViewController: ViewController, OnboardingConsentViewControllable {

    lazy private var viewsInDisplayOrder: [UIView] = []

    init(listener: OnboardingConsentListener) {
        self.listener = listener

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupConstraints()
    }

    // MARK: - Setups

    private func setupViews() {

        view.backgroundColor = .viewControllerBackgroundColor

        setThemeNavigationBar()

        for subView in viewsInDisplayOrder { view.addSubview(subView) }
    }

    private func setupConstraints() {

        var constraints = [[NSLayoutConstraint]()]

        for constraint in constraints { NSLayoutConstraint.activate(constraint) }
    }

    // MARK: - Private

    private weak var listener: OnboardingConsentListener?
}
