//
//  ViewController.swift
//  xylophone
//
//  Created by Sakthivel Balakrishnan on 24/08/18.
//  Copyright © 2018 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController,AVAudioPlayerDelegate {
    var audioPlayer : AVAudioPlayer!
    @objc func tone(sender:UIButton!){
        var url:URL!
        if(sender==tune1){
            url=Bundle.main.url(forResource: "note1", withExtension: "wav")
        }
        if(sender==tune2){
            url=Bundle.main.url(forResource: "note2", withExtension: "wav")
        }
        if(sender==tune3){
            url=Bundle.main.url(forResource: "note3", withExtension: "wav")
        }
        if(sender==tune4){
            url=Bundle.main.url(forResource: "note4", withExtension: "wav")
        }
        if(sender==tune5){
            url=Bundle.main.url(forResource: "note5", withExtension: "wav")
        }
        if(sender==tune6){
            url=Bundle.main.url(forResource: "note6", withExtension: "wav")
        }
        if(sender==tune7){
            url=Bundle.main.url(forResource: "note7", withExtension: "wav")
        }
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
    let tune1:UIButton={
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.backgroundColor=UIColor.red
        button.addTarget(self, action: #selector(tone), for: .touchUpInside)
        return button
    }()
    let tune2:UIButton={
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.backgroundColor=UIColor.orange
        button.addTarget(self, action: #selector(tone), for: .touchUpInside)
        return button
    }()

    let tune3:UIButton={
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.backgroundColor=UIColor.yellow
        button.addTarget(self, action: #selector(tone), for: .touchUpInside)
        return button
    }()

    let tune4:UIButton={
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.backgroundColor=UIColor.green
        button.addTarget(self, action: #selector(tone), for: .touchUpInside)
        return button
    }()
    let tune5:UIButton={
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.backgroundColor=UIColor.gray
        button.addTarget(self, action: #selector(tone), for: .touchUpInside)
        return button
    }()
    let tune6:UIButton={
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.backgroundColor=UIColor.blue
        button.addTarget(self, action: #selector(tone), for: .touchUpInside)
        return button
    }()
    let tune7:UIButton={
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.backgroundColor=UIColor.lightGray
        button.addTarget(self, action: #selector(tone), for: .touchUpInside)
        return button
    }()
    func setButtons(){
        let stack=UIStackView(arrangedSubviews: [tune1,tune2,tune3,tune4,tune5,tune6,tune7])
        stack.translatesAutoresizingMaskIntoConstraints=false
        stack.axis = .vertical
        stack.spacing = view.frame.height/100
        stack.distribution = .fillEqually
        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stack.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            stack.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)
            ])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor=UIColor.white
        setButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

