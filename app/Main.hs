module Main where
-- Factorial function using recursion and pattern matching
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Demonstrating higher-order function: map
-- Map applies the factorial function to a list of numbers
applyFactorial :: [Integer] -> [Integer]
applyFactorial xs = map factorial xs

add :: Integer -> Integer -> Integer
add x y = x + y

mult :: Double -> Double -> Double
mult x y = x * y

divide :: Double -> Double -> Double
divide x y = x / y

main :: IO ()
main = do
    -- Using factorial directly
    putStrLn "Factorial of 5:"
    print (factorial 5)
    
    -- Using map to apply factorial to a list of numbers
    putStrLn "Factorials of numbers in the list [1, 2, 3, 4, 5]:"
    print (applyFactorial [1, 2, 3, 4, 5])

    putStrLn "Numbers 1 through 3 added together: "
    print (foldr add 0 [1,2,3])
    let nums = [1,2,3]
    let firstValue = (*) (head nums) (head nums)

    putStrLn "Numbers 1 through 3 divided in a row: "
    print (foldl divide firstValue nums)
    let lastValue = (*) (last nums) (last nums)
    let reversedNums = reverse nums

    putStrLn "Numbers 3 through 1 divded together: "
    print (foldl divide lastValue reversedNums)

    putStrLn "Numbers 1 through 3 multiplied together: "
    print (foldl mult 1 nums)
    print (foldr mult 1 nums)
