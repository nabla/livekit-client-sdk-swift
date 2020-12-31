//
//  File.swift
//  
//
//  Created by Russell D'Sa on 12/28/20.
//

import Foundation
import WebRTC

public class VideoTrack: Track {
    public internal(set) var renderers: [VideoRenderer] = []
    public internal(set) var rtcTrack: RTCMediaStreamTrack
    
    init(sid: Track.Sid, rtcTrack: RTCMediaStreamTrack) {
        self.rtcTrack = rtcTrack
        super.init(sid: sid)
    }
    
    public func addRenderer(_ renderer: VideoRenderer) {
        renderers.append(renderer)
    }
    
    public func removeRenderer(_ renderer: VideoRenderer) {
        
    }
}