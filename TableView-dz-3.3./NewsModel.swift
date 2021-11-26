//
//  NewsModel.swift
//  TableView-dz-3.3.
//
//  Created by user on 25.11.2021.
//

import Foundation

class NewsModel {
    var title: String
    var description: String
    var image: String
    
    init(title: String, description: String, image: String) {
        self.title = title
        self.description = description
        self.image = image
    }
}
