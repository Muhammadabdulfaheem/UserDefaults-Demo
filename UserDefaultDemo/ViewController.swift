//
//  ViewController.swift
//  UserDefaultDemo
//
//  Created by MAC on 28/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var name: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        var array: [Int] = [1,3,410]
        let userDefault = UserDefaults.standard
        userDefault.set(array, forKey: "array")
        if let fetchArray = userDefault.array(forKey: "array") as? [String]{
            fetchArray.map{
                print($0)
            }
        }
        
        /*      ARRAY
        var array : [String] = ["One", "Two", "Three"]
        let userDefault = UserDefaults.standard
        userDefault.set(array, forKey: "array")
        if let fetchArray = userDefault.array(forKey: "array") as? [String] {
            fetchArray.map{
                print($0)
            }
        }
 
    */
      
        
        /* GETTING THE current Date
         
        let userDefault = UserDefaults.standard
        let dformateter = DateFormatter()
        dformateter.dateFormat = "dd/MM/yyy HH:mm"
        let str = dformateter.string(from: Date())
        userDefault.setValue(str, forKey: "getDate")
        
        if let currentDate = userDefault.string(forKey: "getDate") {
            print(currentDate)
        }
        */
        
        
        
        /* DIctionary
        
        let userDefault = UserDefaults.standard
        let countries = ["name":"faheem","job":"ios"]
        
        userDefault.setValue(countries, forKey: "getRecord")
        
        if let getStudentRecord = userDefault.dictionary(forKey: "getRecord") as? [String:String]{
            print("studnet Name:\(getStudentRecord["name"] as? String) and job : \(getStudentRecord["job"] as? String)")
        }
        
    */
        // Do any additional setup after loading the view.
        
        
//        guard let data =  UserDefaults.standard.string(forKey: "myName") else {
//            return
//        }
//        if data != nil {
//            lblName.text = data
//            name.text = data
//        }
//        else{
//            lblName.text = "enter the data please"
//        }
    }

    
    @IBAction func submit(_ sender: UIButton) {
        
        //lblName.text = name.text
        //UserDefaults.standard.set(name.text, forKey: "myName") //set the values heres
        
        
        guard let detailsController = self.storyboard?.instantiateViewController(withIdentifier: String(describing: DetailsViewController.self)) as? DetailsViewController else {return}
        
        /*   ///:- MARK for storing the name
        UserDefaults.standard.setValue("faheen", forKey: "nam")
        let data = UserDefaults.standard.string(forKey: "nam")
        detailsController.data = data
 */
        
    
        
        let arr = ["Kaleem","saleem","Rehamn"]
        let userDefault = UserDefaults.standard
        userDefault.setValue(arr[1], forKey: "datas")
        
        if let getResult = userDefault.array(forKey: "datas") as? [String] {
            detailsController.data = getResult
        }
        
        //let data = UserDefaults.standard.stringArray(forKey: "getArr") ?? [String]()
        //detailsController.data = data
        self.navigationController?.pushViewController(detailsController, animated: true)
    }
    
    
}

