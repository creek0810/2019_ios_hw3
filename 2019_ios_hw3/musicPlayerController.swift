//
//  myTableViewController.swift
//  2019_ios_hw3
//
//  Created by 王心妤 on 2019/3/12.
//  Copyright © 2019年 river. All rights reserved.
//

import UIKit
import AVFoundation

class musicPlayerController: UITableViewController {
    
    let song_name = ["01 Code Blue", "02 Groove Shadow", "03 Confusion Beats", "04 Cutting Volition", "05 Noiseless Period", "06 Exguisite Line", "07 Profound Undulation", "08 Turn Over", "09 Liquid Loops", "10 Player","11 Misty D.P.S.", "12 Hold On", "13 Modulation", "14 Transparency", "15 Future Colors", "16 Blue Ambition"]
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return song_name.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = song_name[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let url = Bundle.main.url(forResource: song_name[indexPath.row], withExtension: "mp3")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer.prepareToPlay()
        } catch {
            print("Error:", error.localizedDescription)
        }
        audioPlayer.play()
    }

}
