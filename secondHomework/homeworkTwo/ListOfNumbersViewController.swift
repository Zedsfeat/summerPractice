//
//  ListOfNumbersViewController.swift
//  homeworkTwo
//
//  Created by zedsbook on 04.07.2022.
//

import UIKit

struct Person {
    let name: String
    let surname: String
}

class ListOfNumbersViewController: UIViewController {
    
    
    @IBOutlet weak var tableListOfNumbersView: UITableView!
    var dataSourse = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableListOfNumbersView.dataSource = self
        tableListOfNumbersView.delegate = self
        
        setUpNavigationBar()
        loadDataSourse()
    }
    
    func setUpNavigationBar() {
        self.navigationItem.title = ""
        navigationController?.navigationBar.tintColor = .white
    }
    
    func loadDataSourse() {
        dataSourse.append(Person(name: "NameOne", surname: "SurnameOne"))
        dataSourse.append(Person(name: "NameTwo", surname: "SurnameTwo"))
        dataSourse.append(Person(name: "NameThree", surname: "SurnameThree"))
        dataSourse.append(Person(name: "NameFour", surname: "SurnameFour"))
        dataSourse.append(Person(name: "NameFive", surname: "SurnameFive"))
        dataSourse.append(Person(name: "NameSix", surname: "SurnameSix"))
        dataSourse.append(Person(name: "NameSeven", surname: "SurnameSeven"))
        dataSourse.append(Person(name: "NameEight", surname: "SurnameEight"))
        dataSourse.append(Person(name: "NameNine", surname: "SurnameNine"))
    }
}

extension ListOfNumbersViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourse.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let imageVC = storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as? ImageViewController else { return }
        imageVC.nameOfImage = String(indexPath[1] + 1)
        present(imageVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = dataSourse[indexPath.row]
        cell.textLabel?.textColor = .systemBlue
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        cell.textLabel?.text = "\(person.name) \(person.surname)"
        return cell
    }
    
}
