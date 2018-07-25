

import UIKit

class ListsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var newListNameTextField: UITextField!
    
    @IBOutlet weak var listsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadLists()
    }

    // MARK: - TableView DataSource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let listTitleTVCell = tableView.dequeueReusableCell(withIdentifier: "ListTitleTVCell", for: indexPath) as! ListTitleTVCell
        listTitleTVCell.listTitleLabel.text = lists[indexPath.row].title
        return listTitleTVCell
    }
    
    // MARK: - TableView Delegate methods
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == . delete {
            lists.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            saveLists()
        }
    }
    
    // MARK: - UI responsive methods
    @IBAction func addListButtonTapped(_ sender: Any) {
        if newListNameTextField.text == "" { return }
        lists.append(List(listTitle: newListNameTextField.text!)!)
        listsTableView.reloadData()
        saveLists()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let listItemsVC = segue.destination as! ListItemsVC
        listItemsVC.list = lists[(listsTableView.indexPathForSelectedRow?.row)!]
        listItemsVC.navigationItem.title = listItemsVC.list.title
        
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
