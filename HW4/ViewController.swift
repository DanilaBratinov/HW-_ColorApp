import UIKit

class ViewController: UIViewController {
    
    
    //MARK: - IB Outlet
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redMeaning: UILabel!
    @IBOutlet var greenMeaning: UILabel!
    @IBOutlet var blueMeaning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMeaning()
        setupSliders()
        slidersAction()
    }
    
    //MARK: - IB Action
    
    @IBAction func slidersAction() {
        colorView.backgroundColor = UIColor.init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1
        )
        
        redMeaning.text = String(format: "%.2f", redSlider.value)
        greenMeaning.text = String(format: "%.2f", greenSlider.value)
        blueMeaning.text = String(format: "%.2f", blueSlider.value)
    }
    
    
    
    //MARK: - Private method
    override func viewWillLayoutSubviews() {
        colorView.layer.cornerRadius = colorView.frame.width / 15
    }
    
    private func setupMeaning() {
        redMeaning.text = "0.00"
        greenMeaning.text = "0.00"
        blueMeaning.text = "0.00"
    }
    
    private func setupSliders() {
        func setupRedSlider() {
            redSlider.value = 1
            redSlider.minimumTrackTintColor = .red
            redSlider.minimumValue = 0
            redSlider.maximumValue = 1
        }
        
        func setupGreenSlider() {
            greenSlider.value = 1
            greenSlider.minimumTrackTintColor = .green
            greenSlider.minimumValue = 0
            redSlider.maximumValue = 1
        }
        
        func setupBlueSlider() {
            blueSlider.value = 1
            blueSlider.minimumTrackTintColor = .blue
            blueSlider.minimumValue = 0
            blueSlider.maximumValue = 1
        }
    }
}
