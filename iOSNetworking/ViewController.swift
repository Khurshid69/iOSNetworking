//
//  ViewController.swift
//  iOSNetworking
//
//  Created by user on 16/11/21.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    
    @IBOutlet weak var tableViewCell: UITableView!
    
    //MARK: JSON
    
    

    
    var item: Employee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        tableViewCell.dataSource = self
        tableViewCell.delegate = self
        view.addSubview(tableViewCell)
        getData()
    }
    
    func getData () {
        let link = "https://dummy.restapiexample.com/" + AFHttp.API_POST_LIST
           guard let url = URL(string: link) else { return print("Error") }
           URLSession.shared.dataTask(with: url) { (data, response, error) in
               guard let obtainedData = data else { return print("No data")}
               do {
                   let item = try JSONDecoder().decode(Employee.self, from: obtainedData)
                   DispatchQueue.main.async {
                       self.item = item
                       self.tableViewCell.reloadData()
                   }
               } catch {
                   print("Nothing")
                   print(error)
               }
               }.resume()
    }
   
    // MARK: TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item?.data.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let i = item?.data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
       cell.textLabel?.text = i?.employee_name
        
        
        
        return cell
    }
    
    
    

}

