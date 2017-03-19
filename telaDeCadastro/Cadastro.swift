//
//  Cadastro.swift
//  telaDeCadastro
//
//  Created by Joel Sene on 19/03/17.
//  Copyright © 2017 Joel Sene. All rights reserved.
//

import UIKit
import RealmSwift

class Paciente: Object {
    dynamic var nome: String!
    dynamic var email: String!
    dynamic var estado: String!
    dynamic var cidade : String!
    dynamic var numeroCasa : String!
    dynamic var ruaCasa: String!
    dynamic var senha: String!
    dynamic var confirmarSenha: String!
    
    
}
