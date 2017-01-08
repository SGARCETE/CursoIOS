//
//  ViewController.swift
//  TableViewSample
//
//  Created by Federico Tuckey on 12/21/16.
//  Copyright © 2016 mercadolibre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    let dataSource = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut velit eros, lacinia vitae luctus sed, iaculis vitae felis. Cras ac semper nibh. Fusce et scelerisque sapien. Duis in sem a erat tempor elementum. Ut tempor nisl eu neque placerat, vel interdum quam faucibus. Aenean eu lobortis odio. Sed elit mi, condimentum ut libero nec, faucibus gravida mi.", "Donec metus sapien, bibendum at nunc nec, lacinia aliquam leo. Sed sit amet tempor quam, sit amet faucibus enim. Praesent rutrum est et libero pharetra dignissim. In vitae purus leo. Cras tempus arcu lacinia eros ultrices blandit. Donec ac purus ut leo faucibus auctor. Ut dictum mauris vel tortor laoreet, in laoreet lacus vehicula. Mauris pellentesque vestibulum commodo. Sed a blandit augue, et lacinia mi. Etiam tristique fermentum posuere. Praesent aliquet lacinia nunc, eu lacinia dui ultrices vel. Aenean ac sem libero. Nulla malesuada libero vitae justo mattis luctus.", "Suspendisse ultricies metus viverra nisl tincidunt, sed sodales neque vulputate. Ut mi mi, sollicitudin et faucibus nec, pellentesque sed neque. Quisque ullamcorper ex vitae magna varius, quis mattis purus egestas. Pellentesque augue sapien, maximus eu lectus nec, accumsan placerat ligula. Suspendisse et magna pretium, suscipit magna id, scelerisque lorem. Nullam semper suscipit volutpat. Sed efficitur eleifend magna, blandit rhoncus libero interdum a. Sed sed lectus congue, pharetra purus et, porta diam.", "Donec purus dui, dapibus quis gravida non, gravida ac massa. Nullam et semper ante. Integer condimentum vehicula orci eget fringilla. Mauris pharetra feugiat orci, sit amet scelerisque dolor. Donec placerat dui vitae leo cursus, nec aliquam massa elementum. Aliquam ornare quam imperdiet ligula blandit finibus. Proin laoreet pharetra leo, quis rutrum est placerat suscipit. Nunc dapibus rutrum erat vel mattis. Morbi rutrum efficitur condimentum. Fusce volutpat est odio, viverra gravida massa malesuada eget.", "Suspendisse interdum enim est, ut malesuada eros molestie eget. Integer dictum euismod gravida. Donec ultrices, dui at euismod venenatis, mi libero vestibulum nunc, at scelerisque ipsum arcu ac leo. Duis vel tincidunt orci. Fusce porta, magna ut tempor laoreet, dolor tellus commodo odio, vel ultrices nunc quam quis mauris. Nunc a dolor luctus metus tempus hendrerit. Quisque odio augue, varius nec neque id, molestie aliquet sem. In hac habitasse platea dictumst. In et nibh elementum, hendrerit nunc rhoncus, ultricies ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla maximus massa vitae augue lacinia, nec imperdiet nibh volutpat. Fusce vulputate erat vel urna imperdiet tincidunt ac in urna. Morbi venenatis, ante sit amet venenatis accumsan, mi sem pharetra odio, sit amet feugiat mauris purus non ex. Donec eget libero non libero rutrum molestie at a nibh. Aenean libero libero, pharetra nec leo at, semper ultrices magna."]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 120
        tableView.rowHeight = UITableViewAutomaticDimension
    }

}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyResuableCell", for: indexPath) as! MyReusableTableViewCell
        cell.myText.text = dataSource[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}









