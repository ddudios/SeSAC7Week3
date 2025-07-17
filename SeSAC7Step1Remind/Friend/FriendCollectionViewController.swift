//
//  FriendColleoctionViewController.swift
//  SeSAC7Step1Remind
//
//  Created by Suji Jang on 7/17/25.
//

import UIKit

class FriendCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    /*
     TableView -> CollectionView로 복습 / row -> item
     1. collectionView 아웃렛 연결
     2. 부하직원 호출
     */
    
    @IBOutlet var myCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let xib = UINib(nibName: "FriendCollectionViewCell", bundle: nil)
        myCollectionView.register(xib, forCellWithReuseIdentifier: "FriendCollectionViewCell")
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        // 셀의 너비와 높이도 설정하는 것이 필요함
            // 보통 고정하지 않고 비율로 수치를 잡음
        let layout = UICollectionViewFlowLayout()  // Min Spacing등을 인스펙터에서 조정한 것을 코드로 하는 방법
        let deviceWidth = UIScreen.main.bounds.width  // 디바이스에 따라 유동적으로 변하는 너비
        let cellWidth = deviceWidth - (16 * 2) - (16 * 3)  // 간격의 변동이 많기 때문에 계산하지 않고 씀: (처음,끝) (셀사이간격갯수)
        layout.itemSize = CGSize(width: cellWidth/4, height: cellWidth/4)  // 셀 갯수 변동
        layout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        layout.minimumInteritemSpacing = 14
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .vertical
        myCollectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendCollectionViewCell", for: indexPath) as! FriendCollectionViewCell
        
        cell.nameLabel.text = "\(indexPath)\(indexPath.item)"
        
        return cell
    }
}
