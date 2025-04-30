//
//  Sound.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/28/25.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR")
        }
    }
}

//optional func audioPlayerDidFinishPlaying(
//    _ player: AVAudioPlayer,
//    successfully flag: Bool
//)

////MARK:- Audio Player Delegates
//extension RecordingManager: AVAudioPlayerDelegate
//{
//    //MARK: Audio Player Finishes Playing audio
//    /**
//     Called when a sound has finished playing.
//     - parameter player: player instance
//     - parameter flag: Bool player is running or not successfully
//     */
//    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool)
//    {
//        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "StoppedPlaying"), object: nil)
//        player.stop()
//        Manager.player?.stop()
//        Manager.recordingalreadyPlayedStatus = false
//        print("Finish Playing")
//    }
//
//    //MARK: Audio Player error occur while Playing
//    /**
//     Called when an audio player encounters a decoding error during playback.
//     - parameter player: player instance
//     - parameter error: Error if occurs
//     */
//    func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer,error: Error?)
//    {
//        print("Encoding Error: \(String(describing: error?.localizedDescription))")
//    }
//
//}
