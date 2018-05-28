//
//  WalkthroughViewModel.swift
//  MovieRating
//
//  Created by Hien Quang Tran on 24/5/18.
//  Copyright © 2018 Hien Tran. All rights reserved.
//

public struct WalkthroughViewModel {
    
    private let walkthroughContents = [
        WalkthroughContent(index: 0,
                           heading: "Personalize",
                           imageFile: "walkthru1",
                           content: "We have everything that suits your style"),
        WalkthroughContent(index: 1,
                           heading: "Discover",
                           imageFile: "walkthru4",
                           content: "Searching for your favourite movies can't never be easier"),
        WalkthroughContent(index: 2,
                           heading: "Enjoyable",
                           imageFile: "walkthru5",
                           content: "Enjoy you favourite movies with friends and family")
    ]
    
    private var _currentIndex = 0
    
    var currentIndex: Int {
        return _currentIndex
    }
    
    var numberOfItems: Int {
        return walkthroughContents.count
    }
    
    public init() {}
    
    func content(at index: Int) -> WalkthroughContent {
        return walkthroughContents[index]
    }
    
    mutating func setCurrentIndex(to index: Int) {
        self._currentIndex = index
    }
}