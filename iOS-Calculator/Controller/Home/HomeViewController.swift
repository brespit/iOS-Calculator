//
//  HomeViewController.swift
//  iOS-Calculator
//
//  Created by Flavio Leite on 24/07/2019.
//  Copyright © 2019 Flavio Leite. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {

    // MARKL: Outlets
    
    //Result
    @IBOutlet weak var resultLabel: UILabel!
    
    //Numbers
    @IBOutlet weak var number0: UIButton!
    @IBOutlet weak var number1: UIButton!
    @IBOutlet weak var number2: UIButton!
    @IBOutlet weak var number3: UIButton!
    @IBOutlet weak var number4: UIButton!
    @IBOutlet weak var number5: UIButton!
    @IBOutlet weak var number6: UIButton!
    @IBOutlet weak var number7: UIButton!
    @IBOutlet weak var number8: UIButton!
    @IBOutlet weak var number9: UIButton!
    @IBOutlet weak var numberDecimal: UIButton!
    
    //Operator
    @IBOutlet weak var operatorAC: UIButton!
    @IBOutlet weak var operatorPlusMinus: UIButton!
    @IBOutlet weak var operatorPercent: UIButton!
    @IBOutlet weak var operatorResult: UIButton!
    @IBOutlet weak var opertatorAdiction: UIButton!
    @IBOutlet weak var operatorSubstraction: UIButton!
    @IBOutlet weak var operatorMultiplication: UIButton!
    @IBOutlet weak var operatorDivision: UIButton!
    
    
    
    // MARK: Initialization
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        number0.round()
        number1.round()
        number2.round()
        number3.round()
        number4.round()
        number5.round()
        number6.round()
        number7.round()
        number8.round()
        number9.round()
        numberDecimal.round()
        operatorAC.round()
        operatorResult.round()
        operatorPercent.round()
        operatorDivision.round()
        operatorPlusMinus.round()
        opertatorAdiction.round()
        operatorMultiplication.round()
        operatorSubstraction.round()
    }

    // MARK: Button Actions
    @IBAction func operatorACAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorPlusMinusAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorPercentAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorResultAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func opertatorAdictionAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorSubstractionAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorMultiplicationAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorDivisionAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func numberDecimalAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
        sender.shine()
        print(sender.tag)
    }
    
}

