//
//  ViewController.swift
//  Chapter03-NavigationBar
//
//  Created by YangJeongMu on 8/23/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 내비게이션 타이틀 초기화
        self.initTitle()
    }
    
    func initTitle() {
        // 1. 내비게이션 타이틀 레이블 객체
        let nTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 400))
                             
        // 2. 속성 설정
        nTitle.numberOfLines = 2 // 두 줄까지 표시되도록 설정
        nTitle.textAlignment = .center // 중앙 정렬
        nTitle.font = UIFont.systemFont(ofSize: 15) // 폰트 크기
        nTitle.text = "58개 숙소 \n 1박(1월 10일 ~ 1월 11일)"
        
        // 3. 내비게이션 타이틀에 입력
        self.navigationItem.titleView = nTitle
    }
}

