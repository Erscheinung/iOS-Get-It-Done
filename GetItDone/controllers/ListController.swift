//
//  ListController.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 25/02/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import Foundation

import UIKit

class ListController: UIViewController, GDHeaderDelegate, GDNewItemDelegate {
    
    func openAddItemPopup() {
        print("trying to open add item popup view")
    }
    
    func addItemToList(text:String) {
        print("Text: \(text)")
    }
    
    
    let header = GDHeaderView(title: "Stuff to get done", subtitle: "4 left")
    let popup = GDNewItemPopup()

    let tbInset:CGFloat = 16
    
    lazy var bg:UIView = { //to get tbInset
        let view = GDGradient()
        view.layer.cornerRadius = tbInset
        return view
    }()
    
    let listTable = GDTableView()
    let CELL_ID = "cell_id"
    
    var listData:[ToDo] = [ToDo]()
    
    var keyboardHeight:CGFloat = 333
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardDidShowNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        let keyboardSize = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size
        self.keyboardHeight = keyboardSize.height
//        print(self.keyboardHeight)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listData = [
            ToDo(id: 0, title: "first item", status: false),
            ToDo(id: 1, title: "second item", status: true),
            ToDo(id: 2, title: "third item", status: true)
        ]
        
        view.backgroundColor = .white
        
        view.addSubview(header)
        header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        header.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        header.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive=true
        bg.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 20).isActive=true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive=true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive=true
        
        view.addSubview(listTable)
        listTable.leftAnchor.constraint(equalTo: bg.leftAnchor, constant: tbInset).isActive=true
        listTable.topAnchor.constraint(equalTo: bg.topAnchor, constant: tbInset).isActive=true
        listTable.bottomAnchor.constraint(equalTo: bg.bottomAnchor, constant: tbInset).isActive=true
        listTable.rightAnchor.constraint(equalTo: bg.rightAnchor, constant: tbInset * -1).isActive=true
        
        view.addSubview(popup)
        popup.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        popup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        popup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        popup.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        popup.textField.delegate = self
        popup.delegate = self
        
        header.delegate = self
        listTable.delegate = self
        listTable.dataSource = self
        listTable.register(GDListCell.self, forCellReuseIdentifier: CELL_ID)
    }
}

extension ListController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        popup.animateView(transform: CGAffineTransform(translationX: 0, y: -self.keyboardHeight), duration: 0.5)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        popup.animateView(transform: CGAffineTransform(translationX: 0, y: 0), duration: 0.6)
    }
}


extension ListController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID, for: indexPath) as! GDListCell
//            cell.textLabel?.text = self.listData[indexPath.row].title
            cell.toDo = self.listData[indexPath.row]
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 42 //row size : total = 42 - 8 ?
    }
    
}
