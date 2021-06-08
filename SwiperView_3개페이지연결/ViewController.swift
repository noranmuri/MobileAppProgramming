//
//  ViewController.swift
//  App
//
//  Created by ggamangmuri on 2021/05/26.
//

import SwiftUI

class ViewController: UIViewController {
    
    //  컨텐츠 뷰컨트롤러들이 사용할 배경색 어레이입니다
    private let backgroundColors: [UIColor] = [.green, .blue, .brown, .yellow, .lightGray]

    //  컨텐츠 뷰컨들이 올라갈 페이지 뷰컨이에요
    //  transitionStyle은 화면 전환 애니메이션
    //  navigationOrientation은 상하, 좌우 어디로 넘길건지
    private let pageViewController = UIPageViewController(transitionStyle: .pageCurl,
                                                          navigationOrientation: .horizontal)
    
    //  인디케이터로 사용할 페이지 컨트롤입니다
    private let pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPageIndicatorTintColor = .black   // 현재 페이지 인디케이터 색
        pc.pageIndicatorTintColor = .magenta        // 나머지 페이지 인디케이터 색
        pc.translatesAutoresizingMaskIntoConstraints = false
        return pc
    }()
    
    //  컨텐츠 뷰컨을 만들어주는 메서드를 따로 만들어줬습니다
        //  그냥 뷰컨 하나를 생성하고 태그에 인덱스 번호를 넣어주고 배경색만 바꿔줬습니다
        private func instantiateViewController(index: Int, color: UIColor) -> UIViewController {
            let vc = UIViewController()
            vc.view.tag = index
            vc.view.backgroundColor = color
            return vc
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            setPageViewController()
            setPageControl()
        }
        
        private func setPageViewController() {
            //  데이터소스와 델리게이트로 부모 뷰컨을 설정해줍니다
            pageViewController.dataSource = self
            pageViewController.delegate = self
            
            //  처음에 보여줄 컨텐츠 설정
            let firstVC = instantiateViewController(index: 0, color: backgroundColors[0])
            pageViewController.setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
            
            //  페이지 뷰컨을 부모 뷰컨에 띄워줍니다
            addChild(pageViewController)
            view.addSubview(pageViewController.view)
            pageViewController.didMove(toParent: self)
        }
        
        private func setPageControl() {
            //  페이지 컨트롤에 전체 페이지 수를 설정해줍시다
            pageControl.numberOfPages = backgroundColors.count
            
            //  그리고 페이지 컨트롤을 화면에 띄워주면 됩니다
            view.addSubview(pageControl)
            NSLayoutConstraint.activate([
                pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
                pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
        }
}
