//
//  ViewControllerOne.swift
//  DeliveryApp
//
//  Created by Azamat Sarinzhiev on 5/1/22.
//

import Foundation
import SnapKit
import UIKit

class ViewController1: UIViewController {
    private var backgroundSingInPic = UIImageView()
    private var label = UILabel()
    private var flag = UIImageView()
    private var label1 = UILabel()
    private var textField = UITextField()
    private var line = UIView()
    private var label2 = UILabel()
    private var button = UIButton(type: .system)
    private var button1 = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(backgroundSingInPic)
        backgroundSingInPic.image = UIImage(named: "BackgroundSingIn")
        backgroundSingInPic.snp.makeConstraints { make in
            make.leading.top.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.35)
        }
        view.addSubview(label)
        label.numberOfLines = 0
        label.text = "Get your groceries \n with Nectar"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.centerY.equalToSuperview()
        }
        view.addSubview(flag)
        flag.image = UIImage(named: "Flag")
        flag.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(30)
            make.top.equalTo(label.snp.bottom).offset(30)
        }
        view.addSubview(label1)
        label1.text = "+880"
        label1.textColor = .black
        label1.snp.makeConstraints { make in
            make.leading.equalTo(flag.snp.trailing).offset(12)
            make.width.equalTo(45)
            make.top.equalTo(label.snp.bottom).offset(32)
        }
        view.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.leading.equalTo(label1.snp.trailing)
            make.width.height.equalTo(100)
            make.top.equalTo(label.snp.bottom).offset(-8)
        }
        view.addSubview(line)
        line.backgroundColor = .black
        line.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.leading.trailing.equalToSuperview().inset(25)
            make.top.equalTo(textField.snp.bottom).offset(-25)
        }
        view.addSubview(label2)
        label2.text = "or connect with social media"
        label2.textColor = .gray
        label2.alpha = 0.9
        label2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(line.snp.bottom).offset(40)
        }
        view.addSubview(button)
        button.setTitle("Continue with Google", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.backgroundColor = UIColor(red: 94/255, green: 130/255, blue: 229/255, alpha: 1)
        button.addTarget(nil, action: #selector(buttonPressed), for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().inset(30)
            make.top.equalTo(label2.snp.bottom).offset(38)
            make.height.equalTo(67)
        }
        view.addSubview(button1)
        button1.setTitle("Continue with Facebook", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.layer.cornerRadius = 15
        button1.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 167/255, alpha: 1)
        button1.addTarget(nil, action: #selector(buttonPressed), for: .touchUpInside)
        button1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().inset(30)
            make.top.equalTo(button.snp.bottom).offset(20)
            make.height.equalTo(67)
        }
}
    @objc func buttonPressed(sender: UIButton) {
        if sender.titleLabel?.text == "Continue with Google" {
            navigationController?.pushViewController(ViewController2(), animated: true)
        } else if sender.titleLabel?.text == "Continue with Facebook" {
            navigationController?.pushViewController(ViewController2(), animated: true)
}
}
}
