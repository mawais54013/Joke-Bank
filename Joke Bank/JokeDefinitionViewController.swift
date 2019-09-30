//
//  JokeDefinitionViewController.swift
//  Joke Bank
//
//  Created by muhammad Awais on 9/29/19.
//  Copyright © 2019 muhammad Awais. All rights reserved.
//

import UIKit

class JokeDefinitionViewController: UIViewController {
    
    var joke = ""
    @IBOutlet weak var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = joke
        
//        "Chicken", "Walk into a Bar...", "Olive", "Racer"
        if joke == "Chicken"
        {
            jokeLabel.text = "Q: Why did the chicken cross the road?\n\nA: To get to the other side"
        }
        else if joke == "Walk into a Bar..."
        {
            jokeLabel.text = "A horse walks into a bar and the bartender says 'Why the long face'"
        }
        else if joke == "Olive"
        {
            jokeLabel.text = "Two olives are on an olive tree branck playing around. One of the olives bumps the other and knocks him off the branch. His friend wobbles at the edge and shouts down, 'Are you ok!'\n\nA: Hi friend on the squeaks out, 'Don't worry..olive...'"
        }
        else if joke == "Racer"
        {
            jokeLabel.text = "Q: What did the hot dog say when he crossed the finish line?\n\nA: I'm the weiner!"
        }
    }

}
