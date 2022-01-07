//
//  ViewController.swift
//  DeliveryApp
//
//  Created by Azamat Sarinzhiev on 5/1/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private var backgroundOnePic = UIImageView()
    private var carrotPic = UIImageView()
    private var label = UILabel()
    private var label1 = UILabel()
    private var button = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        view.addSubview(backgroundOnePic)
        backgroundOnePic.image = UIImage(named: "backgroundOne")
        backgroundOnePic.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        view.addSubview(carrotPic)
        carrotPic.image = UIImage(named: "Carrot")
        carrotPic.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        view.addSubview(label)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Welcome \n to our store"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(carrotPic.snp.bottom).offset(20)
        }
        view.addSubview(label1)
        label1.text = "Get your groceries in as fast as one hour"
        label1.textColor = .gray
        label1.alpha = 0.9
        label1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(label.snp.bottom).offset(20)
        }
        view.addSubview(button)
        button.setTitle("Get Started", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.backgroundColor = UIColor(red: 108/255, green: 175/255, blue: 122/255, alpha: 1)
        button.addTarget(nil, action: #selector(buttonPressed), for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().inset(30)
            make.top.equalTo(label1.snp.bottom).offset(60)
            make.height.equalTo(67)
        }
        
    }
    @objc func buttonPressed(sender: UIButton) {
        if sender.titleLabel?.text == "Get Started" {
            navigationController?.pushViewController(ViewController1(), animated: true)
        }
    }

}

