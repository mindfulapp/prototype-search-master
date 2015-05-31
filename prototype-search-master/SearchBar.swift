//
//  SearchBar.swift
//  prototype-search-master
//
//  Created by Andrew Campoli on 5/31/15.
//  Copyright (c) 2015 Andrew Campoli. All rights reserved.
//

import UIKit

class SearchBar: UISearchBar {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        placeholder = "Search"
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
