
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
    
    
    
}

func saveLists() {
    
    
    
}





