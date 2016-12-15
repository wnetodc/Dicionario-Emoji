//
//  Emoji.swift
//  Dicionario Emoji
//
//  Created by wellington neto on 13/12/16.
//  Copyright © 2016 wneto. All rights reserved.
//

import Foundation

class Emoji {
    
    var nome : String = ""
    var categoria : String = ""
    var criacao : Int = 0
    var definicao : String = ""
    
    func setEmoji(nomeEmoji: String, catEmoji: String, criacaoEmoji: Int, definicaoEmoji: String) {
        nome = nomeEmoji
        categoria = catEmoji
        criacao = criacaoEmoji
        definicao = definicaoEmoji
        
    }
    
    func getEmoji() -> Emoji {
        return self
    }
    
}
