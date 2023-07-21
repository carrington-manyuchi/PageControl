//
//  ViewController.swift
//  PageControl
//
//  Created by DA MAC M1 157 on 2023/07/21.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numberOfPages: CGFloat = 3
        scrollView.contentSize = CGSize(width: self.view.bounds.width * numberOfPages, height: self.view.bounds.height)
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        
        // pageControl config
        
        pageControl.numberOfPages = Int(numberOfPages)
        pageControl.currentPage = 0
        pageControl.tintColor = UIColor.red
        pageControl.pageIndicatorTintColor = .black
        pageControl.currentPageIndicatorTintColor = .magenta
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //get current page index
        let currentPage = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        
        
        //assign current page index
        
        pageControl.currentPage = Int(currentPage)
    }


}

