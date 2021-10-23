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

    private func setupEditButtonItem() {
        navigationItem.rightBarButtonItem = editButtonItem
        navigationItem.rightBarButtonItem?.title = "編集"
    }
    
}


