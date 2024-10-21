//
//  ListTableViewCell.swift
//  GithubApp
//
//  Created by img10 on 2024/10/21.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var repositoryName: UILabel!
    @IBOutlet weak var starCount: UILabel!
    @IBOutlet weak var codeImage: UIImageView!
    @IBOutlet weak var starImage: UIImageView!
    
    static let identifier = "ListCustomCell"
    static let height: CGFloat = 115

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupRepositoryNameConstraints()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "ListTableViewCell", bundle: nil)
    }
    
    private func setupRepositoryNameConstraints() {
        guard let repositoryName = repositoryName else {
            return
        }
        // repositoryNameの制約
        repositoryName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            repositoryName.leadingAnchor.constraint(equalTo: codeImage.trailingAnchor, constant: 8),
            repositoryName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30)
        ])
        // codeImageの制約
        codeImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            codeImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            codeImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        // starImageの制約
        starImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            starImage.leadingAnchor.constraint(equalTo: codeImage.trailingAnchor, constant: 8),
            starImage.topAnchor.constraint(equalTo: repositoryName.bottomAnchor, constant: 2)
        ])
        // starCountの制約
        starCount.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            starCount.leadingAnchor.constraint(equalTo: starImage.trailingAnchor, constant: 4),
            starCount.topAnchor.constraint(equalTo: repositoryName.bottomAnchor, constant: 8)
        ])
    }
    
}
