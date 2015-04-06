//
//  TodoModel.swift
//  Todo
//
//  Created by Lyman on 4/6/15.
//  Copyright (c) 2015 Lyman. All rights reserved.
//

import Foundation

class TodoModel : NSObject{
    var id: String
    var image: String
    var title: String
    var date: NSDate
    
    init (id: String, image: String, title: String, date: NSDate) {
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }
}