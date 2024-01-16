
import UIKit
import Alamofire
import SwiftyJSON
import TextFieldEffects

class AddViewController: UIViewController {
    
    @IBOutlet weak var TxtTodoTitle: UITextField!
    
    @IBOutlet weak var TxtTodoDetails: UITextField!
    
    @IBAction func BtnTodoAdd(_ sender: Any) {
        if validate{
            API_TodoAdd()
          
         }
        
        
        TxtTodoTitle.text = ""
        TxtTodoDetails.text = ""
    }
    
    @IBAction func BtnTodoList(_ sender: Any) {
        let main = storyboard?.instantiateViewController(identifier: "TableViewController") as! TableViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    var validate:Bool{
        if TxtTodoTitle.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty{
            let alert = UIAlertController(title: "Message", message: "Please enter title", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
            return false
        }
        if TxtTodoDetails.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty{
            let alert = UIAlertController(title: "Message", message: "Please enter details", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
            return false
        }
      /*  if(TxtTodoTitle != nil) && (TxtTodoDetails != nil){
            let alert = UIAlertController(title: "Message", message: "Your Data Succesfully Added", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default , handler: nil)
            alert.addAction(ok)
            self.present(alert,animated: true,completion: nil)
            return false
        }*/
        return true
    }
    func API_TodoAdd(){
        let url = "https://jigar.in/myapi/todo/api/todo-add-api.php"
        
        let param:Parameters = ["todo_title":TxtTodoTitle.text!,
                                "todo_details":TxtTodoDetails.text!]
        AF.request(url, method: .post, parameters: param).responseJSON{(response) in
            switch response.result{
            case .success:
                let responseData = JSON(response.data! )
                print(responseData)
                let flag = responseData["flag"].stringValue
                let message = responseData["message"].stringValue
               if flag == "1"{
                    let alert = UIAlertController(title: "message", message: message, preferredStyle: .alert)
                    let ok = UIAlertAction(title: "ok", style: .default , handler: nil)
                    alert.addAction(ok)
                    self.present(alert,animated: true,completion: nil)
                    
                }else{
                    let alert = UIAlertController(title: "message", message: message, preferredStyle: .alert)
                    let ok = UIAlertAction(title: "ok", style: .default , handler: nil)
                    alert.addAction(ok)
                    self.present(alert,animated: true,completion: nil)
                }
                break
            case .failure:
                break
                
            }
        }
        
    }
}
