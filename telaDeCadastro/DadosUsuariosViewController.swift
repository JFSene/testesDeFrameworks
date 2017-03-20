//
//  DadosUsuariosViewController.swift
//  telaDeCadastro
//
//  Created by Joel Sene on 19/03/17.
//  Copyright © 2017 Joel Sene. All rights reserved.
//

import UIKit
import RealmSwift

class DadosUsuariosViewController: UIViewController {
    
    
    //MARK: Variaveis
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var emailLAbel: UILabel!
    @IBOutlet weak var cidadeLAbel: UILabel!
    @IBOutlet weak var estadoLabel: UILabel!
    @IBOutlet weak var ruaLAbel: UILabel!
    @IBOutlet weak var numeroLabel: UILabel!
    @IBOutlet weak var senhaLabel: UILabel!
    @IBOutlet weak var confiSenhaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLAbels()
        // Do any additional setup after loading the view.
    }
    
    func prepareLAbels() {
        let realm = 	try! Realm()
        let pacientes =	realm.objects(Paciente.self)
        
        for cadastros in pacientes {
            nomeLabel.text = cadastros.nome
            emailLAbel.text = cadastros.email
            estadoLabel.text = cadastros.estado
            cidadeLAbel.text = cadastros.cidade
            ruaLAbel.text = cadastros.ruaCasa
            numeroLabel.text = cadastros.numeroCasa
            senhaLabel.text = cadastros.senha
            confiSenhaLabel.text = cadastros.confirmarSenha
            
        }
    }
    
}
