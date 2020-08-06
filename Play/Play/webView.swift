//
//  webView.swift
//  Play
//
//  Created by Oscar Nord on 2020-08-02.
//  Copyright © 2020 Oscar Nord. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    let view: WKWebView = WKWebView()
    var request: URLRequest {
        get{
            let url: URL = URL(string: "https://svtplay.se")!
            view.configuration.allowsAirPlayForMediaPlayback = true
            let request: URLRequest = URLRequest(url: url)
            return request
        }
    }
    func makeNSView(context: Context) -> WKWebView {
        view.load(request)
        return view
    }
    func updateNSView(_ view: WKWebView, context: Context) {}
}
