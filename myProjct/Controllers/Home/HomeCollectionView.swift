//
//  CollectionViewA.swift
//  Marssai
//
//  Created by Huda N S on 02/04/1443 AH.
//

import UIKit

class HomeCollectionView : UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    //In this class, I designed the HomeViewController
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collicton: UICollectionView!
    
    //araay of a group of photos that are reviewed in the collection view
    var MarsaaiProduct = [UIImage(named: "img5")! , UIImage(named: "img2")! , UIImage(named: "img3")! , UIImage(named: "img6")! , UIImage(named: "img11")! , UIImage(named: "img10")! , UIImage(named: "img12")! , UIImage(named: "img13")! , UIImage(named: "img18")! , UIImage(named: "img19")! , UIImage(named: "img20")! , UIImage(named: "img22")! , UIImage(named: "img5")! , UIImage(named: "img2")! , UIImage(named: "img3")! , UIImage(named: "img6")! , UIImage(named: "img11")! , UIImage(named: "img10")! , UIImage(named: "img12")! , UIImage(named: "img13")! , UIImage(named: "img18")! , UIImage(named: "img19")! , UIImage(named: "img20")! , UIImage(named: "img22")!]
    var timer : Timer?
    var currentCallIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    //to call functions
        collicton.delegate = self
        collicton.dataSource = self
        startTimer()
    }
    
    //function of the time for automatic image rotation
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2 , target: self, selector: #selector(moveToNextIndex), userInfo: nil , repeats: true)
    }
    
    //function of the automatic image rotation
    @objc func moveToNextIndex(){
        if currentCallIndex < MarsaaiProduct.count - 1 {
            currentCallIndex += 1
        }else{
            currentCallIndex = 0
        }
        collicton.scrollToItem(at: IndexPath(item: currentCallIndex , section: 0), at: .centeredHorizontally , animated: true)
    }
    
    //function to specify the number of items
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MarsaaiProduct.count
    }
    
    //function to feed the list with data
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let call = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath) as! CollectionViewImg
        call.imgMarssai.image = MarsaaiProduct[indexPath.row]
        return call
    }
    
    //function to specify the width and height of the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width , height: collectionView.frame.height)
    }
    
    //function to determine the distance between each cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
