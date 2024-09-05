contaInteiros :: [Int] -> [Int]
contaInteiros [] = []
contaInteiros x = aux x x

aux :: [Int] -> [Int] -> [Int]
aux x (a:[]) = [quantidade x a]
aux x y = [quantidade x (head y)] ++ aux x (tail y)

quantidade :: [Int] -> Int -> Int
quantidade [] x = 0
quantidade a y = if head a == y 
    then 1 + quantidade (tail a) y
    else 0 + quantidade (tail a) y

main :: IO()
main = do
    lista <- readLn :: IO [Int]
    print (contaInteiros lista)