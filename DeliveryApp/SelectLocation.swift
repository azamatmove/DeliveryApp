//
//  SelectLocation.swift
//  DeliveryApp
//
//  Created by Azamat Sarinzhiev on 6/1/22.
//

import Foundation
import UIKit
import SnapKit

class ViewController4: UIViewController {
    private var backgroundNumberPic = UIImageView()
    private var location = UIImageView()
    private var location1 = UIImageView()
    private var label = UILabel()
    private var label1 = UILabel()
    private var textField = UITextField()
    private var label2 = UILabel()
    private var line = UIView()
    private var textField1 = UITextField()
    private var label3 = UILabel()
    private var line1 = UIView()
    private var button = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(backgroundNumberPic)
        backgroundNumberPic.image = UIImage(named: "Rectangle 17")
        backgroundNumberPic.snp.makeConstraints { make in
            make.leading.top.trailing.equalToSuperview()
        }
        backgroundNumberPic.addSubview(location)
        location.image = UIImage(named: "Location")
        location.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(204)
        }
        backgroundNumberPic.addSubview(location1)
        location1.image = UIImage(named: "Location1")
        location1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(119)
        }
        view.addSubview(label)
        label.text = "Select Your Location"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.snp.makeConstraints { make in
            make.top.equalTo(location.snp.bottom).offset(40)
            make.centerX.equalToSuperview()
        }
        view.addSubview(label1)
        label1.numberOfLines = 0
        label1.textAlignment = .center
        label1.text = "Switch on your location to stay in tune with \n what's happening in your area"
        label1.textColor = .gray
        label1.alpha = 0.9
        label1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(label.snp.bottom).offset(15)
        }
        view.addSubview(textField)
        textField.placeholder = "Type Your Zone"
        textField.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(25)
            make.height.equalTo(100)
            make.width.equalTo(200)
            make.top.equalTo(label1.snp.bottom).offset(130)
        }
        view.addSubview(label2)
        label2.text = "Your Zone"
        label2.textColor = .gray
        label2.alpha = 0.9
        label2.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(25)
            make.height.width.equalTo(100)
            make.bottom.equalTo(textField.snp.top).offset(60)

        }
        view.addSubview(line)
        line.backgroundColor = .black
        line.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.leading.trailing.equalToSuperview().inset(25)
            make.top.equalTo(textField.snp.bottom).offset(-25)
        }
        view.addSubview(textField1)
        textField1.placeholder = "Type Your Area"
        textField1.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(25)
            make.height.equalTo(100)
            make.width.equalTo(200)
            make.top.equalTo(textField.snp.bottom)
        }
        view.addSubview(label3)
        label3.text = "Your Zone"
        label3.textColor = .gray
        label3.alpha = 0.9
        label3.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(25)
            make.height.width.equalTo(100)
            make.bottom.equalTo(textField1.snp.top).offset(60)

        }
        view.addSubview(line1)
        line1.backgroundColor = .black
        line1.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.leading.trailing.equalToSuperview().inset(25)
            make.top.equalTo(textField1.snp.bottom).offset(-25)
        }
        view.addSubview(button)
        button.setTitle("Submit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.backgroundColor = UIColor(red: 108/255, green: 175/255, blue: 122/255, alpha: 1)
        button.addTarget(nil, action: #selector(buttonPressed), for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().inset(30)
            make.bottom.equalToSuperview().offset(-80)
            make.height.equalTo(67)
        }
}
    @objc func buttonPressed(sender: UIButton) {
        if sender.titleLabel?.text == "Submit" {
            navigationController?.pushViewController(ViewController4(), animated: true)
        }
}
}
