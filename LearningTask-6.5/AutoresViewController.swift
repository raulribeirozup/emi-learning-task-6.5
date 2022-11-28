//
//  ViewController.swift
//  LearningTask-6.5
//
//  Created by rafael.rollo on 12/04/2022.
//

import UIKit

class AutoresViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var API: AutorAPI?
    var autores: [Autor] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        applyTheme()
        loadSessions()
    }
    
    func loadSessions() {
        guard let API = API else { return }
        autores = API.listaTodos()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return autores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AutorViewCell", for: indexPath) as? AutorViewCell else {
            fatalError("Couldn't retrieve AutorViewCell")
        }
        
        let autor = autores[indexPath.row]
        cell.setup(autor)
        
        return cell
    }

}

extension AutoresViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

