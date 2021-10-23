//
//  ViewController.swift
//  EditButtonItem
//
//  Created by 坂本龍哉 on 2021/10/23.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupEditButtonItem()
    }

    override func setEditing(_ editing: Bool,
                             animated: Bool) {
        super.setEditing(editing, animated: animated)
        switch editing {
        case true:
            navigationItem.rightBarButtonItem?.title = "キャンセル"
        case false:
            navigationItem.rightBarButtonItem?.title = "編集"
        }
    }
    
    // MARK: setupEditButtonItem
    private func setupEditButtonItem() {
        navigationItem.rightBarButtonItem = editButtonItem
        navigationItem.rightBarButtonItem?.title = "編集"
    }
    
}


