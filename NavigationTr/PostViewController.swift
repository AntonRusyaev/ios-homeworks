//
//  PostViewController.swift
//  NavigationTr
//
//  Created by Anton Rusyaev on 03.03.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var post:Post?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .lightGray
        self.navigationItem.title = post?.title
        let buttonRi = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(tapo))
        self.navigationItem.rightBarButtonItem = buttonRi
        
    }

    @objc func tapo() {
        
        let viewVC = InfoViewController()
        
        viewVC.modalPresentationStyle = .automatic
        self.present(viewVC, animated: true)
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
