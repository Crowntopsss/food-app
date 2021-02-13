//
//  OnboardingViewController.swift
//  food app
//
//  Created by Temitope on 06/02/2021.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = [OnboardingSlide(title:"Delicious Dishes", description: "Experience a variety of amazing dishes form different countries", image:#imageLiteral(resourceName: "slide3") ),OnboardingSlide(title:"World Class Chef", description: "Experience a variety of amazing dishes form different countries from different places", image:#imageLiteral(resourceName: "slide1") ),OnboardingSlide(title:"Instant Delivery", description: "Experience a variety of amazing you will be so happy to see everything", image:#imageLiteral(resourceName: "slide2") )]
    
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }
    

    @IBAction func nextBtnClicked(_ sender: Any) {
    }
    
}
extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell 
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
    }
}
