module Main where

toString :: Int -> String
toString n
    | mod n 15 == 0 = "FizzBuzz"
    | mod n 5 == 0 = "Buzz"
    | mod n 3 == 0 = "Fizz"
    | otherwise = show n

main :: IO ()
main = putStrLn $ mconcat $ fmap ((++) "\n" . toString) [1 .. 100]
