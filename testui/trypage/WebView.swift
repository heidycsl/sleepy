//
//  WebView.swift
//  testui
//
//  Created by user on 15/6/2021.
//

import UIKit
import WebKit

class WebView: UIViewController {
   
    
    @IBOutlet var wv: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let url = "https://food.ulifestyle.com.hk"
        loadURL(urlString: url)
        // Do any additional setup after loading the view.
    }


    func loadURL(urlString: String){
        let url = URL(string: urlString)
        if let url = url{
            let request = URLRequest(url: url)
//            wv = WKWebView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: 80))
            wv = WKWebView(frame: UIScreen.main.bounds)
           
        
                wv.navigationDelegate = self
                self.title = "haha"
                wv.load(request)
                self.view.addSubview(wv)
           
//                self.view.sendSubviewToBack(wv)
                
            
        }
    }
}
extension WebView: WKNavigationDelegate{
  
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Start to load")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
       
       
        print("finish to load")
    }
    
    
}

