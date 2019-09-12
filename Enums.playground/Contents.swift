//: Playground - noun: a place where people can play

import UIKit

//Enums
//define your own kind of value
//Defines una serie p tipos de valores similares

//enum WeatherType {
//    case sun, cloud, rain, wind, snow
//}

//func getHaterStatus(weather: WeatherType) -> String? {
//    if weather == .sun {
//        return nil
//    } else {
//        return "Hate"
//    } }
//
//getHaterStatus(weather: .cloud)


enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    } }

getHaterStatus(weather: WeatherType.wind(speed: 5))



