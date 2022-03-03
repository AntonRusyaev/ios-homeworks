//
//  InfoViewController.swift
//  NavigationTr
//
//  Created by Anton Rusyaev on 03.03.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .cyan
        
        let alert = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        alert.setTitle("alert", for: .normal)
        view.addSubview(alert)
        alert.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    @objc func tap() {
        let alertVC = UIAlertController(title: "Trevoga", message: "VSEPRPALO!!!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel) { _ in
            print ("asasa")
        }
        let actiontwo = UIAlertAction(title: "NO", style: .destructive, handler: nil)
        alertVC.addAction(action)
        alertVC.addAction(actiontwo)
        self.present(alertVC, animated: true)
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
