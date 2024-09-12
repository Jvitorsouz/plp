{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
menordistancia :: [Int] -> Int
menordistancia x = menorNumero x (maximum x)

menorNumero :: [Int] -> Int -> Int
menorNumero [x] y = y 
menorNumero (x:xs) y = if menor < y then menorNumero xs menor 
                    else menorNumero xs y
                    where menor = (head xs) - x

main :: IO()
main = do
    x1 <- readLn :: IO [Int]
    print(menordistancia x1)
