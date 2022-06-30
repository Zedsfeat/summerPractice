protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}


struct Homework: HomeworkService{
    // Task A
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        return (x/y, x%y)
    }
    
    // Task B
    func fibonacci(n: Int) -> [Int] {
        func getFibonacci(n: Int) -> Int {
            if n <= 1{
                return n
            }
            return getFibonacci(n: n-1) + getFibonacci(n: n-2)
        }
        var fibonacciArray = [Int]()
        for i in 0...n-1{
            fibonacciArray.append(getFibonacci(n: i))
        }
        return fibonacciArray
    }
    
    // Task C
    func sort(rawArray: [Int]) -> [Int] {
        var array = rawArray
        for i in 0..<array.count - 1{
            for j in 0..<(array.count - i - 1){
                if array[j] > array[j+1]{
                    let temp = array[j]
                    array[j] = array[j+1]
                    array[j+1] = temp
                }
            }
        }
        return array
    }
    
    // Task D
    func firstLetter(strings: [String]) -> [Character] {
        var characterArray = [Character]()
        for i in strings{
            if let firstCharacter = i.first{
                characterArray.append(firstCharacter)
            }
        }
        return characterArray
    }
    
    // Task F
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int] {
        var filteredArray = [Int]()
        for i in array{
            if condition(i){
                filteredArray.append(i)
            }
        }
        return filteredArray
    }
}


let hm = Homework()
// Answer A
hm.divideWithRemainder(10, by: 3) // -> (3, 1)

// Answer B
hm.fibonacci(n: 10) // -> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

// Answer C
let unsortedArray = [7, 5, 2, 9, 1, 3]
hm.sort(rawArray: unsortedArray) // -> [1, 2, 3, 5, 7, 9]

// Answer D
let stringArray = ["abc", "bac", "cba"]
hm.firstLetter(strings: stringArray) // -> ["a", "b", "c"]

// Answer F
let unfilteredArray = [1, 2, 3, 4, 5, 6, 7, 8]
hm.filter(array: unfilteredArray) {$0 > 4} // -> [5, 6, 7, 8]
hm.filter(array: unfilteredArray) {$0 < 5} // -> [1, 2, 3, 4]

