//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Nano Degree on 18/01/2017.
//  Copyright © 2017 Swift Pakistan. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate , UITableViewDataSource{
    
    @IBOutlet weak var tableView : UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier:"PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRocks: partyRock)
            
            return cell
        } else {
            
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}
