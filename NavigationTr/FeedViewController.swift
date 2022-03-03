//
//  FeedViewController.swift
//  NavigationTr
//
//  Created by Anton Rusyaev on 03.03.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    let post = Post(title: "PostStr")

    override func viewDidLoad() {
        super.viewDidLoad()

        let buttonPost = UIButton(frame:CGRect(x: 100, y: 300, width: 200, height: 50))
        
        buttonPost.setTitle("Post", for: .normal)
        
        view.addSubview(buttonPost)
        
        buttonPost.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
    }
    @objc func tap() {
        let postVC = PostViewController()
        
        postVC.post = post
        
        navigationController?.pushViewController(postVC, animated: true)
//        postVC.modalPresentationStyle = .automatic
//        self.present(postVC, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
