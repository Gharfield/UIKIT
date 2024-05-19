//
//  WebViewerController.swift
//  UIKitM8
//
//  Created by Gustaf Hallberg on 2024-05-19.
//

import UIKit
import WebKit

class WebViewerController: UIViewController {
    
    private let WebView = WKWebView()
    private let urlString: String
    
    init(with urlString: String) {
        self.urlString = urlString
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        guard let url = URL(string: self.urlString) else {
            self.dismiss(animated: true, completion: nil)
            return
        }
        
        self.WebView.load(URLRequest(url: url))
    }
    
    private func setupUI() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Klar", style: .done, target: self, action: #selector(didTapDone))
        self.navigationController?.navigationBar.backgroundColor = .secondarySystemBackground
        
        self.view.addSubview(WebView)
        self.WebView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.WebView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.WebView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.WebView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.WebView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
        ])
    }
    
    @objc private func didTapDone() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
