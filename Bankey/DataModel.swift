//
//  DataModel.swift
//  Bankey
//
//  Created by Evan Lu on 2024/6/16.
//

import Foundation

struct Order: Identifiable {
    var id: String = UUID().uuidString
    var amount: Int
    var day: Int
}

struct Records: Identifiable {
    var id: String = UUID().uuidString
    var state: Bool
    var number: Double
    var total: Int
    var date: Date
}

struct Prize: Identifiable {
    //禮物資料
    var id: String = UUID().uuidString
    var name: String//名稱
    var condition: Condition//完成特定任務條件
    var type: [Int: String] = [1:"玩具", 2:"遊戲", 3:"餐廳", 4:"旅遊", 5:"3C產品"]//禮物類型 存字典索引值
    var state: Bool//是否顯示在主頁 一次只顯示一項
    var amount: Int// 金額
    var date: Date//建立日期
    var resident: Bool//是否違常駐項目
}

struct Condition: Identifiable{
    
    var id: String = UUID().uuidString
    var condition: [Int: Int ]
    var value: Int
    
}



struct Task: Identifiable {
    
    var id: String = UUID().uuidString
    var name: String//名稱
    var date: Date//建立日期
    var deadLine: Date//截止時間
    var routine: Int//循環
    var type: Int//任務類型 存字典索引值
    
}



class TimeFrame {
    static let shared = TimeFrame()
    
    private var data: [Int: String] = [
        1: "單次",
        2: "每週",
        3: "每天"
    ]
    
    private init() { }
    
    func getValue(forKey key: Int) -> String? {
        return data[key]
    }
    
    func setValue(_ value: String, forKey key: Int) {
        data[key] = value
    }
    
    func getAllData() -> [Int: String] {
        return data
    }
}


class TaskType {
    static let shared = TaskType()
    
    private var data: [Int: String] = [
        1: "課業",
        2: "家務",
        3: "作息"
    ]
    
    private init() { }
    
    func getValue(forKey key: Int) -> String? {
        return data[key]
    }
    
    func setValue(_ value: String, forKey key: Int) {
        data[key] = value
    }
    
    func getAllData() -> [Int: String] {
        return data
    }
}

enum LoginProvider: String {
    case google = "Google"
    case facebook = "Facebook"
    case appleID = "AppleID"
    // 可以添加更多的登录类型
}

struct UserAccount {
    var provider: LoginProvider
    var accountID: String // 例如，Google, Facebook 或 Apple ID 提供的唯一ID
}

struct User {
    var userID: String // 唯一的用戶ID
    var accounts: [UserAccount] // 用戶的多个登錄帳號
    var name: String // 姓名
    var email: String // email
    
    // 初始化方法
    init(userID: String, accounts: [UserAccount], name: String, email: String) {
        self.userID = userID
        self.accounts = accounts
        self.name = name
        self.email = email
       
    }
}

struct Family: Identifiable {
    var id: String = UUID().uuidString
    var keeper: [User]
    var device: [Member]
}


struct Member: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var account: String
    
}

struct Account: Identifiable {
    var id: String = UUID().uuidString
    var cash: Int
    var deposit: Int
    var records: [Records]
    var task: [Task]
    var prize: [Prize]
    var finishTask: [Task]
}
