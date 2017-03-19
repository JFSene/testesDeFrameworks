//
//  ContaCriadaViewController.swift
//  telaDeCadastro
//
//  Created by Joel Sene on 19/03/17.
//  Copyright © 2017 Joel Sene. All rights reserved.
//

import UIKit
import RealmSwift

class ContaCriadaViewController: UIViewController {

    //MARK: - Variaveis
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       	
        // Do any additional setup after loading the view.
    }
    func printAsCoisas() {
        let realm = 	try! Realm()
        let pacientes =	realm.objects(Paciente.self)
        
        for cadastros in pacientes {
            print("Nome Completo: ",cadastros.nome)
            print("E-mail: ",cadastros.email)
            print("Estado: ",cadastros.estado)
            print("Cidade: ",cadastros.cidade)
            print("Endereço: ",cadastros.ruaCasa)
            print("Número: ",cadastros.numeroCasa)
            print("Senha: ",cadastros.senha)
            print("Confirmar Senha: ",cadastros.confirmarSenha)

        }
    }

    @IBAction func entendiButtonTapped(_ sender: AnyObject) {
        printAsCoisas()
    }
}
