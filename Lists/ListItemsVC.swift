

import UIKit

class ListItemsVC: UIViewController {

    @IBOutlet weak var newItemNameTextField: UITextField!
    @IBOutlet weak var itemsTableView: UITableView!
    
    var list: List!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func addItemButtonTapped(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
