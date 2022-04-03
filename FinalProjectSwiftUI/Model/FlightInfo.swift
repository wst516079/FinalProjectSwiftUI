//
//  TicketInfo.swift
//  FinalProjectSwiftUI
//
//  Created by Haodong Yang on 4/3/22.
//

import Foundation
import SwiftUI

struct FlightInfo: Decodable, Hashable {
    let flightType: FlightType
    let departure: String
    let departureCode: String
    let destination: String
    let destinationCode: String
    let `operator`: String
    let flightNumber: String
    let terminal: String
    let gate: String
    let date: String
    let boardingTime: String
    let departureTime: String
    let arrivalTime: String
    let journeyTime: String
    let seatNumber: String
    let passenger: String
    let passportNumber: String
    let eTicketNumber: String
    let bookingCode: String
    let payment: String
    let price: String

    enum CodingKeys: String, CodingKey {
        case flightType = "flight_type"
        case departure
        case departureCode = "departure_code"
        case destination
        case destinationCode = "destination_code"
        case `operator` = "operator"
        case flightNumber = "flight_number"
        case terminal
        case gate
        case date
        case boardingTime = "boarding_time"
        case departureTime = "departure_time"
        case arrivalTime = "arrival_time"
        case journeyTime = "journey_time"
        case seatNumber = "seat_number"
        case passenger
        case passportNumber = "passport_number"
        case eTicketNumber = "e_ticket_number"
        case bookingCode = "booking_code"
        case payment
        case price
    }
}

enum FlightType: String, Decodable, CaseIterable, Hashable {
    case international = "International"
    case domestic = "Domestic"
    
    var themeColor: Color {
        switch self {
        case .international:
            return .red
        case .domestic:
            return .indigo
        }
    }
}

let sampleFlightData: [FlightInfo] = [
    FlightInfo(flightType: .international,
               departure: "DALLAS(HANEDA)", departureCode: "DFW",
               destination: "SHANGHAI", destinationCode: "PVG",
               operator: "JAA", flightNumber: "AA281",
               terminal: "3", gate: "105",
               date: "June 4", boardingTime: "22:25",
               departureTime: "22:55", arrivalTime: "15:20",
               journeyTime: "9H 25M", seatNumber: "29A",
               passenger: "John Smith", passportNumber: "TX0123456",
               eTicketNumber: "0120 345 6789", bookingCode: "THANKU77",
               payment: "VISA *** **77", price: "$1099.99")
]
