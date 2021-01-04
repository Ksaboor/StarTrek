//
//  CollectionsViewController.swift
//  StarTrek
//
//  Created by Khalil Saboor on 1/2/21.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    let tableView = UITableView()
    var safeArea: UILayoutGuide!
    
    var characters = ["Link", "Zelda", "Ganondorf", "Midna"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Characters List"
        view.backgroundColor = .systemBackground
        safeArea = view.layoutMarginsGuide
        setupTableView()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
     }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return characters.count
     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
       let name = characters[indexPath.row]
        
        cell.textLabel?.text = name
        
       return cell
     }

}
