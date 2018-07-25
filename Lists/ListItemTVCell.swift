

import UIKit

class ListItemTVCell: UITableViewCell {

    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var itemNameLabel: UILabel!
    
    var item: ListItem!
    
    @IBAction func checkButtonTapped(_ sender: Any) {
        item.checked = !item.checked
        checkButton.setImage(item.checked ? UIImage(named: "Checked") : UIImage(named: "Unchecked"), for: .normal)
        saveLists()
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
