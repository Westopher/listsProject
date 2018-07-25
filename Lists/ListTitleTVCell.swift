

import UIKit

class ListTitleTVCell: UITableViewCell {

    @IBOutlet weak var listTitleLabel: UILabel!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            backgroundImageView.image = UIImage(named: "CellSelectedBackground")
            contentView.backgroundColor = UIColor(displayP3Red: 250/255, green: 247/255, blue: 235/255, alpha: 1)
        } else {
            backgroundImageView.image = UIImage(named: "CellDeselectedBackground")
            
        }

        // Configure the view for the selected state
    }

}
