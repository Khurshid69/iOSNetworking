//
//  AFHttp.swift
//  iOSNetworking
//
//  Created by user on 14/11/21.
//

import Foundation
import Alamofire

private let IS_TESTER = true
private let DEP_SER = "https://dummy.restapiexample.com/"
private let DEV_SER = "https://dummy.restapiexample.com/"

let headers: HTTPHeaders = [
    "Accept": "application/json",
]

class AFHttp {
    
    // MARK : - AFHttp Requests
    
    
    // MARK: get
    class func get(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .get, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    // MARK: post
    class func post(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .post, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    // MARK: put
    class func put(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .put, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    // MARK: delete
    class func del(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .delete, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    
    // MARK : - AFHttp Methods
    class func server(url: String) -> URL{
        if(IS_TESTER){
            return URL(string: DEV_SER + url)!
        }
        return URL(string: DEP_SER + url)!
    }
    
    // MARK : - AFHttp Apis
    static let API_POST_LIST = "api/v1/employees"
    static let API_POST_SINGLE = "api/v1/employee/1" //id
    static let API_POST_CREATE = "api/v1/create"
    static let API_POST_UPDATE = "" //id
    static let API_POST_DELETE = "posts/" //id
    
    
    // MARK : - AFHttp Params
    class func paramsEmpty() -> Parameters {
        let parameters: Parameters = [
            :]
        return parameters
    }
    
//    class func paramsPostCreate(post: Employee) -> Parameters {
//        let parameters: Parameters = [
//            "id": post.id!,
//            "employee_name": post.employe_name!,
//            "employee_salary": post.employe_salary!,
//            "employee_age": post.employe_age!,
//            "profile_image": post.profile_image!
//        ]
//        return parameters
//    }
//    
//    class func paramsPostUpdate(post: Employee) -> Parameters {
//        let parameters: Parameters = [
//            "id": post.id!,
//            "employee_name": post.employe_name!,
//            "employee_salary": post.employe_salary!,
//            "employee_age": post.employe_age!,
//            "profile_image": post.profile_image!
//        ]
//        return parameters
//    }
//    
}
