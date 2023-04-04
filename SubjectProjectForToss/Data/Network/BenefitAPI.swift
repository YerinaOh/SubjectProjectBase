//
//  BenefitAPI.swift
//  SubjectProjectForToss
//
//  Created by ohyesrina on 2023/04/05.
//

import Foundation
import Moya

enum NetworkingError: Error {
    case error(String)
    case defaultError
    
    var message: String {
        switch self {
        case let .error(msg):
            return msg
        case .defaultError:
            return "잠시 후에 다시 시도해주세요."
        }
    }
}

enum BenefitAPI {
    case getBenefitList(page: Int)
    case random
}

extension BenefitAPI: TargetType {
    var baseURL: URL {
        return URL(string: "https://api.punkapi.com/v2/beers")!
    }

    var path: String {
        switch self {
        case .random:
            return "/random"
        default:
            return ""
        }
    }

    var method: Moya.Method {
        return .get
    }

    var task: Task {
        switch self {
        case let .getBenefitList(page):
            return .requestParameters(parameters: ["page": page], encoding: URLEncoding.queryString)
        default:
            return .requestPlain
        }
    }

    var sampleData: Data {
        switch self {
        case .getBenefitList:
            return stubbedResponse("BeerList")
        case .random:
            return stubbedResponse("RandomBeer")
        }
    }

    var headers: [String: String]? {
        return nil
    }

    func stubbedResponse(_ filename: String) -> Data! {
        let bundlePath = Bundle.main.path(forResource: "Stub", ofType: "bundle")
        let bundle = Bundle(path: bundlePath!)
        let path = bundle?.path(forResource: filename, ofType: "json")
        return (try? Data(contentsOf: URL(fileURLWithPath: path!)))
    }
}
