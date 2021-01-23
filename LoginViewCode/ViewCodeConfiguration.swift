//
//  ViewCodeConfiguration.swift
//  LoginViewCode
//
//  Created by Thiago Oliveira on 22/01/21.
//

import Foundation

protocol ViewCodeConfiguration {
    func buildHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCodeConfiguration {

    func configureViews() {}
    
    func applyViewCode() {
        buildHierarchy()
        setupConstraints()
        configureViews()
    }
}
