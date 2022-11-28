//
//  ViewController.swift
//  LearningTask-6.5
//
//  Created by rafael.rollo on 12/04/2022.
//

import UIKit

class AutoresViewController: UITableViewController {
    
    var autores: [Autor]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyTheme()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return autores?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AutorViewCell", for: indexPath) as? AutorViewCell else {
            fatalError("Couldn't retrieve AutorViewCell")
        }
        
        let autor = autores![indexPath.row]
        cell.setup(autor)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

