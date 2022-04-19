//
//  colors.swift
//  UPAX
//
//  Created by Wiggi on 17/04/22.
//

import Foundation

struct Root: Decodable {
    var color: [String]
    var questions: [Question]
    
    enum CodingKeys: String, CodingKey{
        case color = "colors"
        case questions = "questions"
    }

}
struct Question: Decodable{
    let total: Int
    let text: String
    let chartData: [ChartData]
    
    enum CodingKeys: String, CodingKey{
        case total = "total"
        case text = "text"
        case chartData 
    }
    
}

    struct ChartData: Decodable{
        let text: String
        let percetnage: Int
        
    }


