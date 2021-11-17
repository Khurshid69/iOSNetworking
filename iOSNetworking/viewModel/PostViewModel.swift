//
//  PostViewModel.swift
//  iOSNetworking
//
//  Created by user on 15/11/21.
//

//import Foundation
//import Alamofire
//
//
//struct PostViewModel {
//var posts = [Employee]()
//
////func apiPostList(){
////
////
////    AFHttp.get(url: AFHttp.API_POST_LIST, params: AFHttp.paramsEmpty()) { response in
////        switch response.result {
////        case .success:
////            let data = try JSONDecoder().decode([Employee].self, from: data)
////
////        case let .failure(error):
////            print(error)
////        }
////    }
////
////}
//func apiPostSingle(id: Int){
//    AFHttp.get(url: AFHttp.API_POST_SINGLE + String(id), params: AFHttp.paramsEmpty()) { response in
//        switch response.result {
//        case .success:
//            print(response.result)
//        case let .failure(error):
//            print(error)
//        }
//    }
//}
//func apiPostCreate(post: Employee){
//    AFHttp.post(url: AFHttp.API_POST_CREATE, params: AFHttp.paramsPostCreate(post: post)) { response in
//        switch response.result {
//        case .success:
//            print(response.result)
//        case let .failure(error):
//            print(error)
//        }
//    }
//}
//func apiPostUpdate(post: Employee){
//    AFHttp.put(url: AFHttp.API_POST_UPDATE + String(post.id!), params: AFHttp.paramsPostUpdate(post: post)) { response in
//        switch response.result {
//        case .success:
//            print(response.result)
//        case let .failure(error):
//            print(error)
//        }
//    }
//}
//
//func apiPostDelete(post: Employee){
//    AFHttp.del(url: AFHttp.API_POST_DELETE + String(post.id!), params: AFHttp.paramsEmpty()) { response in
//        switch response.result {
//        case .success:
//            print(response.result)
//        case let .failure(error):
//            print(error)
//        }
//    }
//}
//}
