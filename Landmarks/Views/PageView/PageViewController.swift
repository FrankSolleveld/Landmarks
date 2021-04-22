//
//  PageViewController.swift
//  Landmarks
//
//  Created by Frank Solleveld on 22/04/2021.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageVC = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        return pageVC
    }
    
    func updateUIViewController(_ pageVC: UIPageViewController, context: Context) {
        pageVC.setViewControllers(
            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
}
