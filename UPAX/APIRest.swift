import Foundation
import Alamofire

class APIRest {
   fileprivate var baseUrl = ""
    
    init (baseUrl: String){
        self.baseUrl = baseUrl
    }
    
    func getAllData(endPoint: String){
        AF.request(self.baseUrl + endPoint, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response {
            (responseData) in
            guard let data = responseData.data else {return}
            do{
                let data = try JSONDecoder().decode(Root.self, from: data)
                for Data in data.questions {
                    print("questions ====\(Data)")
                }
            } catch{
                print("Error decoding === \(error)")
            }
            }
        }
    }
    

