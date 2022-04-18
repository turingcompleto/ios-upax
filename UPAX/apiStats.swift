/*import Foundation
import Alamofire

class apiStats {
    private var urlServer: String
    private var manager: Session
    
    init(urlServer: String){
        self.urlServer = urlServer
        
        let configuration: URLSessionConfiguration = {
            let config = URLSessionConfiguration.default
            
            return config
        }()
        
        self.manager = Session(configuration: configuration)
    }
    
    func getStats(completionHandler: @escaping(apiObjectStats?) -> Void ){
        let urlService = "Stats"
        request(urlService: urlService, completionHandler: completionHandler)
    }
    
    private func request<T:Codable>(urlService: String, completionHandler: @escaping(T?) -> Void ){
        manager.request("\(self.urlServer)\(urlService)").validate().responseDecodable(of: T.self){
            response in guard let data = response.value
            else {return}
            completionHandler(data)
                                    
        }
    }
}
    */

