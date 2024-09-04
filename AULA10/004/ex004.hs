repeteN :: String -> Int -> IO()
repeteN x 1 = print x
repeteN x y = do
    print x
    repeteN x (y-1) 

main :: IO()
main = do
    name <- getLine
    num <- readLn :: IO Int
    repeteN name num