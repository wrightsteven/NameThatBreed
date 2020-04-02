//
//  ViewController.swift
//  Name That Breed
//
//  Created by Steven Wright on 8/6/15.
//  Copyright (c) 2020 Steven Wright. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADBannerViewDelegate {

    var bannerView: GADBannerView!
    
    @IBOutlet weak var FlashcardImageView: UIImageView!
    
    @IBOutlet weak var FlipCardButton: UIButton!
    
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet weak var DefaultLabel: UILabel!
    
    @IBOutlet weak var AnswerLabel: UILabel!
    
    @IBOutlet weak var HintLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setupBottomButtonConstraints()
//        addActionToBottomButton()
//        bottomCustomButton.setTitle("Bottom", for: .normal)
        
        // In this case, we instantiate the banner with desired ad size.
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)

        addBannerViewToView(bannerView)
        
        //Use this for test ads
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        
        //bannerView.adUnitID = "ca-app-pub-9131388237905139/9229096252"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        bannerView.delegate = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
      RandomBreed()
        
      UnHideDefault()
        
      HideAnswer()
        
      //UnHideHint()
      
    }
    
    @IBOutlet private var topCustomButton: CustomButton!
    
    var bottomCustomButton = CustomButton()
    
    
    func setupBottomButtonConstraints() {
        view.addSubview(bottomCustomButton)
        bottomCustomButton.translatesAutoresizingMaskIntoConstraints = false
        bottomCustomButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        bottomCustomButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
        bottomCustomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        if #available(iOS 11.0, *) {
            bottomCustomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
        } else {
            // Fallback on earlier versions
        }
    }
    
    
//    func addActionToBottomButton() {
//        bottomCustomButton.addTarget(self, action: #selector(bottomButtonTapped), for: .touchUpInside)
//    }
    
    
//    @IBAction func topButtonTapped(_ sender: CustomButton) {
//        topCustomButton.shake()
//    }
//
//
//    @objc func bottomButtonTapped() {
//        bottomCustomButton.shake()
//    }
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
     bannerView.translatesAutoresizingMaskIntoConstraints = false
     view.addSubview(bannerView)
     view.addConstraints(
       [NSLayoutConstraint(item: bannerView,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: bottomLayoutGuide,
                           attribute: .top,
                           multiplier: 1,
                           constant: 0),
        NSLayoutConstraint(item: bannerView,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0)
       ])
    }
    
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
    // Add banner to view and add constraints as above.
    addBannerViewToView(bannerView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func HideDefault(){
        DefaultLabel.isHidden = true
    }
    
    func HideAnswer(){
        AnswerLabel.isHidden = true
    }
    
    func UnHideDefault(){
        DefaultLabel.isHidden = false
    }
    func UnHideAnswer(){
        AnswerLabel.isHidden = false
    }
    
//    func UnHideHint(){
//        HintLabel.isHidden = false
//    }
//
//    func HideHint(){
//        HintLabel.isHidden = true
//    }


    func RandomBreed(){
        let RandomNumber = arc4random_uniform(50) + 1

        
        switch(RandomNumber){
        
            
        case 1:
            self.FlashcardImageView.image = UIImage(named: "image1")
            
            
            AnswerLabel.text = "Labrador Retriever"
            HintLabel.text = "These medium-large dogs are America's most popular breed"
            
            break
            
        case 2:
            self.FlashcardImageView.image = UIImage(named: "image2")
            
            AnswerLabel.text = "German Shepherd"
            HintLabel.text = "Athletic and intelligent, great companions and protectors"
            
            break
            
        case 3:
            self.FlashcardImageView.image = UIImage(named: "image3")
            
            AnswerLabel.text = "Golden Retriever"
            HintLabel.text = "Friendly and gentle disposition makes this breed great with children"
            
            break
            
        case 4:
            self.FlashcardImageView.image = UIImage(named: "image4")
            
            AnswerLabel.text = "Bulldog"
            HintLabel.text = "Tyson, a dog of this breed, is famous for being able to skateboard"
            
            break
            
        case 5:
            self.FlashcardImageView.image = UIImage(named: "image5")
            
            AnswerLabel.text = "Beagle"
            HintLabel.text = "Developed for hunting hare, strong sense of smell"
            
            break
            
        case 6:
            self.FlashcardImageView.image = UIImage(named: "image6")
            
            AnswerLabel.text = "Yorkshire Terrier"
            HintLabel.text = "Feisty little dogs who only weigh around 7 pounds fully grown"
            
            break
            
        case 7:
            self.FlashcardImageView.image = UIImage(named: "image7")
            
            AnswerLabel.text = "Poodle"
            HintLabel.text = "These dogs come in three sizes: standard, miniature, and toy"
            
            break
            
        case 8:
            self.FlashcardImageView.image = UIImage(named: "image8")
            
            AnswerLabel.text = "Boxer"
            HintLabel.text = "These short-haired German dogs tend to have lots of energy"
            
            break
            
        case 9:
            self.FlashcardImageView.image = UIImage(named: "image9")
            
            AnswerLabel.text = "French Bulldog"
            HintLabel.text = "Quiet and friendly with uniquely shaped ears"
            
            break
            
        case 10:
            self.FlashcardImageView.image = UIImage(named: "image10")
            
            AnswerLabel.text = "Rottweiler"
            HintLabel.text = "Large size, originally developed to work with butchers"
            
            break
            
        case 11:
            self.FlashcardImageView.image = UIImage(named: "image11")
            
            AnswerLabel.text = "Dachshund"
            HintLabel.text = "Originally bred as scent hounds to hunt tunneling animals"
            
            break
            
        case 12:
            self.FlashcardImageView.image = UIImage(named: "image12")
            
            AnswerLabel.text = "German Shorthaired Pointer"
            HintLabel.text = "A versatile breed, these dogs are great for hunting and for families"
            
            break
            
        case 13:
            self.FlashcardImageView.image = UIImage(named: "image13")
            
            AnswerLabel.text = "Siberian Husky"
            HintLabel.text = "An athletic, medium sized work dog with gorgeous thick fur"
            
            break
            
        case 14:
            self.FlashcardImageView.image = UIImage(named: "image14")
            
            AnswerLabel.text = "Doberman Pinscher"
            HintLabel.text = "Athletic dogs named after the German tax collector who developed them"
            
            break
            
        case 15:
            self.FlashcardImageView.image = UIImage(named: "image15")
            
            AnswerLabel.text = "Great Dane"
            HintLabel.text = "A dog of this breed, named Zeus, holds the record for tallest dog ever"
            
            break
            
        case 16:
            self.FlashcardImageView.image = UIImage(named: "image16")
            
            AnswerLabel.text = "Miniature Schnauzer"
            HintLabel.text = "Originally bred to be ratters and guards on farms"
            
            break
            
        case 17:
            self.FlashcardImageView.image = UIImage(named: "image17")
            
            AnswerLabel.text = "Shih Tzu"
            HintLabel.text = "This breed's name means 'little lion' when translated to English"
            
            break
            
        case 18:
            self.FlashcardImageView.image = UIImage(named: "image18")
            
            AnswerLabel.text = "Australian Sheperd"
            HintLabel.text = "Smart and tireless, these dogs make great partners for jogging"
            
            break
            
        case 19:
            self.FlashcardImageView.image = UIImage(named: "image19")
            
            AnswerLabel.text = "Cavalier King Charles Spaniel"
            HintLabel.text = "Big round eyes are a hallmark of these loving dogs"
            
            break
            
        case 20:
            self.FlashcardImageView.image = UIImage(named: "image20")
            
            AnswerLabel.text = "Pomeranian"
            HintLabel.text = "Compact and known for their unique double coat and smiling faces"
            
            break
            
        case 21:
            self.FlashcardImageView.image = UIImage(named: "image21")
            
            AnswerLabel.text = "Shetland Sheepdog"
            HintLabel.text = "Named after the remote Scottish islands they orignate from, highly intelligent"
            
            break
        
        case 22:
            self.FlashcardImageView.image = UIImage(named: "image22")
            
            AnswerLabel.text = "Pembroke Welsh Corgi"
            HintLabel.text = "Easy to train and eager to learn, originally used as herders"
            
            break
            
        case 23:
            self.FlashcardImageView.image = UIImage(named: "image23")
            
            AnswerLabel.text = "Boston Terrier"
            HintLabel.text = "This compact, smooth coated breed originates from America"
            
            break
            
        case 24:
            self.FlashcardImageView.image = UIImage(named: "image24")
            
            AnswerLabel.text = "Chihuahua"
            HintLabel.text = "These graceful little dogs only weigh about 6 pounds fully grown"
            
            break
            
        case 25:
            self.FlashcardImageView.image = UIImage(named: "image25")
            
            AnswerLabel.text = "Havanese"
            HintLabel.text = "Native to Cuba, these dogs are friendly and playful"
            
            break
            
        case 26:
            self.FlashcardImageView.image = UIImage(named: "image26")
            
            AnswerLabel.text = "Mastiff"
            HintLabel.text = "One of the oldest breeds, their ancestors were viscious war dogs"
            
            break
            
        case 27:
            self.FlashcardImageView.image = UIImage(named: "image27")
            
            AnswerLabel.text = "Brittany"
            HintLabel.text = "Originally bred for bird hunting, these dogs love exercise"
            
            break
            
        case 28:
            self.FlashcardImageView.image = UIImage(named: "image28")
            
            AnswerLabel.text = "English Springer Spaniel"
            HintLabel.text = "Medium sized and affectionate, typically live 12 to 14 years"
            
            break
            
        case 29:
            self.FlashcardImageView.image = UIImage(named: "image29")
            
            AnswerLabel.text = "Maltese"
            HintLabel.text = "This affectionate breed is know for its long and silky white fur"
            
            break
            
        case 30:
            self.FlashcardImageView.image = UIImage(named: "image30")
            
            AnswerLabel.text = "Cocker Spaniel"
            HintLabel.text = "This long-eared breed is full of energy and loves to play"
            
            break
            
        case 31:
            self.FlashcardImageView.image = UIImage(named: "image31")
            
            AnswerLabel.text = "Bernese Mountain Dog"
            HintLabel.text = "Strong work dogs originating from the Swiss Alps"
            
            break
            
        case 32:
            self.FlashcardImageView.image = UIImage(named: "image32")
            
            AnswerLabel.text = "Pug"
            HintLabel.text = "This compact breed features a curled tail and fine, glossy coat"
            
            break
            
        case 33:
            self.FlashcardImageView.image = UIImage(named: "image33")
            
            AnswerLabel.text = "Vizsla"
            HintLabel.text = "An active Hungarian breed who loves attention"
            
            break
            
        case 34:
            self.FlashcardImageView.image = UIImage(named: "image34")
            
            AnswerLabel.text = "Weimaraner"
            HintLabel.text = "This German breed is sometimes called the 'Gray Ghost'"
            
            break
            
        case 35:
            self.FlashcardImageView.image = UIImage(named: "image35")
            
            AnswerLabel.text = "Collie"
            HintLabel.text = "A Scottish breed originally used as herders"
            
            break
            
        case 36:
            self.FlashcardImageView.image = UIImage(named: "image36")
            
            AnswerLabel.text = "Newfoundland"
            HintLabel.text = "Large and powerful, originated in Canada"
            
            break
            
        case 37:
            self.FlashcardImageView.image = UIImage(named: "image37")
            
            AnswerLabel.text = "West Highland White Terrier"
            HintLabel.text = "Bred to hunt rodents, these smart little dogs are tough and strong"
            
            break
            
        case 38:
            self.FlashcardImageView.image = UIImage(named: "image38")
            
            AnswerLabel.text = "Rhodesian Ridgeback"
            HintLabel.text = "Native to Africa, these dogs have been used to track lions"
            
            break
            
        case 39:
            self.FlashcardImageView.image = UIImage(named: "image39")
            
            AnswerLabel.text = "Border Collie"
            HintLabel.text = "Hard working and easy to train because of their high intelligence"
            
            break
            
        case 40:
            self.FlashcardImageView.image = UIImage(named: "image40")
            
            AnswerLabel.text = "Chesapeake Bay Retriever"
            HintLabel.text = "Native to America, this breed is famous for its waterproof coat"
            
            break
            
        case 41:
            self.FlashcardImageView.image = UIImage(named: "image41")
            
            AnswerLabel.text = "Basset Hound"
            HintLabel.text = "Low-key demeanor with big ears and large paws"
            
            break
            
        case 42:
            self.FlashcardImageView.image = UIImage(named: "image42")
            
            AnswerLabel.text = "Papillon"
            HintLabel.text = "This breed's name is the French word for 'butterfly'"
            
            break
            
        case 43:
            self.FlashcardImageView.image = UIImage(named: "image43")
            
            AnswerLabel.text = "Bichon Frise"
            HintLabel.text = "These friendly little dogs have a white hypoallergenic coat"
            
            break
            
        case 44:
            self.FlashcardImageView.image = UIImage(named: "image44")
            
            AnswerLabel.text = "Bullmastiff"
            HintLabel.text = "Big and athletic, these dogs have been used to pursue poachers"
            
            break
            
        case 45:
            self.FlashcardImageView.image = UIImage(named: "image45")
            
            AnswerLabel.text = "Akita"
            HintLabel.text = "This Japanese breed is known for it loyalty"
            
            break
            
        case 46:
            self.FlashcardImageView.image = UIImage(named: "image46")
            
            AnswerLabel.text = "Shiba Inu"
            HintLabel.text = "This small, strong Japanese breed was originally used for hunting"
            
            break
            
        case 47:
            self.FlashcardImageView.image = UIImage(named: "image47")
            
            AnswerLabel.text = "Cane Corso"
            HintLabel.text = "From ancient Rome, their name means 'bodyguard dog' in Latin"
            
            break
            
        case 48:
            self.FlashcardImageView.image = UIImage(named: "image48")
            
            AnswerLabel.text = "Soft Coated Wheaten Terrier"
            HintLabel.text = "This Irish farm breed has a unique, low shedding coat"
            
            break
            
        case 49:
            self.FlashcardImageView.image = UIImage(named: "image49")
            
            AnswerLabel.text = "Bloodhound"
            HintLabel.text = "Their strong sense of smell makes them relentless trackers"
            
            break
            
        case 50:
            self.FlashcardImageView.image = UIImage(named: "image50")
            
            AnswerLabel.text = "St. Bernard"
            HintLabel.text = "From the Swiss Alps, these gentle giants are great with kids"
            
            break
    
        
        default:
            break
        
            
        }
    }


    
    @IBAction func AnswerButtonTapped(_ sender: UIButton) {
        
        HideDefault()
        UnHideAnswer()
        
        
    }


    @IBAction func NextButtonTapped(_ sender: UIButton) {
        
        RandomBreed()
        
        //UnHideHint()
        UnHideDefault()
        HideAnswer()
        
    }
    
    
  
}

