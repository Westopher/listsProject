

import UIKit

class ListItemTVCell: UITableViewCell {

    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var itemNameLabel: UILabel!
    
    var item: ListItem!
    
    @IBAction func checkButtonTapped(_ sender: Any) {
        item.checked = !item.checked
        checkButton.setImage(item.checked ? UIImage(named: "Checked") : UIImage(named: "Unchecked"), for: .normal)
        itemNameLabel.font = item.checked ? UIFont.systemFont(ofSize: 17, weight: .bold) : UIFont.systemFont(ofSize: 17, weight: .regular)
        saveLists()
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected { contentView.backgroundColor = UIColor(displayP3Red: 252/255, green: 238/255, blue: 183/255, alpha: 1) }

        // Configure the view for the selected state
    }

}
