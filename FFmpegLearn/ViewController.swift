//
//  ViewController.swift
//  FFmpegLearn
//
//  Created by 赵优路 on 2020/10/2.
//  Copyright © 2020 thj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func startConvert(_ sender: Any) {
        let inputPath:String = Bundle.main.path(forResource: "video", ofType: "mp4") ?? ""
        print(inputPath);
        let docDir:String = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).first ?? ""
        let outPut = docDir + "/videoConver2.mov";
        print(outPut);
        
        FFmpegTool.sharedManager().conver(withInputPath: inputPath, outputPath: outPut, processBlock: { (process) in
            print(process);
        }) { (err) in
            if err != nil {
                print(err)
            }
        }
        
    }
    
}

