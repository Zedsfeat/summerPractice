import Foundation
import UIKit

struct Contact {
    let name: String
    let image: UIImage
    let number: Int
}


struct Sourse {
    static func makeContacts() -> [Contact] {[
        .init(name: "Нурлан Сабуров", image: UIImage(named: "next")!, number: 89997776655),
        .init(name: "Евгений Чебатков", image: UIImage(named: "next")!, number: 84445553399)
    ]}
}
