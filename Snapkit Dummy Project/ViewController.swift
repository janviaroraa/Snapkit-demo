//
//  ViewController.swift
//  Snapkit Dummy Project
//
//  Created by Powerplay on 26/12/22.
//




import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var redSquare = UIView(frame: .zero)
    lazy var greenSquare = UIView(frame: .zero)
    lazy var blueSquare = UIView(frame: .zero)
    lazy var yellowSquare = UIView(frame: .zero)
    lazy var orangeSquare = UIView(frame: .zero)
    let boxWidth: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        
        redSquare.backgroundColor = .red
        greenSquare.backgroundColor = .green
        blueSquare.backgroundColor = .blue
        yellowSquare.backgroundColor = .yellow
        orangeSquare.backgroundColor = .orange
        
        [redSquare, greenSquare, blueSquare, yellowSquare, orangeSquare].forEach { box in
            view.addSubview(box)
        }
        // top-left
        redSquare.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview()
        }
        // top-right
        greenSquare.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.trailing.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
        }
        // bottom-left
        blueSquare.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.leading.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        // bottom-right
        yellowSquare.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        // center
        orangeSquare.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.center.equalToSuperview()
        }
        
        //Updation of frames
        greenSquare.snp.updateConstraints { make in
            make.top.equalToSuperview().offset(40)
        }
        
        //padding - offset and inset usage
        redSquare.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(40)
            make.leading.equalToSuperview().offset(40)
        }
        
        redSquare.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(40)
            make.leading.equalToSuperview().offset(40)
        }
        
        view.layoutIfNeeded()
        
        //Animating red square
        UIView.animate(withDuration: 0.5, delay: 1) {
            self.redSquare.snp.updateConstraints { make in
                make.top.equalToSuperview().offset(200)
            }
            self.view.layoutIfNeeded()
        }
        
    }
}
