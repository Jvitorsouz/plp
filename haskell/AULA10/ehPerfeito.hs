ehPerfeito :: Int -> Bool
ehPerfeito x = if (somaDivisores x (x-1)) == x then True else False

somaDivisores :: Int -> Int -> Int
somaDivisores x 0 = 0
somaDivisores x y = if mod  x y == 0 then y + somaDivisores x (y-1) else 0 + somaDivisores x (y-1)

main :: IO()
main = do
    x <- readLn :: IO Int
    print (ehPerfeito x)