//
//  MovieCustomTableViewCell.swift
//  MovieInfo
//
//  Created by ChaewonMac on 2023/07/28.
//

import UIKit

class MovieCustomTableViewCell: UITableViewCell {

    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var runtimeLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    @IBOutlet var overviewLabel: UILabel!
    
    
    
    func configureCell(row: Movie) {
        
        movieImageView.image = UIImage(named: row.title)
        nameLabel.text = row.title
        dateLabel.text = "\(row.releaseDate) |"
        runtimeLabel.text = "\(row.runtime)분 |"
        rateLabel.text = "\(row.rate)점"
        overviewLabel.text = row.overview
        
        overviewLabel.numberOfLines = 0
        
    }
    
    
    
    
}
