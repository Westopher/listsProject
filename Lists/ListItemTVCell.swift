

import UIKit

class ListItemTVCell: UITableViewCell {

    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var itemNameLabel: UILabel!
    
    @IBAction func checkButtonTapped(_ sender: Any) {
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
