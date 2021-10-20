import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var adviceL: UILabel!

    var bmiScore: String?
    var advice: String?
    var color:UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        score.text = bmiScore
        adviceL.text = advice
        view.backgroundColor = color
    }


    @IBAction func pressedButton(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }

}
