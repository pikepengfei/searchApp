//
//  FileforJson.swift
//  search
//
//  Created by 鹏 on 2020/8/24.
//  Copyright © 2020 lpf. All rights reserved.
//

import Foundation
/**
 用于解析json模型
 */
struct Landmark: Hashable {
    //大标题
    var title: String
    //二标题
    var condition: String
    //价格
    var price: String
    //是否可以点击购买
    var isCan: Bool
    
    var category: Category
    //赋值
    enum Category: String, CaseIterable, Codable, Hashable {
        case title = "title"
        case condition = "condition"
        case price = "price"
        case isCam = "isCan"
    }
}
//加载json数据
func Landmarkdata() {
    let path = Bundle.main.path(forResource: "LandmarkData", ofType: "json")


    let url = URL(fileURLWithPath: path!)
    // 带throws的方法需要抛异常
    do {
          /*
             * try 和 try! 的区别
             * try 发生异常会跳到catch代码中
             * try! 发生异常程序会直接crash
             */
        let data = try Data(contentsOf: url)
        let jsonData:Any = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
        let jsonArr = jsonData as! NSArray
        
        for dict in jsonArr {
            print(dict)
        }
    } catch  {
        print("读取本地数据出现错误!")
    }
}
