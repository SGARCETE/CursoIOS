/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class JournalTableViewController: UITableViewController {

    let cellReuseIdentifier = "JournalEntryCell"
    
    let journal = Journal(entries: (0..<4).map { JournalEntry(date: Date(), contents: "Contents for entry \($0)") })
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return journal.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) 
        if let label = cell.textLabel,
            let entry = journal.entry(indexPath.row) {
            label.text = "\(entry)"
        }
        return cell
    }

    let journalEntrySegueIdentifier = "journalEntry"
    let newJournalEntrySegueIdentifier = "newJournalEntry"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == journalEntrySegueIdentifier {
            if let journalEntryViewController = segue.destination as? JournalEntryViewController,
                let cell = sender as? UITableViewCell,
                let indexPath = self.tableView.indexPath(for: cell),
                let entry = journal.entry(indexPath.row) {
                    journalEntryViewController.journalEntry = entry
            }
        } else if segue.identifier == newJournalEntrySegueIdentifier {
            if let newJournalEntryViewController = segue.destination as? NewJournalEntryViewController {
                newJournalEntryViewController.journal = journal
            }
        }
    }

}












