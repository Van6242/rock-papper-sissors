//
//  smart.swift
//  rock papper sissors
//
//  Created by  on 4/25/22.
//

import UIKit

class smart: UIViewController {
    @IBOutlet weak var compimage: UIImageView!
    var last = 1
    var cho = 1
    var comp = 1
    override func viewDidLoad() {
        super.viewDidLoad()

        compimage.layer.borderWidth = 2
        compimage.layer.borderColor = UIColor.darkGray.cgColor
        
        compimage.layer.cornerRadius = 10
    }
    @IBAction func ropicked(_ sender: Any)
    {
        cho = 1
        
        if last == 1 {
            showsc()
            comp = 3
        }
        if last == 2 {
            showro()
            comp = 1
        }
        if last == 3 {
            showpa()
            comp = 2
        }
       
        if comp == 3
        {
           algood()
        }
        if comp == 2 {
            albad()
        }
        else {
            altie()
        }
        last = 1
    }
    
    @IBAction func papicked(_ sender: Any)
    {
        cho = 2
        if last == 1 {
            showsc()
            comp = 3
        }
        if last == 2 {
            showro()
            comp = 1
        }
        if last == 3 {
            showpa()
            comp = 2
        }
        if comp == 1
        {
           algood()
        }
        if comp == 3 {
            albad()
        }
        else {
            altie()
        }

       

        last = 2
    }
    
    @IBAction func scpicked(_ sender: Any)
    {
        cho = 3
        if last == 1 {
            showsc()
            comp = 3
        }
        if last == 2 {
            showro()
            comp = 1
        }
        if last == 3 {
            showpa()
            comp = 2
        }
        if comp == 2
        {
           algood()
        }
        if comp == 1 {
            albad()
        }
        else {
            altie()
        }


        last = 3
    }
    
    

    func showro ()
    {
        compimage.image = UIImage(named: "ro")
    }
    func showpa ()
    {
        compimage.image = UIImage(named: "pa")
    }
    func showsc ()
    {
        compimage.image = UIImage(named: "sc")
    }
    func albad()
    {
        let alert = UIAlertController(title: "You lost", message: "Try again", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    func algood()
    {
        
        let alert = UIAlertController(title: "You Won", message: "Great job", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    func altie()
    {
        let alert = UIAlertController(title: "Tie", message: "We matched", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}
