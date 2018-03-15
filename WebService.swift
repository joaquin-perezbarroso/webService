//
//  WebService.swift
//  WebServices
//
//  Created by Joaquin Perez on 15/03/2018.
//  Copyright © 2018 Joaquin Perez. All rights reserved.
//

import Foundation

class NetworkObject
{
    let urlString = "https://devops.jovaz21.tekisware.com/nodepop/apiv1"
    
    
    
    func postUser(email:String = "guest@foo.bar",password:String = "guest")
    {
        let url = URL(string: urlString + "/users/authenticate")
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        
        let httpBody = ["email":email,"password":password]
        let body = try! JSONSerialization.data(withJSONObject: httpBody, options: [])
        
        request.httpBody = body
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            let httpResponse = response as! HTTPURLResponse
            
            if httpResponse.statusCode == 200 {
                
                let dict = try! JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any]
                
                if let result = dict!["result"] as! [String:String]?
                {
                    if let token = result["token"]{
                       print(token)
                    }
                  
                }
                
              
                
            }
        }
        
        dataTask.resume()
        
    }
    
}
