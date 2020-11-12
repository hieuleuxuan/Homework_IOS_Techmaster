//
//  DataTableView.swift
//  Baitap_ScrollView_TableView
//
//  Created by Leu Xuan Hieu on 11/11/20.
//  Copyright © 2020 Leu Xuan Hieu. All rights reserved.
//

import UIKit

class DataTableView: UIViewController {

    var userData = ["Tào Thuý Quỳnh", "Lều Xuân Hiếu","Phạm Thành Công", "hungnv1801", "Nam Đoàn", "Nguyễn Mạnh Công Thành", "Dương Ngọc Hào", "Trung Hiếu Nguyễn", "Nguyễn Anh Vũ", "Tùng"]
    var message = ["Hello em !", "Em nộp bài buổi 7 ak","Chị cho em hỏi câu này với", "Chào chị","OK c", "Anh chào em","Đi học chưa em", "Chào ông.","Quê em ở đâu v", "Chào e nha"]
    var time = ["2 giờ", "8 giờ","1 ngày", "1 ngày","1 ngày", "1 ngày","1 ngày", "1 ngày","1 ngày", "1 ngày"]

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ZaloCell", bundle: nil), forCellReuseIdentifier: "ZaloCell")
    }
}

extension DataTableView: UITableViewDelegate, UITableViewDataSource{
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section {
//        case 0:
//            return 1
//        case 1:
//            return 10
//        default:
//            return 1
//        }
        return userData.count
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        switch section {
//        case 0:
//            return "Giảng viên"
//        case 1:
//            return "Học viên"
//        default:
//            return ""
//        }
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ZaloCell", for: indexPath) as! ZaloCell
        cell.nameView.text = userData[indexPath.row]
        cell.messView.text = message[indexPath.row]
        cell.timeView.text = time[indexPath.row]
        cell.imgView.layer.cornerRadius = cell.imgView.frame.height / 2
        cell.imgView.image = UIImage(named: userData[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}
