//
//  DemoURL.swift
//  Cassini
//
//  Created by Pete Bounford on 10/02/2017.
//  Copyright © 2017 PBO Apps. All rights reserved.
//

import Foundation

struct DemoURL {
    static let Stanford = "https://lbre.stanford.edu/sites/all/lbre-shared/files/pmr/pmr_SUAerial.jpg"
    
    static let NASA = [
        "Cassini": "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSCT8OSGovcv_ACBR8RNkbeHsXrKJnC-YtpWaQ1hi2lL9wGl7xo9eqfhI_m",
        "Earth": "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
        "EarthAndMoon": "http://photojournal.jpl.nasa.gov/jpegMod/PIA00342_modest.jpg",
        "Saturn": "https://saturn.jpl.nasa.gov/system/resources/detail_files/23_IMG002314.jpg"
    ]
    
    static func NASAImage(forName imageName: String?) -> NSURL? {
        if let urlString = NASA[imageName ?? ""] {
            return NSURL(string: urlString)
        } else {
            return nil
        }
    }
}
