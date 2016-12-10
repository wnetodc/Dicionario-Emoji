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
    
    var emojiList = ["😜","😍","🤑","😴","😎","🤘🏿"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiList.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell()
        
        print(indexPath.row)
        cell.textLabel?.text = emojiList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueExibeEmoji", sender: emojiList[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTable.dataSource = self
        emojiTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

