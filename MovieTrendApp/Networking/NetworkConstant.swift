//
//  NetworkConstant.swift
//  MovieTrendApp
//
//  Created by Lala on 23.05.24.
//

import Foundation

class NetworkConstant {
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init() {
        // singletone
    }
    
    public var apiKey: String {
        get {
            //API key from //Api website:https://www.themoviedb.org/
            return "bb9507f7e14d5bf8a94376d13f34384c"
        }
    }
    
    public var serverAdress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAdress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
