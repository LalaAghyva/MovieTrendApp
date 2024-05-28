//
//  DetailsMovieViewController.swift
//  MovieTrendApp
//
//  Created by Lala on 29.05.24.
//

import UIKit
import SDWebImage

class DetailsMovieViewController: UIViewController {

    //IBOutlet
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabal: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //View model :
    var viewModel: DetailsMovieViewModel
    
    init(viewModel: DetailsMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsMovieViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView() {
        self.title = "Movie Details"
        titleLabal.text = viewModel.movieTitle
        descriptionLabel.text = viewModel.movieDescription
        imageView.sd_setImage(with: viewModel.movieImage)
    }
}
