//
//  ViewController.swift
//  PrioritySample
//
//  Created by jiwon Yoon on 2023/02/08.
//

import UIKit

class ViewController: UIViewController {
    private lazy var leftLabel: UILabel = {
        let label = UILabel()
        label.text = "Left"
        label.backgroundColor = .red
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var rightLabel: UILabel = {
        let label = UILabel()
        label.text = "Right"
        label.backgroundColor = .blue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

private extension ViewController {
    func setupViews() {
        [
            leftLabel,
            rightLabel
        ]
            .forEach {
                view.addSubview($0)
            }
        
        NSLayoutConstraint.activate([
            leftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            leftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        ])
        
        NSLayoutConstraint.activate([
            rightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rightLabel.leadingAnchor.constraint(equalTo: leftLabel.trailingAnchor),
            rightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        rightLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
    }
}

