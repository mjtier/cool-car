//
//  CarInfoViewController.swift
//  CoolCar
//
//  Created by Michael Tier on 19/05/2021.
//

import UIKit

class CarInfoViewController: UIViewController {
        
    var selectedCarInfo: CarInformation!

    @IBOutlet weak var mpgHighwayLabel: UILabel!
    @IBOutlet weak var zeroToSixtyLabel: UILabel!
    @IBOutlet weak var hpLabel: UILabel!
    @IBOutlet weak var mpgCityLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var carMakeLabel: UILabel!
    @IBOutlet weak var carModelLabel: UILabel!
    @IBOutlet weak var selectedCarImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named:selectedCarInfo.make)
        selectedCarImage.image = image
        yearLabel.text = selectedCarInfo.year
        carMakeLabel.text = selectedCarInfo.make
        carModelLabel.text = selectedCarInfo.model
        hpLabel.text = String(selectedCarInfo.hp)
        zeroToSixtyLabel.text = String(selectedCarInfo.zeroToSixty)
        mpgCityLabel.text = String(selectedCarInfo.mpgCity)
        mpgHighwayLabel.text = String(selectedCarInfo.mpgHighway)
        
        
        // Progromatically set the Image
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
