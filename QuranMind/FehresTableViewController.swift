//
//  FehresTableViewController.swift
//  QuranMind
//
//  Created by Adham Raouf on 26/01/2024.
//

import UIKit


class ImageViewController: UIViewController {
    
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if let imageName = imageName {
            let imageView = UIImageView(image: UIImage(named: imageName))
            imageView.contentMode = .scaleToFill
            imageView.frame = view.bounds
            view.addSubview(imageView)
        }
        
        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeRightGesture.direction = .left
        view.addGestureRecognizer(swipeRightGesture)
    }
    
    @objc func handleSwipe(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            let SORAVC = SoraViewController()
            navigationController?.pushViewController(SORAVC, animated: true)
            print("Right swipe detected!")
            dismiss(animated: true, completion: nil)
        }
    }
}


class FehresTableViewController: UIViewController {

    let data = ["الفاتحة","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود","يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج","نوح","الجن","المزمل","المدثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار","المطففين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح","التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر","الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"]

    
    
    
    var FehrastableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "الفهرس"
        FehrastableView = UITableView(frame: view.bounds, style: .plain)
        FehrastableView.delegate = self
        FehrastableView.dataSource = self
        FehrastableView.register(CustumTableViewCell.self, forCellReuseIdentifier: "CustomCell")
        let backgroundImage = UIImageView(image: UIImage(named: "Untitled-2"))
        backgroundImage.contentMode = .scaleAspectFill
        self.FehrastableView.backgroundView = backgroundImage
        self.FehrastableView.backgroundColor = .clear
        view.addSubview(FehrastableView)
        
    }
}


extension FehresTableViewController : UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustumTableViewCell
        let backgroundImage = UIImageView(image: UIImage(named: "Untitled-2"))
        backgroundImage.contentMode = .scaleToFill
        cell.backgroundView = backgroundImage
        cell.textLabel?.textAlignment = .right
        cell.customButton.addTarget(self, action: #selector(customButtonTapped(_:)), for: .touchUpInside)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    @objc func customButtonTapped(_ sender: UIButton) {
        
        print("7ammmmmmmmooooooo")
        if let indexPath = FehrastableView.indexPath(for: sender.superview as! UITableViewCell) {
            print("Custom button tapped in cell at section \(indexPath.section), row \(indexPath.row)")
            // Add your custom button action here
        }
    }
    
    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            // Assuming you have a scores array to get the score for the specific row
//            let score = 5
//            
//            // Create and present an alert with the score label
//            let alert = UIAlertController(title: "Score Alert", message: "Score: \(score)", preferredStyle: .alert)
//            
//            // Add an action to dismiss the alert
//            let dismissAction = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
//            alert.addAction(dismissAction)
//            
//            // Present the alert
//            present(alert, animated: true, completion: nil)
//        }
//    }

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let score = 5
        
        // Option 1: Open an alert with the score
        let showAlertAction = UIContextualAction(style: .normal, title: "Show Score") { (_, _, completionHandler) in
            self.showScoreAlert(score)
            completionHandler(true)
        }
        showAlertAction.backgroundColor = .blue
        
        
        // Add more options as needed
        
        let swipeConfig = UISwipeActionsConfiguration(actions: [showAlertAction])
        return swipeConfig
    }
    
    func showScoreAlert(_ score: Int) {
        let alert = UIAlertController(title: "Score Alert", message: "Score: \(score)", preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        alert.addAction(dismissAction)
        present(alert, animated: true, completion: nil)
    }
    
   

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let imageVC = ImageViewController()
        imageVC.imageName = data[indexPath.row]
        navigationController?.pushViewController(imageVC, animated: true)
    }
    

}
