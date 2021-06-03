//
//  ViewController.swift
//  Project-4-Easy-Browser
//
//  Created by Baris Karalar on 3.06.2021.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView : WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://www.hackingwithswift.com/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

extension ViewController: WKNavigationDelegate {

    
}

