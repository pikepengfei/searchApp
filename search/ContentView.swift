//
//  ContentView.swift
//  search
//
//  Created by 鹏 on 2020/8/17.
//  Copyright © 2020 lpf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //搜索字串
    @State var searchStr:String = ""
    //显示用数组
    @State private var item:[String] = Array(0...24).map{"item\($0)"}
    
    var body: some View {
        
        
        NavigationView{
            VStack{
                //搜索框显示 .函数属性是搜索框的样式
                TextField("Search",text: $searchStr)
                    .frame(height:40)
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                    .border(Color.gray,width: 4)
                    .cornerRadius(8)
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 4))
                //搜索按钮
                Button(action: {
                    print(self.searchStr)
                }) {
                    Text("Search")
                    
                }
                .frame(height:40)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                .border(Color.blue,width: 4)
                .cornerRadius(8)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                //显示搜索结果的tableView
                List(){
                    ForEach(item,id:\.self){item in
                        Text(item)
                    }
                  
                }
            }
                //navigation标题
            .navigationBarTitle("Search")
            //.background(Color.init())
        }
    }
    

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

