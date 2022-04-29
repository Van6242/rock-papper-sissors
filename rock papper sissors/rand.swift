//
//  rand.swift
//  rock papper sissors
//
//  Created by  on 4/25/22.
//

import UIKit

class rand: UIViewController {

    @IBOutlet weak var compimage: UIImageView!
    var randnum = 1
    var comp = 1
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        compimage.layer.borderWidth = 2
        compimage.layer.borderColor = UIColor.darkGray.cgColor
        
        compimage.layer.cornerRadius = 10
    }
    @IBAction func roin(_ sender: Any)
    {
        randomn()
        if randnum == 1{
            showro()
            comp = 1
        }
        if randnum == 2{
            showpa()
            comp = 2
        }
        if randnum == 3{
            showsc()
            comp = 3
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
    }
    
    @IBAction func pain(_ sender: Any)
    {
        randomn()
        if randnum == 1{
            showro()
            comp = 1
        }
        if randnum == 2{
            showpa()
            comp = 2
        }
        if randnum == 3{
            showsc()
            comp = 3
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
    }
    
    @IBAction func scin(_ sender: Any)
    {
        randomn()
        if randnum == 1{
            showro()
            comp = 1
        }
        if randnum == 2{
            showpa()
            comp = 2
        }
        if randnum == 3{
            showsc()
            comp = 3
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
    }
    
    
    
    
    
    func randomn()
    {
        randnum = Int.random(in: 1...3)
        print(randnum)
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
