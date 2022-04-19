import Foundation
import Alamofire

class APIRest {
   fileprivate var baseUrl = ""
    
    init (baseUrl: String){
        self.baseUrl = baseUrl
    }
    
    func getAllColors(endPoint: String){
        AF.request(self.baseUrl + endPoint, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response {
            (responseData) in
            guard let data = responseData.data else {return}
            do{
                let data = try JSONDecoder().decode(Root.self, from: data)
                for Data in data.color {
                    print("\(Data)")
                }
            } catch{
                print("Error decoding === \(error)")
            }
            }
        }
    
    func getAllQuestions(endPoint: String){
        AF.request(self.baseUrl  + endPoint, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response {
            (responseData) in
            guard let data = responseData.data else {return print("NO DATA")}
            do{
                let datos = try JSONDecoder().decode(Root.self, from: data)
                for text in datos.questions {
                    print("\(text.text)")
                    
                    for chartDatas in datos.questions {
                        for chartData in chartDatas.chartData{
                            print("\(chartData.text)")
                            print("\(chartData.percetnage)")
                        }
                    }
                }
                
            } catch {
                print("ERROR DECODING 2 ========\(error)")
            }
        }
    }
    
    }
    

