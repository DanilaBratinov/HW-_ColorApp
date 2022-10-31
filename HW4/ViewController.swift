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
        
        setupRedSlider()
        setupBlueSlider()
        setupGreenSlider()
    }
    
    //MARK: - IB Action
    @IBAction func slidersAction(_ sender: UISlider) {
        colorView.backgroundColor = UIColor.init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1)
        
        switch sender {
        case redSlider:
            redMeaning.text = string(from: redSlider)
        case greenSlider:
            greenMeaning.text = string(from: greenSlider)
        default:
            blueMeaning.text = string(from: blueSlider)
        }
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
    
    private func setupRedSlider() {
        redSlider.value = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redMeaning:
                redMeaning.text = string(from: redSlider)
            case greenMeaning:
                greenMeaning.text = string(from: greenSlider)
            default:
                blueMeaning.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
        
    }
}
