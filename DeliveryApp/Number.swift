//
//  Number.swift
//  DeliveryApp
//
//  Created by Azamat Sarinzhiev on 6/1/22.
//

import Foundation
import UIKit
import SnapKit

class ViewController2: UIViewController {
    private var backgroundNumberPic = UIImageView()
    private var label = UILabel()
    private var label1 = UILabel()
    private var label2 = UILabel()
    private var flag = UIImageView()
    private var textField = UITextField()
    private var line = UIView()
    private var button = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(backgroundNumberPic)
        backgroundNumberPic.image = UIImage(named: "Rectangle 17")
        backgroundNumberPic.snp.makeConstraints { make in
            make.leading.top.trailing.equalToSuperview()
        }
        backgroundNumberPic.addSubview(label)
        label.text = "Enter your mobile number"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.centerY.equalToSuperview().offset(20)
        }
        view.addSubview(label2)
        label2.text = "Mobile Number"
        label2.textColor = .gray
        label2.alpha = 0.9
        label2.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.top.equalTo(label.snp.bottom).offset(40)
        }
        view.addSubview(flag)
        flag.image = UIImage(named: "Flag")
        flag.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(25)
            make.top.equalTo(label2.snp.bottom).offset(10)
        }
        view.addSubview(label1)
        label1.text = "+880"
        label1.textColor = .black
        label1.snp.makeConstraints { make in
            make.leading.equalTo(flag.snp.trailing).offset(12)
            make.width.equalTo(45)
            make.top.equalTo(label2.snp.bottom).offset(10)
        }
        view.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.leading.equalTo(label1.snp.trailing)
            make.width.height.equalTo(100)
            make.top.equalTo(label2.snp.bottom).offset(-30)
        }
        view.addSubview(line)
        line.backgroundColor = .black
        line.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.leading.trailing.equalToSuperview().inset(25)
            make.top.equalTo(textField.snp.bottom).offset(-25)
        }
        view.addSubview(button)
        button.setTitle(">", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 33
        button.backgroundColor = UIColor(red: 108/255, green: 175/255, blue: 122/255, alpha: 1)
        button.addTarget(nil, action: #selector(buttonPressed), for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview().offset(-80)
            make.height.width.equalTo(67)
        }
}
    @objc func buttonPressed(sender: UIButton) {
        if sender.titleLabel?.text == ">" {
            navigationController?.pushViewController(ViewController3(), animated: true)
        }
}
}
