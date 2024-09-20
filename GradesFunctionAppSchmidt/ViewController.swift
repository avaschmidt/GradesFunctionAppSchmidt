import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var tupleOutlet: UILabel!
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
                    tupleOutlet.text = returnTuple(pointsEarned: ear, pointsPossible: pos)
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
        else{
            return "A"
        }
        
    }
    
    func returnTuple(pointsEarned pe: Double, pointsPossible pp: Double)->String{
        var p = pe/pp
        var percent : String
        if p < 0.6{
            percent = "50% or less"
        }
        else if p < 0.7{
            percent = "60% to 69.9%"
        }
        else if p < 0.8{
            percent = "70% to 79.9%"
        }
        else if p < 0.9{
            percent = "80% to 89.9%"
        }
        else{
            percent = "90% and above!"
        }
        var gradeInfo = ("Score: \(p) Percent: \(percent)",letterGrade(percentage: p))
        return "\(gradeInfo)"
    }
    
    

}

