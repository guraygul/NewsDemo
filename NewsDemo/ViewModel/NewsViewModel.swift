//
//  NewsViewModel.swift
//  NewsDemo
//
//  Created by Güray Gül on 30.01.2024.
//

import Foundation

struct NewsTableViewModel {
    let newsList: [News]
    
    func numberOfRowsInSection() -> Int {
        return self.newsList.count
    }
    
    func newsAtIndexPath(_ index: Int) -> NewsViewModel {
        let news = self.newsList[index]
        return NewsViewModel(news: news)
    }
}

struct NewsViewModel {
    let news: News
    
    var title: String {
        return self.news.title
    }
    
    var story: String {
        return self.news.story
    }
}
