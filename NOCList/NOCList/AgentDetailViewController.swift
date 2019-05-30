//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Kennon Keys Ward on 5/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var actualLevelLabel: UILabel!
    
    var agentInfo: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Agent"
        coverNameLabel.text = agentInfo.coverName
        realNameLabel.text = agentInfo.realName
        actualLevelLabel.text = "Access Level \(agentInfo.accessLevel)"
        
        if agentInfo.compromised != true {
            view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        } else {
            view.backgroundColor = .white
        }

    }
    


}
