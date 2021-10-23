//
//  ViewController.swift
//  EditButtonItem
//
//  Created by 坂本龍哉 on 2021/10/23.
//

import UIKit

final class ViewController: UIViewController {
    
    private var editBarButton: UIBarButtonItem {
        UIBarButtonItem(title: "編集", menu: makeEditMenu())
    }
    private var cancelBarButton: UIBarButtonItem {
        UIBarButtonItem(title: "キャンセル",
                        style: .plain,
                        target: self,
                        action: #selector(cancelBarButtonDidTapped))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupEditButtonItem()
    }
    
    // MARK: setupEditButtonItem
    private func setupEditButtonItem() {
        navigationItem.rightBarButtonItem = editBarButton
    }
    
    private func makeEditMenu() -> UIMenu {
        let addTimerAction = UIAction(title: "タイマーを作成",
                                      state: .off) { _ in
        }
        let editTimerAction = UIAction(title: "タイマーを編集",
                                       state: .off) { [weak self] _ in
            self?.navigationItem.title = "タイマーを編集"
            self?.navigationItem.rightBarButtonItem = self?.cancelBarButton
        }
        let deleteTimerAction = UIAction(title: "タイマーを削除",
                                       state: .off) {  _ in
            print("削除")
        }
        let editMenu = UIMenu(children: [addTimerAction,
                                         editTimerAction,
                                         deleteTimerAction])
        return editMenu
    }

    @objc private func cancelBarButtonDidTapped() {
        navigationItem.rightBarButtonItem = editBarButton
    }
    
}


