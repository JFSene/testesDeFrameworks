//
//  CadastroViewController.swift
//  telaDeCadastro
//
//  Created by Joel Sene on 18/03/17.
//  Copyright © 2017 Joel Sene. All rights reserved.
//

import UIKit
import BadgeSwift
import Material

class CadastroViewController: UIViewController {

    
    //MARK: - Varáveis
    @IBOutlet weak var quemVoceHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var qualSeuEnderecoHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var crieUmaSenhaHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var badgeUm: BadgeSwift!
    @IBOutlet weak var badgeDeois: BadgeSwift!
    @IBOutlet weak var BadgeTres: BadgeSwift!
    @IBOutlet weak var viewUm: UIView!
    @IBOutlet weak var viewDois: UIView!
    @IBOutlet weak var tituloPagina: UILabel!
    @IBOutlet weak var sexoEscolha: UISegmentedControl!
    @IBOutlet weak var quemVoceButton: RaisedButton!
    @IBOutlet weak var qualSeuEnderecoButton: RaisedButton!
    @IBOutlet weak var criSuaSenhabutton: RaisedButton!
    @IBOutlet weak var viewTres: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareButtons()
        prepareHeight()
        prepareBadges()
    }

    //MARK: - Actions
    @IBAction func quemVoceButtonTapped(_ sender: AnyObject) {
        prepareBadgeDois()
        prepareHeightDois()
        
        viewUm.alpha = 0
        viewDois.alpha = 1
        tituloPagina.text = "Qual o seu endereço?"
        tituloPagina.textColor = UIColor.asTurquoiseBlue
    }

    @IBAction func qualSeuEnderecoButtonTapped(_ sender: AnyObject) {
        prepareBadgeTres()
        prepareHeightTres()
        viewDois.alpha = 0
        viewTres.alpha = 1
        tituloPagina.text = "Agora, crie uma senha"
    }
 
    @IBAction func crieUmaSenhaButtonTapped(_ sender: AnyObject) {
        prepareNavigation()
    }

    //MARK: - Functions
    func prepareBadges() {
        badgeUm.textColor = UIColor.asWhite
        badgeUm.badgeColor = UIColor.asTurquoiseBlue
      
        badgeDeois.textColor = UIColor.asGreyish
        badgeDeois.badgeColor = UIColor.asWhiteTwo
        
        BadgeTres.textColor = UIColor.asGreyish
        badgeDeois.badgeColor =  UIColor.asWhiteTwo
    }
    
    func prepareHeight() {
        quemVoceHeightConstraint.constant = 300
        viewDois.alpha = 0
        viewTres.alpha = 0
        qualSeuEnderecoHeightConstraint.constant = 0
        crieUmaSenhaHeightConstraint.constant = 0
    }
    
    func prepareButtons() {
        quemVoceButton.titleColor = UIColor.asWhite
        quemVoceButton.backgroundColor = UIColor.asTurquoiseBlue
        
        qualSeuEnderecoButton.titleColor = UIColor.asWhite
        qualSeuEnderecoButton.backgroundColor = UIColor.asTurquoiseBlue
        
        criSuaSenhabutton.titleColor = UIColor.asWhite
        criSuaSenhabutton.backgroundColor = UIColor.asTurquoiseBlue
        
        sexoEscolha.tintColor = UIColor.asTurquoiseBlue
    }
    func prepareBadgeDois() {
        badgeDeois.textColor = UIColor.asWhite
        badgeDeois.badgeColor = UIColor.asTurquoiseBlue
    }
    
    func prepareBadgeTres() {
        BadgeTres.textColor = UIColor.asWhite
        BadgeTres.badgeColor = UIColor.asTurquoiseBlue
    }
    
   
    
    func prepareHeightDois() {
        quemVoceHeightConstraint.constant = 0
        
        qualSeuEnderecoHeightConstraint.constant = 300
        crieUmaSenhaHeightConstraint.constant = 0
    }
    
    func prepareHeightTres() {
        quemVoceHeightConstraint.constant = 0
        qualSeuEnderecoHeightConstraint.constant = 0
        crieUmaSenhaHeightConstraint.constant = 300
    }
    
    
    //MARK: - Naviation Setup
    
    func prepareNavigation() {
        
        navigationController?.pushViewController(ContaCriadaViewController(), animated: true)
    }
}
