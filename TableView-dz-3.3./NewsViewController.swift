//
//  ViewController.swift
//  TableView-dz-3.3.
//
//  Created by user on 25.11.2021.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsCell
        
        cell.newsTitle.text = "Сними тик ток и получи бонус"
        cell.newsDescriptions.text = "Так вот для любителей снимать ТикТок GeekTech предлагает классные бонусы! Если ваше видео наберёт больше 10К просмотров, подходите в администрацию и получите бонус 1000 сомов"
        cell.newsImage.image = UIImage(named: "newsPhoto")
        
        return cell
    }
    

    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "GeekNews"
        
        newsTableView.dataSource = self
        newsTableView.delegate = self
        
    }


}

