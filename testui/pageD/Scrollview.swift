//
//  Scrollview.swift
//  testui
//
//  Created by user on 6/7/2021.
//

import UIKit
import SnapKit

class Scrollview: UIViewController {

    let scrollView = UIScrollView()
       let contentView = UIView()
       
       override func viewDidLoad() {
           super.viewDidLoad()
           view.backgroundColor = UIColor.white
           
           view.addSubview(scrollView)
           scrollView.snp.makeConstraints { (make) in
               make.edges.equalTo(view)
           }

        scrollView.addSubview(contentView)
                contentView.snp.makeConstraints { (make) in
                    make.top.bottom.equalTo(scrollView)
                    make.left.right.equalTo(view) // 确定的宽度，因为垂直滚动
                }
                
                let label1 = UILabel()
                contentView.addSubview(label1)
                label1.numberOfLines = 0
                label1.backgroundColor = UIColor.yellow
                
                label1.snp.makeConstraints { (make) in
                    make.left.right.equalTo(contentView).inset(20)
                    make.top.equalTo(contentView).offset(20)
                }
                
                let label2 = UILabel()
                contentView.addSubview(label2)
                label2.numberOfLines = 0
                label2.backgroundColor = UIColor.red
                
                label2.snp.makeConstraints { (make) in
                    make.left.right.equalTo(label1)
                    make.top.equalTo(label1.snp.bottom).offset(20)
                    make.bottom.equalToSuperview() // 底部一定要，不然不能够确定contentSize。
                }
                
                label1.text = "年注册即可afhjvajvbjjzxbzjcbjznckjnckjnalfnvzjnv今年福建男子在看 v 你在今年初v 和 iv 分 奥斯 v 和 i 导致 v 㷣 v 后ID v 家 啊㷣 vi 后ID v 家 简单南昌召开农村做课间操你自己看自己看 v 你做课间操政策加快农村政策框架女装穿几年注册即可年注册即可afhjvajvbjjzxbzjcbjznckjnckjnalfnvzjnv今年福建男子在看 v 你在今年初v 和 iv 分 奥斯 v 和 i 导致 v 㷣 v 后ID v 家 啊㷣 vi 后ID v 家 简单南昌召开农村做课间操你自己看自己看 v 你做课间操政策加快农村政策框架女装穿几年注册即可年注册即可afhjvajvbjjzxbzjcbjznckjnckjnalfnvzjnv今年福建男子在看 v 你在今年初v 和 iv 分 奥斯 v 和 i 导致 v 㷣 v 后ID v 家 啊㷣 vi 后ID v 家 简单南昌召开农村做课间操你自己看自己看 v 你做课间操政策加快农村政策框架女装穿几年注册即可年注册即可afhjvajvbjjzxbzjcbjznckjnckjnalfnvzjnv今年福建男子在看 v 你在今年初v 和 iv 分 奥斯 v 和 i 导致 v 㷣 v 后ID v 家 啊㷣 vi 后ID v 家 简单南昌召开农村做课间操你自己看自己看 v 你做课间操政策加快农村政策框架女装穿几年注册即可"
                
                label2.text = "致 v 㷣 v 后ID v 家 啊㷣 vi 后ID v 家 简单南昌召开农村做课间操你自己看自己看 v 你做课间操政策加快农村政策框架女装穿几年注册即可afhjvajvbjjzxbzjcbjznckjnckjnalfnvzjnv今年福建男子在看 v 你在今年初v 和 iv 分 奥斯 v 和 i 导致 v 㷣 v 后ID v 家 啊㷣 vi 后ID v 家 简单南昌召开农村做课间操你自己看自己看 v 你做课间操政策加快农村政策框架女装穿几年注册即可afhjvajvbjjzxbzjcbjznckjnckjnalfnvzjnv今年福建男子在看 v 你在今年初v 和 iv 分 奥斯 v 和 i 导致 v 㷣 v 后ID v 家 啊㷣 vi 后ID v 家 简单南昌召开农村做课间操你自己看自己看 v 你做课间操政策加快农村政策框架女装穿几年注册即可年注册即可afhjvajvbjjzxbzjcbjznckjnckjnalfnvzjnv今年福建男子在看 v 你在今年初v 和 iv 分 奥斯 v 和 i 导致 v 㷣 v 后ID v 家 啊㷣 vi 后ID v 家 简单南昌召开农村做课间操你自己看自己看 v 你做课间操政策加快农村政策框架女装穿几年注册即可"
            }

     
 
}
