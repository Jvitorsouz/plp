contaNivel :: Int -> Int -> Int
contaNivel x y = if y > x then 0 else 1 + contaNivel x (dobro y)

dobro :: Int -> Int
dobro x = 2 * x

main :: IO()
main = do
    x1 <- readLn :: IO Int 
    x2 <- readLn :: IO Int
    print (contaNivel x1 x2)
