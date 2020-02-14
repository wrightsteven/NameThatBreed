//
//  ViewController.swift
//  Name That Breed
//
//  Created by Steven Wright on 8/6/15.
//  Copyright (c) 2015 Steven Wright. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var FlashcardImageView: UIImageView!
    
    @IBOutlet weak var FlipCardButton: UIButton!
    
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet weak var DefaultLabel: UILabel!

    
    @IBOutlet weak var AnswerLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      RandomBreed()
        
      UnHideDefault()
        
      HideAnswer()
        
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


    func RandomBreed(){
        let RandomNumber = arc4random_uniform(50) + 1

        
        switch(RandomNumber){
        
            
        case 1:
            self.FlashcardImageView.image = UIImage(named: "image1")
            
            
            AnswerLabel.text = "Labrador Retriever"
            
            break
            
        case 2:
            self.FlashcardImageView.image = UIImage(named: "image2")
            
            AnswerLabel.text = "German Shepherd"
            break
            
        case 3:
            self.FlashcardImageView.image = UIImage(named: "image3")
            
            AnswerLabel.text = "Golden Retriever"
            break
            
        case 4:
            self.FlashcardImageView.image = UIImage(named: "image4")
            
            AnswerLabel.text = "Bulldog"
            break
            
        case 5:
            self.FlashcardImageView.image = UIImage(named: "image5")
            
            AnswerLabel.text = "Beagle"
            break
            
        case 6:
            self.FlashcardImageView.image = UIImage(named: "image6")
            
            AnswerLabel.text = "Yorkshire Terrier"
            break
            
        case 7:
            self.FlashcardImageView.image = UIImage(named: "image7")
            
            AnswerLabel.text = "Poodle"
            break
            
        case 8:
            self.FlashcardImageView.image = UIImage(named: "image8")
            
            AnswerLabel.text = "Boxer"
            break
            
        case 9:
            self.FlashcardImageView.image = UIImage(named: "image9")
            
            AnswerLabel.text = "French Bulldog"
            break
            
        case 10:
            self.FlashcardImageView.image = UIImage(named: "image10")
            
            AnswerLabel.text = "Rottweiler"
            break
            
        case 11:
            self.FlashcardImageView.image = UIImage(named: "image11")
            
            AnswerLabel.text = "Dachshund"
            break
            
        case 12:
            self.FlashcardImageView.image = UIImage(named: "image12")
            
            AnswerLabel.text = "German Shorthaired Pointer"
            break
            
        case 13:
            self.FlashcardImageView.image = UIImage(named: "image13")
            
            AnswerLabel.text = "Siberian Husky"
            break
            
        case 14:
            self.FlashcardImageView.image = UIImage(named: "image14")
            
            AnswerLabel.text = "Doberman Pinscher"
            break
            
        case 15:
            self.FlashcardImageView.image = UIImage(named: "image15")
            
            AnswerLabel.text = "Great Dane"
            break
            
        case 16:
            self.FlashcardImageView.image = UIImage(named: "image16")
            
            AnswerLabel.text = "Miniature Schnauzer"
            break
            
        case 17:
            self.FlashcardImageView.image = UIImage(named: "image17")
            
            AnswerLabel.text = "Shih Tzu"
            break
            
        case 18:
            self.FlashcardImageView.image = UIImage(named: "image18")
            
            AnswerLabel.text = "Australian Sheperd"
            break
            
        case 19:
            self.FlashcardImageView.image = UIImage(named: "image19")
            
            AnswerLabel.text = "Cavalier King Charles Spaniel"
            break
            
        case 20:
            self.FlashcardImageView.image = UIImage(named: "image20")
            
            AnswerLabel.text = "Pomeranian"
            break
            
        case 21:
            self.FlashcardImageView.image = UIImage(named: "image21")
            
            AnswerLabel.text = "Shetland Sheepdog"
            break
        
        case 22:
            self.FlashcardImageView.image = UIImage(named: "image22")
            
            AnswerLabel.text = "Pembroke Welsh Corgi"
            break
            
        case 23:
            self.FlashcardImageView.image = UIImage(named: "image23")
            
            AnswerLabel.text = "Boston Terrier"
            break
            
        case 24:
            self.FlashcardImageView.image = UIImage(named: "image24")
            
            AnswerLabel.text = "Chihuahua"
            break
            
        case 25:
            self.FlashcardImageView.image = UIImage(named: "image25")
            
            AnswerLabel.text = "Havanese"
            break
            
        case 26:
            self.FlashcardImageView.image = UIImage(named: "image26")
            
            AnswerLabel.text = "Mastiff"
            break
            
        case 27:
            self.FlashcardImageView.image = UIImage(named: "image27")
            
            AnswerLabel.text = "Brittany"
            break
            
        case 28:
            self.FlashcardImageView.image = UIImage(named: "image28")
            
            AnswerLabel.text = "English Springer Spaniel"
            break
            
        case 29:
            self.FlashcardImageView.image = UIImage(named: "image29")
            
            AnswerLabel.text = "Maltese"
            break
            
        case 30:
            self.FlashcardImageView.image = UIImage(named: "image30")
            
            AnswerLabel.text = "Cocker Spaniel"
            break
            
        case 31:
            self.FlashcardImageView.image = UIImage(named: "image31")
            
            AnswerLabel.text = "Bernese Mountain Dog"
            break
            
        case 32:
            self.FlashcardImageView.image = UIImage(named: "image32")
            
            AnswerLabel.text = "Pug"
            break
            
        case 33:
            self.FlashcardImageView.image = UIImage(named: "image33")
            
            AnswerLabel.text = "Vizslas"
            break
            
        case 34:
            self.FlashcardImageView.image = UIImage(named: "image34")
            
            AnswerLabel.text = "Weimaraner"
            break
            
        case 35:
            self.FlashcardImageView.image = UIImage(named: "image35")
            
            AnswerLabel.text = "Collie"
            break
            
        case 36:
            self.FlashcardImageView.image = UIImage(named: "image36")
            
            AnswerLabel.text = "Newfoundland"
            break
            
        case 37:
            self.FlashcardImageView.image = UIImage(named: "image37")
            
            AnswerLabel.text = "West Highland White Terrier"
            break
            
        case 38:
            self.FlashcardImageView.image = UIImage(named: "image38")
            
            AnswerLabel.text = "Rhodesian Ridgeback"
            break
            
        case 39:
            self.FlashcardImageView.image = UIImage(named: "image39")
            
            AnswerLabel.text = "Border Collie"
            break
            
        case 40:
            self.FlashcardImageView.image = UIImage(named: "image40")
            
            AnswerLabel.text = "Chesapeake Bay Retriever"
            break
            
        case 41:
            self.FlashcardImageView.image = UIImage(named: "image41")
            
            AnswerLabel.text = "Basset Hound"
            break
            
        case 42:
            self.FlashcardImageView.image = UIImage(named: "image42")
            
            AnswerLabel.text = "Papillon"
            break
            
        case 43:
            self.FlashcardImageView.image = UIImage(named: "image43")
            
            AnswerLabel.text = "Bichon Frise"
            break
            
        case 44:
            self.FlashcardImageView.image = UIImage(named: "image44")
            
            AnswerLabel.text = "Bullmastiff"
            break
            
        case 45:
            self.FlashcardImageView.image = UIImage(named: "image45")
            
            AnswerLabel.text = "Akita"
            break
            
        case 46:
            self.FlashcardImageView.image = UIImage(named: "image46")
            
            AnswerLabel.text = "Shiba Inu"
            break
            
        case 47:
            self.FlashcardImageView.image = UIImage(named: "image47")
            
            AnswerLabel.text = "Cane Corso"
            break
            
        case 48:
            self.FlashcardImageView.image = UIImage(named: "image48")
            
            AnswerLabel.text = "Soft Coated Wheaten Terrier"
            break
            
        case 49:
            self.FlashcardImageView.image = UIImage(named: "image49")
            
            AnswerLabel.text = "Bloodhound"
            break
            
        case 50:
            self.FlashcardImageView.image = UIImage(named: "image50")
            
            AnswerLabel.text = "St. Bernard"
            break
    
        
        default:
            break
        
            
        }
    }


    
    @IBAction func AnswerButtonTapped(sender: UIButton) {
        
        HideDefault()
        UnHideAnswer()
        
        
    }


    @IBAction func NextButtonTapped(sender: UIButton) {
        
        RandomBreed()
        
        
        UnHideDefault()
        HideAnswer()
        
    }
    
    
  
}

