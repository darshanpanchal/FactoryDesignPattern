import UIKit

var greeting = "Hello, playground"

protocol Television{
    func manufactureTV()
}
class Sony:Television{
    
    func manufactureTV(){
        print("Sony Manufacture")
    }
}

class Samsung:Television{
    func manufactureTV(){
        print("Samsung Manufacture")
    }
}
class Apple:Television{
    func manufactureTV(){
        print("Apple Manufacture")
    }
}
enum TVFactory{
    case apple
    case sony
    case samsung
}
protocol TVFactoryDelegate{
    func manufacturingTVForFactory(factory:TVFactory)-> Television
}
class  TVFactoryManufacture:TVFactoryDelegate{
    func manufacturingTVForFactory(factory: TVFactory) -> Television {
            switch factory {
            case .sony:
                return Sony()
            case .samsung:
                return Samsung()
            case .apple:
                return Apple()
            }
    }
}

let manufacture = TVFactoryManufacture()
let manufacturingSony = manufacture.manufacturingTVForFactory(factory: .sony)
manufacturingSony.manufactureTV()


