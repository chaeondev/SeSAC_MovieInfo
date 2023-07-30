//
//  MovieInfoTableViewController.swift
//  MovieInfo
//
//  Created by ChaewonMac on 2023/07/28.
//

import UIKit

class MovieInfoTableViewController: UITableViewController {
    
    let movie = MovieInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCustomTableViewCell") as! MovieCustomTableViewCell
        let row = movie.list[indexPath.row]
        
        cell.configureCell(row: row)
        
        return cell
    }
    
    

}
