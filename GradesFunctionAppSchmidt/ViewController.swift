import UIKit
//adding comment to commit and push (delete later!)
class ViewController: UIViewController {
    @IBOutlet weak var displayOutlet: UILabel!
    @IBOutlet weak var possibleOutlet: UITextField!
    @IBOutlet weak var earnedOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func submitAction(_ sender: UIButton) {
        if possibleOutlet.text != nil && earnedOutlet.text != nil {
            
            if let check1 = Double(possibleOutlet.text!){
                if let check2 = Double(earnedOutlet.text!){
                    var pos = check1
                    var ear = check2
                    displayOutlet.text = "\(passOrFail(pointsEarned: ear, pointsPossible: pos)) ~ Grade: \(letterGrade(percentage: ear/pos))"
                }
            }
            else{
                displayOutlet.text = errorMessage()
            }
            
        }
        else{
            displayOutlet.text = errorMessage()
        }
        
    }
    
 
    func passOrFail(pointsEarned pe: Double, pointsPossible pp: Double)-> String{
        
        var score = pe/pp
        if  score >= 0.60{
            return "You Passed!"
        }
        else{
            return "You Failed!"
        }
      
    }
    
    func errorMessage()->String{
        var err = "Error"
        return err
    }
    
    func letterGrade(percentage p: Double)->String{
        if p < 0.6{
            return "F"
        }
        else if p < 0.7{
            return "D"
        }
        else if p < 0.8{
            return "C"
        }
        else if p < 0.9{
            return "B"
        }
        else if p < 1.0 || p == 1.0{
            return "A"
        }
        else{
            return errorMessage()
        }
        
    }
    
    

}

