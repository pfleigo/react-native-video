//
//  RCTPlayerDelegate.swift
//
import UIKit
import AVKit
import AVFoundation

@available(iOS 9.0, *)
class RCTPlayerDelegate: NSObject, AVPlayerViewControllerDelegate {
    
    private var _onPictureInPictureStatusChanged: RCTDirectEventBlock?
        
    init(_ onPictureInPictureStatusChanged: RCTDirectEventBlock?) {
        _onPictureInPictureStatusChanged = onPictureInPictureStatusChanged
    }
    
    func playerViewControllerDidStartPictureInPicture(_ playerViewController: AVPlayerViewController) {
        
        _onPictureInPictureStatusChanged!([ "isActive": NSNumber(value: true) ])
        
    }
    
    func playerViewControllerDidStopPictureInPicture(_ playerViewController: AVPlayerViewController) {
        
        _onPictureInPictureStatusChanged!([ "isActive": NSNumber(value: false) ])
        
    }
    
}
