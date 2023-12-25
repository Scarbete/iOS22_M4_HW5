import UIKit
import SnapKit



class SecondVC: UIViewController {
    
    private let height = UIScreen.main.bounds.height
    
    private lazy var mainImageView: UIImageView = MakerView.makerView.createImage()
    
    private lazy var titleLabel: UILabel = MakerView.makerView.createLabel(
        fontSize: 22, fontWeight: .medium, numberOfLines: 2
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        view.backgroundColor = .orange
        configureMainImageView()
        configureTitleLabel()
    }
    
    private func configureMainImageView() {
        view.addSubview(mainImageView)
        
        mainImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(height / 2.15)
        }
    }
    
    private func configureTitleLabel() {
        view.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).offset(14)
            make.horizontalEdges.equalToSuperview().inset(16)
            make.height.equalTo(56)
        }
    }
    
    func setupDataScreen(image: String, text: String) {
        mainImageView.image = UIImage(named: image)
        titleLabel.text = text
    }
    
}
