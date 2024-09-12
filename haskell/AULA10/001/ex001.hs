premio :: Int -> Double
premio x 
    | x <= 10 = 100.00
    | x <= 20 = 200.00
    | x <= 30 = 300.00
    | x <= 40 = 400.00
    | otherwise = 500.00

main :: IO()
main = do
    pontos <- readLn :: IO Int
    print (premio pontos)