//
//  ViewController.swift
//  Dicionario Emoji
//
//  Created by wellington neto on 10/12/16.
//  Copyright © 2016 wneto. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var emojiTable: UITableView!

    var listaEmoji : [Emoji] = []
    

    
    // retorna numero de linhas da tabela
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaEmoji.count
    }
    
    // exibicao de cada item na table
    // indexpath é o parametro responsavel por acessar a table
    // retorna uma tableviewcell
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = listaEmoji[indexPath.row].nome
        
        print(listaEmoji[indexPath.row].nome)
        
        return cell
    }
    
    // metodo que passa o item selecionada para proxima view
    // necessário chamar o método performSegue que é responsável pelo trafego entre as views
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        performSegue(withIdentifier: "segueExibeEmoji", sender: listaEmoji[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
        let mostraEmojiVC = segue.destination as! mostraEmojiViewController
        
        mostraEmojiVC.emoji = sender as! Emoji
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTable.dataSource = self
        emojiTable.delegate = self
        
        listaEmoji = carregaListaEmoji()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func carregaListaEmoji() -> [Emoji] {
        
        let e1 = Emoji()
            e1.setEmoji(nomeEmoji: "😜", catEmoji: "Smiley", criacaoEmoji: 2010, definicaoEmoji: "Carinha Trolando")
        let e2 = Emoji()
            e2.setEmoji(nomeEmoji: "😎", catEmoji: "Smiley", criacaoEmoji: 2011, definicaoEmoji: "Carinha de Óculos Escuros")
        let e3 = Emoji()
            e3.setEmoji(nomeEmoji: "🐷", catEmoji: "Animal", criacaoEmoji: 2012, definicaoEmoji: "Bacon")
        let e4 = Emoji()
            e4.setEmoji(nomeEmoji: "😈", catEmoji: "Smiley", criacaoEmoji: 2013, definicaoEmoji: "Capetinha")
        let e5 = Emoji()
            e5.setEmoji(nomeEmoji: "👠", catEmoji: "Coisas", criacaoEmoji: 2010, definicaoEmoji: "Sapato de salto alto")
        let e6 = Emoji()
            e6.setEmoji(nomeEmoji: "💩", catEmoji: "Smiley", criacaoEmoji: 2010, definicaoEmoji: "Zé Bostinha")
        
        return [e1, e2, e3, e4, e5, e6]
    }

}

