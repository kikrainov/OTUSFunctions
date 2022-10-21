import UIKit

/*
 Описание/Пошаговая инструкция выполнения домашнего задания:
1. функция складывает две целочисленных переменных - отдает на выходе сумму
2. функция принимает кортеж из числа и строки приводит число к строке и ввыводит в консоль резуультат
3. функция принимает на вход опциональное замыкание и целое число, выполняет замыкание только. в случае если число больше 0
4. функция принимает число на вход (год), проверить високосный ли он
 */



/*
1. функция складывает две целочисленных переменных - отдает на выходе сумму
*/

var a = 7
var b = 8

func sumInt(firstNum: Int, secondNum: Int) -> Int {
    return firstNum + secondNum
}

print(sumInt(firstNum: 7, secondNum: 8))


/*
2. функция принимает кортеж из числа и строки приводит число к строке и ввыводит в консоль резуультат
*/

func stringMaker(tuple: (Int, String)) -> String {
    return String(tuple.0)
}

print(stringMaker(tuple: (8, "Key test")))

/*
 3. функция принимает на вход опциональное замыкание и целое число, выполняет замыкание только. в случае если число больше 0
*/

func notZeroExecutor(closure: (() -> Int)?, number: Int) {
    if number > 0 {
        closure?()
    }
}

/*
 4. функция принимает число на вход (год), проверить високосный ли он
*/

func yearChecker(yearValue: Int) -> Bool {
    if yearValue % 4 != 0 {
        return false
    } else if yearValue % 100 != 0 {
        return true
    } else if yearValue % 100 == 0 {
        return false
    } else if yearValue % 400 == 0 {
        return true
    }
    return false
}
