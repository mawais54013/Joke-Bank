//
//  JokeTableViewController.swift
//  Joke Bank
//
//  Created by muhammad Awais on 9/29/19.
//  Copyright © 2019 muhammad Awais. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes = ["Chicken", "Walk into a Bar...", "Olive", "Racer"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

//    How many?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return jokes.count
    }

//    What goes in each of them?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = jokes[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedJoke = jokes[indexPath.row]
        
        performSegue(withIdentifier: "moveToJokeDefinition", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as? JokeDefinitionViewController {
            
            if let selectedJoke = sender as? String {
                jokeVC.joke = selectedJoke
            }
        }
    }
}
