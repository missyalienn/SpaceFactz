//
//  ViewController.swift
//  NASA_API
//
//  Created by Missy Allan on 11/3/16.
//  Copyright © 2016 Missy Allan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var staticTitle: UILabel!
    
    @IBOutlet weak var sourceLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var imageTitle: UILabel!
    
    @IBOutlet weak var imageExplanation: UITextView!
    
    @IBOutlet weak var picOfTheDay: UIImageView!
    
    @IBOutlet weak var moreSpace: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isToolbarHidden = true
        getPictureOfTheDay()
        
    }
    
    
    func getPictureOfTheDay() {
        NASAAPIClient.getDataFromAPI { (data) in
            let potd = PicOfTheDay(data: data)
            DispatchQueue.main.async {
                self.dateLabel.text = potd.date
                self.imageTitle.text = potd.title
                self.imageTitle.lineBreakMode = .byWordWrapping
                self.imageTitle.numberOfLines = 0
                self.imageExplanation.text = potd.explanation
            }
            if potd.mediaType == "video" {
                print("its a video")
              let defaultImage = #imageLiteral(resourceName: "saturnnasa")
              self.picOfTheDay.image = defaultImage
                
            } else {
                NASAAPIClient.downloadImage(at: potd.imgUrl, completion: { (success, image) in
                    if success == true {
                        print("got image data from URL")
                        DispatchQueue.main.async {
                            self.picOfTheDay.image = image
                        }
                    } else {
                        print ("Error getting image")
                    }
                })
            }
        }
    }
    
    
    
    
    
    
    
    @IBAction func shareBttnPressed(_ sender: Any) {
        let activityVC = UIActivityViewController(activityItems: [self.picOfTheDay.image], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
