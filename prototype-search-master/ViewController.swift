//
//  ViewController.swift
//  prototype-search-master
//
//  Created by Andrew Campoli on 5/30/15.
//  Copyright (c) 2015 Andrew Campoli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    var toolbar0 = UIToolbar()
    var toolbar1 = UIToolbar()

    var searchBar = SearchBar()
    var search = ""
    
    var tap: UITapGestureRecognizer!
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        
        searchBar.resignFirstResponder()
        search = searchBar.text
        searchBar.text = nil
        searchBar.placeholder = "You ran a search for: '\(search)'!"
    }
    
    func dismissSearchKeyboard() {
        if searchBar.isFirstResponder() {
            
            searchBar.resignFirstResponder()
            searchBar.text = nil
            searchBar.placeholder = "You dismissed keyboard!"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.blackColor()
        
        tap = UITapGestureRecognizer(target: self, action: "dismissSearchKeyboard")
        view.addGestureRecognizer(tap)
        
        toolbar0.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height*0.03)
        view.addSubview(toolbar0)
        
        searchBar.delegate = self
        searchBar.frame = CGRect(x: 0.0, y: toolbar0.bounds.height, width: view.bounds.width, height: view.bounds.height*0.1)
        view.addSubview(searchBar)
        
        toolbar1.frame = CGRect(x: 0, y: toolbar0.bounds.height + searchBar.bounds.height, width: view.bounds.width, height: toolbar0.bounds.height)
        view.addSubview(toolbar1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

