//
//  ListTableViewController.swift
//  ListTable
//
//  Created by Anton Kaznacheev on 26.10.2022.
//

import UIKit

class ListTableViewController: UITableViewController {

    private var track = ListTugle.getTrackList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        track.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var trackIndex = track[indexPath.row]
       
        var content = cell.defaultContentConfiguration()
        content.text = trackIndex.song
        content.imageProperties.cornerRadius = tableView.rowHeight / 4
        content.image = UIImage(named: "\(trackIndex.artist)")
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigationoverride
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let homeVC = segue.destination as? ViewController else { return }
        guard let indexPaths = tableView.indexPathForSelectedRow else { return }
        let trackIndex = track[indexPaths.row]
        homeVC.track = trackIndex
        
    }

}
