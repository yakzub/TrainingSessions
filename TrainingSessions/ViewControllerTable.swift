//
//  ViewControllerTable.swift
//  TrainingSessions
//
//  Created by Yakov on 23.10.2025.
//

import UIKit
import SnapKit

class ViewControllerTable: UIViewController {
 
    private var tableView: UITableView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    } (UITableView())
    
    //UIButton
    private var UIButtonPlus: UIButton = {
        $0.setImage(UIImage(named: "plus"), for: .normal)
        return $0
    }(UIButton())
    
    private let users: [String] = ["Vasili", "Vasili", "Vasili", "Vasili"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
        
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "defaultCell")
        
    }
    
}

extension ViewControllerTable {
   
    private func setupViews() {
        view.addSubview(tableView)
        view.addSubview(UIButtonPlus)
    }
    
    private func setupConstraints() {
        
        UIButtonPlus.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(16)
            make.right.equalTo(view).inset(20)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            make.left.equalTo(view)
            make.right.equalTo(view)
        }
        
    }
}

extension ViewControllerTable: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
        cell.textLabel?.text = users[indexPath.row]
        return cell
    }
    
}
