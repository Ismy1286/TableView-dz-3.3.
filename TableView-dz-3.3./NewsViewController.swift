//
//  ViewController.swift
//  TableView-dz-3.3.
//
//  Created by user on 25.11.2021.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var news: [NewsModel] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsCell
        
        let model = news[indexPath.row]
        
        cell.newsTitle.text = model.title
        cell.newsDescriptions.text = model.description
        cell.newsImage.image = UIImage(named: model.image)
        
        return cell
    }
    

    @IBOutlet weak var newsTableView: UITableView!
    
    @IBAction func deleteFirst(_ sender: Any) {
        news.removeFirst()
        newsTableView.reloadData()
    }
    
    @IBAction func deleteLast(_ sender: Any) {
        news.removeLast()
        newsTableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "GeekNews"
        
        news.append(NewsModel(title: "Сними тик ток и получи бонус", description: "Так вот для любителей снимать ТикТок GeekTech предлагает классные бонусы! Если ваше видео наберёт больше 10К просмотров, подходите в администрацию и получите бонус 1000 сомов", image: "newsPhoto-1"))
        
        news.append(NewsModel(title: "GEEKTECH ЗАНЯЛА ПЕРВОЕ МЕСТО НА АГРОХАКАТОНЕ", description: "По итогам хакатона Agro Hack первое место среди 17 команд-участниц и сертификат на 150 000 сомов получила команда GeekTech Team 1", image: "newsPhoto-2"))
        
        news.append(NewsModel(title: "ЛУЧШАЯ ГРУППА МЕСЯЦА", description: "Отныне каждый месяц учебный отдел будет определять лучшую группу среди всех направлений! Лучшая группа будет завалена пиццей и залита колой", image: "newsPhoto-3"))
        
        news.append(NewsModel(title: "ПРАВИЛА ПОВЕДЕНИЯ В GEEKTECH", description: "Пользоваться коворкингом могут только студенты ОЦ GeekTech c 7 утра до 12 ночи - В период с 00:00 до 07:00 разрешается находиться в коворкинге только с разрешения Администрации", image: "newsPhoto-4"))
        
        news.append(NewsModel(title: "Уважаемые студенты! GeekTech ищет партнера в наш GeekFood", description: "Если вы хотите обрести дополнительный или основной доход, занимаясь полезным делом, а именно кормлением своих сокурсников - это объявление для вас!", image: "newsPhoto-5"))
        
        news.append(NewsModel(title: "В Tez Sat требуется Junior iOS-разработчик", description: "Обязательные технические требования: Знание языка Swift. Знание архитектур MVVM, VIPER. Базовые знания CoreData, Realm, URLSession", image: "newsPhoto-6"))
        
        news.append(NewsModel(title: "Мастер-класс по трудоустройству", description: "Настоятельно рекомендуем посетить данный мастер-класс, если вы хотите повысить свои шансы на успешное трудоустройство! Тренер: Клара Абдукова - HR Generalist в Mad Devs", image: "newsPhoto-7"))
        
        news.append(NewsModel(title: "Приглашаем всех поддержать нашу команду!", description: "Дорогие друзья! Завтра, 7 ноября в 10:00, состоится футбольный матч нашей команды GeekTech против команды «ТЭЦ г.Бишкек»", image: "newsPhoto-8"))
        
        news.append(NewsModel(title: "Хотим поделиться секретом", description: "Для тех, кто не знал, в нашем буфете чай, кофе, сливки, сахар и даже вода для вас БЕСПЛАТНЫ! Заходите чаще и согревайтесь в такую погоду!", image: "newsPhoto-9"))
        
        news.append(NewsModel(title: "Традиционный Last Sunday!", description: "В программе все как мы любим: Мафия, Караоке, Киновечер, И, конечно же, ПИЦЦА!,Участие бесплатное!,Ждем всех студентов GeekTech!", image: "newsPhoto-10"))
        
        newsTableView.dataSource = self
        newsTableView.delegate = self
        
    }


}

