import SwiftUI

struct Product: Identifiable, Hashable, Equatable {
    var id = UUID().uuidString
    
    var name: String
    var image: String
    
    var price: Int
    var quantity: Int
}

var fruits: [Product] = [
    .init(name: "Яблоко", image: "🍎", price: 40, quantity: 1),
    .init(name: "Груша", image: "🍐", price: 100, quantity: 1),
    .init(name: "Банан", image: "🍌", price: 70, quantity: 1),
    .init(name: "Виноград", image: "🍇", price: 80, quantity: 1),
    .init(name: "Манго", image: "🥭", price: 230, quantity: 1),
    .init(name: "Мандарин", image: "🍊", price: 75, quantity: 1),
    .init(name: "Киви", image: "🥝", price: 130, quantity: 1),
    .init(name: "Лимон", image: "🍋", price: 100, quantity: 1),
    .init(name: "Кокос", image: "🥥", price: 185, quantity: 1),
    .init(name: "Ананас", image: "🍍", price: 300, quantity: 1),
    .init(name: "Персик", image: "🍑", price: 205, quantity: 1),
    .init(name: "Арбуз", image: "🍉", price: 300, quantity: 1),
    .init(name: "Дыня", image: "🍈", price: 100, quantity: 1),
    .init(name: "Вишня", image: "🍒", price: 300, quantity: 1),
    .init(name: "Клубника", image: "🍓", price: 300, quantity: 1),
    .init(name: "Черника", image: "🫐", price: 300, quantity: 1)
]

var vegetables: [Product] = [
    .init(name: "Помидор", image: "🍅", price: 170, quantity: 1),
    .init(name: "Морковь", image: "🥕", price: 20, quantity: 1),
    .init(name: "Огурец", image: "🥒", price: 85, quantity: 1),
    .init(name: "Батат", image: "🍠", price: 120, quantity: 1),
    .init(name: "Перец", image: "🫑", price: 200, quantity: 1),
    .init(name: "Лук", image: "🧅", price: 40, quantity: 1),
    .init(name: "Капуста", image: "🥬", price: 100, quantity: 1),
    .init(name: "Картофель", image: "🥔", price: 35, quantity: 1),
    .init(name: "Баклажан", image: "🍆", price: 70, quantity: 1),
    .init(name: "Авокадо", image: "🥑", price: 340, quantity: 1),
    .init(name: "Брокколи", image: "🥦", price: 190, quantity: 1),
    .init(name: "Кукуруза", image: "🌽", price: 150, quantity: 1),
    .init(name: "Чеснок", image: "🧄", price: 210, quantity: 1)
]
