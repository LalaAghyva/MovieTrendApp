//
//  MainMovieCell.swift
//  MovieTrendApp
//
//  Created by Lala on 28.05.24.
//

import UIKit
import SDWebImage

class MainMovieCell: UITableViewCell {

    public static var identifier: String {
        get {
            return "MainMovieCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "MainMovieCell", bundle: nil)
    }
    
    //IBOutlets:
    @IBOutlet weak var backView : UIView!
    @IBOutlet weak var movieImageView : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var dateLable : UILabel!
    @IBOutlet weak var rateLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.addBorder(color: .label, width: 1)
        backView.round()
        backView.backgroundColor = .lightGray
        movieImageView.round(5)
    }
    
    func setUpCell(viewModel : MovieTableCellViewModel) {
        self.nameLabel.text = viewModel.title
        self.dateLable.text = viewModel.date
        self.rateLabel.text = viewModel.rating
        self.movieImageView.sd_setImage(with: viewModel.imageUrl)
    }
}
