//
//  ViewController.swift
//  Chapter03-Alert
//
//  Created by YangJeongMu on 8/23/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 기본 알림창 버튼 생성
        let defaultAlertBtn = UIButton(type: .system)
        defaultAlertBtn.frame = CGRect(x: 0, y: 100, width: 100, height: 30)
        defaultAlertBtn.center.x = self.view.frame.width / 2
        defaultAlertBtn.setTitle("기본 알림창", for: .normal)
        defaultAlertBtn.addTarget(self, action: #selector(defaultAlert(_:)), for: .touchUpInside)
        self.view.addSubview(defaultAlertBtn)
    }
    @objc func defaultAlert(_ sender:Any) {
        // 1. 알림창을 정의한다.
        let alert = UIAlertController(title: "알림창", message: "기본 메시지가 들어가는 곳", preferredStyle: .alert)
        
        // 2. 버튼을 정의한다.
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        // 3. 버튼을 알림창에 추가한다.
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        // 4. 알림창을 화면에 표시힌다.
        self.present(alert, animated: false)
        
        
    }


}

