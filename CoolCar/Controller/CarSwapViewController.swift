//
//  ViewController.swift
//  CoolCar
//
//  Created by Michael Tier on 17/05/2021.
//

import UIKit

class CarSwapViewController: UIViewController {

    var selectedCarInfo: CarInformation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedCarInfo = CarInformation()
    }

    @IBAction func onFerrariTapped(_ sender: Any) {
        selectedCarInfo.make = "Ferrari"
        selectedCarInfo.model = "Enzo"
        selectedCarInfo.year = "2003"
        selectedCarInfo.hp = 660
        selectedCarInfo.mpgCity = 8
        selectedCarInfo.mpgHighway = 12
        selectedCarInfo.zeroToSixty = 3.65
        segueToCarInfoView()
    }
    
    @IBAction func onMcLarenTapped(_ sender: Any) {
        selectedCarInfo.make = "McLaren"
        selectedCarInfo.model = "Senna"
        selectedCarInfo.year = "2020"
        selectedCarInfo.hp = 789
        selectedCarInfo.mpgCity = 14
        selectedCarInfo.mpgHighway = 18
        selectedCarInfo.zeroToSixty = 2.8
        segueToCarInfoView()
    }
    
    func segueToCarInfoView() {
        performSegue(withIdentifier: "carInfoVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let carInfoVC = segue.destination as? CarInfoViewController {
            carInfoVC.selectedCarInfo = selectedCarInfo
        }
        
    }
    
    /**
                Come back to main screen view from the view showing the detailed car information.
     */
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }


}

