

import UIKit

class ListItemsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var newItemNameTextField: UITextField!
    @IBOutlet weak var itemsTableView: UITableView!
    
    var list: List!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // MARK: - TableView DataSource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let listItemTVCell = tableView.dequeueReusableCell(withIdentifier: "ListItemTVCell", for: indexPath) as! ListItemTVCell
        listItemTVCell.item = list.items[indexPath.row]
        listItemTVCell.itemNameLabel.text = listItemTVCell.item.title
        listItemTVCell.itemNameLabel.font = listItemTVCell.item.checked ? UIFont.systemFont(ofSize: 17, weight: .bold) : UIFont.systemFont(ofSize: 17, weight: .regular)
        listItemTVCell.checkButton.setImage(listItemTVCell.item.checked ? UIImage(named: "Checked") : UIImage(named: "Unchecked"), for: .normal)
        return listItemTVCell

    }
    
    // MARK: - TableView Delegate methods
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == . delete {
            list.items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            saveLists()
        }
    }
    
    // MARK: - UI responsive methods
    
    @IBAction func addItemButtonTapped(_ sender: Any) {
        if newItemNameTextField.text == "" { return }
        list.items.append(ListItem(itemTitle: newItemNameTextField.text!)!)
        itemsTableView.reloadData()
        saveLists()
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
