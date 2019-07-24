//
//  HomeViewController.swift
//  iOS-Calculator
//
//  Created by Flavio Leite on 24/07/2019.
//  Copyright © 2019 Flavio Leite. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {

    // MARK: Outlets
    
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
    
    // MARK: Variables
    private var total: Double = 0 // Total
    private var temp : Double = 0 // Valor por pantalla
    private var operating = false // Indicar si se ha seleccionado un operador
    private var decimal = false   // Indicar si el valor es decimal
    private var operation: OperationType = .none // Operacion actual
    
    
    // MARK: Constants
    private let kDecimalSeparator = Locale.current.decimalSeparator!
    private let xMaxLenght = 9
    private let kMaxValue: Double = 999999999
    private let kMinValue: Double = 0.00000001
    
    private enum OperationType {
        case none, addiction, substraction, multiplication, division, percent
    }
    
    // Formateo de valores auxiliar
    private let auxFormatrer: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = ""
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    // Formateo de valores por pantalla por defecto
    private let printFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = locale.groupingSeparator
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        formatter.maximumIntegerDigits = 9
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 8
        return formatter
    }()

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
        
        numberDecimal.setTitle(kDecimalSeparator, for: .normal)
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
    
    private func clear() {
        operation = .none
        operatorAC.setTitle("AC", for: .normal)
        if temp != 0 {
            temp = 0
            resultLabel.text = "0"
        } else {
            total = 0
            result()
        }
    }
    
    private func result() {
        switch operation {
        case .none:
            break
        case .addiction:
            total += temp
            break
        case .substraction:
            total -= temp
            break
        case .multiplication:
            total *= temp
            break
        case .division:
            total /= temp
            break
        case .percent:
            temp /= 100
            total = temp
            break
        }
        
        //Formatear
        if total <= kMaxValue || total >= kMinValue {
            resultLabel.text = printFormatter.string(from: NSNumber(value: total))
        }
        
        print ("Total \(total)")
    }
    
}

