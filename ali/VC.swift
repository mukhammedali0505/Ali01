//
//  VC.swift
//  ali
//
//  Created by Мухаммед-Али Рахымберди on 14.12.2024.
//

import UIKit

class VC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    let tableView = UITableView ()
    
    let nmees = ["Вова","Ана","Саша","Карм","Сула","Ян"]
    
    var sectionc: [String] = []
    var sectionsData:[String : [String]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareSections()
        tableView.detaSource = self
        tableView.delegate = self
        tableView.register(ProgrammaticallyCell, self, forCellReuseIdentifier: "cellID")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        NSLayoutConstraint.activate ([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func prepeSectins() {
        for name in names {
            let firstLetter = String(name.prefix(1))
            if sectionsData[firstLetter] == nil {
                sectionsData[firstLetter] = []
            }
            sectionsData[firstLetter]?.append(name)
        }
        sectionc = sectionsData.keys.sorted()
        for(key,_)in sectionsData {
            sectionsData[key].sort()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        sections.count
    }
    
    func tableView(_ tableView: UITableView,
        <#code#>
    }
    }
