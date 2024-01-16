//
//  DatadisplayViewController.swift
//  Pods
//
//  Created by Apple on 25/08/23.
//

import UIKit
import Alamofire
import SwiftyJSON

class DetailsViewController: UIViewController {

    @IBOutlet weak var lblTodoid: UILabel!
    @IBOutlet weak var lblTodotitle: UILabel!
    @IBOutlet weak var lblTododetails: UILabel!
    
    var todo_id = ""
    var todo_title = ""
    var todo_details = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        lblTodoid.text = todo_id
        lblTodotitle.text = todo_title
        lblTododetails.text = todo_details
    }
    

}
