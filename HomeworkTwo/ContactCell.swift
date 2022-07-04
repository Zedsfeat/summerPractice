import UIKit

class ContactCell: UITableViewCell {
    
    let avatar = UIImageView()
    var nameLabel: UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }
    var descriptionLabel: UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .lightGray
        return label
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpCell() {
        [avatar, nameLabel, descriptionLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
        
        avatar.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16).isActive = true
        avatar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        avatar.heightAnchor.constraint(equalToConstant: 32).isActive = true
        avatar.widthAnchor.constraint(equalToConstant: 32).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 8).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
        
        
    }
    
    func configure(contact: Contact) {
        avatar.image = contact.image
        nameLabel.text = contact.name
        descriptionLabel.text = String(contact.number)
    }
    
}
