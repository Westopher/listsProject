
import UIKit

// MARK: - Data Model

class ListItem {
    var title: String
    var checked: Bool
    
    init?(itemTitle: String, checked: Bool = false) {
        if itemTitle == "" { return nil }
        title = itemTitle
        self.checked = checked
    }
}

class List {
    var title: String
    var items = [ListItem]() { didSet { items.sort() { $0.title < $1.title } } }
    
    init?(listTitle: String, items: [ListItem] = [ListItem]()) {
        if listTitle == "" { return nil }
        title = listTitle
        self.items = items
    }
}

var lists = [List]() { didSet {lists.sort() {$0.title < $1.title } } }

// MARK: - Methods for persistent storage

func loadLists() {
    
    guard let retrievedData = UserDefaults.standard.dictionary(forKey: "ListofLists") else { return }
    lists.removeAll()
    
    let dictionaryOfArraysOfArrays = retrievedData as! [String:[[Any]]]
    for (listTitle, listItems) in dictionaryOfArraysOfArrays {
        let newList = List(listTitle: listTitle)
        let arrayOfArrays = listItems
        for array in arrayOfArrays {
            newList?.items.append(ListItem(itemTitle: array[0] as! String, checked: array[1] as! Bool)!)
        }
        lists.append(newList!)
    }
    
    print("Retrieved Data: \(retrievedData) \n")
    print("Dictionary of Arrays of Arrays: \(dictionaryOfArraysOfArrays) \n")
}

func saveLists() {
    
    var dictionaryofArraysofArrays = [String:[[Any]]]()
    for list in lists {
        var arrayOfArrays = [[Any]]()
        for listItem in list.items {
            var array = [Any]()
            array.append(listItem.title)
            array.append(listItem.checked)
            arrayOfArrays.append(array)
        }
        dictionaryofArraysofArrays[list.title] = arrayOfArrays
    }
    UserDefaults.standard.set(dictionaryofArraysofArrays, forKey: "ListofLists")
    print("Dictionary of Arrays of Arrays: \(dictionaryofArraysofArrays) \n")
}





