//
//  ViewController.swift
//  TaskDemo
//
//  Created by Jitendra on 31/08/17.
//  Copyright © 2017 Jitendra. All rights reserved.
//

import UIKit
import YLProgressBar
class ViewController: UITableViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet var btnMorePols: UIButton!
    @IBOutlet var btnVotes: UIButton!
    @IBOutlet var progress1: YLProgressBar!
    @IBOutlet var progress3: YLProgressBar!
    @IBOutlet var progress2: YLProgressBar!
    @IBOutlet var progress4: YLProgressBar!
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var btnWhitepPaper: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.intinalSetup()
        self.progress1.setProgress(0.4, animated: true)
           self.progress2.setProgress(0.26, animated: true)
           self.progress3.setProgress(0.12, animated: true)
           self.progress4.setProgress(0.70, animated: true)
        
        self.setupFatProgressBar()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: UICollectionViewDataSource methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CollectionCell.self), for: indexPath) as! CollectionCell
        return cell
    }
    
    
}
// MARK:- USer Define function
extension ViewController {
    
    // Intinal setup
    func intinalSetup(){
        self.btnWhitepPaper.layer.cornerRadius = 15.0
        self.btnWhitepPaper.layer.borderWidth = 0.5
        self.btnWhitepPaper.layer.borderColor = UIColor.lightGray.cgColor
        self.btnVotes.layer.cornerRadius = 6.0
        self.btnVotes.layer.borderWidth = 0.5
        self.btnVotes.layer.borderColor = UIColor.lightGray.cgColor
        
    }
    // Set Progress Value
    func setupFatProgressBar(){
        let tintColors = [UIColor(red: 224/255, green: 218/255, blue: 255, alpha: 1.0)]
        self.progress1.progressTintColors       = tintColors
        self.progress1.stripesOrientation       =   .left
        self.progress1.indicatorTextDisplayMode = .none
        self.progress1.cornerRadius = 0.0;
        self.progress1.progressStretch          = false;
        
        self.progress2.progressTintColors       = tintColors
        self.progress2.stripesOrientation       =   .left
        self.progress2.indicatorTextDisplayMode = .none
        self.progress2.cornerRadius = 0.0;
        self.progress2.progressStretch          = false;
        
        self.progress3.progressTintColors       = tintColors
        self.progress3.stripesOrientation       =   .left
        self.progress3.indicatorTextDisplayMode = .none
        self.progress3.cornerRadius = 0.0;
        self.progress3.progressStretch          = false;
        
        self.progress4.progressTintColors       = tintColors
        self.progress4.stripesOrientation       =   .left
        self.progress4.indicatorTextDisplayMode = .none
        self.progress4.cornerRadius = 0.0;
        self.progress4.progressStretch          = false;
        
        
        
    }
}



