//
//  mostraEmojiViewController.swift
//  Dicionario Emoji
//
//  Created by wellington neto on 10/12/16.
//  Copyright © 2016 wneto. All rights reserved.
//

import UIKit

class mostraEmojiViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet var labelEmoji: UILabel!
    
    @IBOutlet var labelDefinicao: UILabel!
    
    @IBOutlet var labelCategoria: UILabel!
    
    @IBOutlet var labelCriacao: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelEmoji.text = emoji.nome
        labelDefinicao.text = emoji.definicao
        labelCategoria.text = "Categoria: \(emoji.categoria)"
        labelCriacao.text = "Criado: \(emoji.criacao)"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
