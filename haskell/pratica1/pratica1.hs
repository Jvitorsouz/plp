eh_vencedor :: String -> Int -> String -> Int -> String
eh_vencedor x1 y1 x2 y2
    | x1 == "fogo" && x2 == "planta" = "vencedor: carta 1"
    | x1 == "planta" && x2 == "fogo" = "vencedor: carta 2"
    | x1 == "agua" && x2 == "fogo" = "vencedor: carta 1"
    | x1 == "fogo" && x2 == "agua" = "vencedor: carta 2"
    | x1 == "planta" && x2 == "agua" = "vencedor: carta 1"
    | x1 == "agua" && x2 == "planta" = "vencedor: carta 2"
    | otherwise = comparaPoder y1 y2

comparaPoder :: Int -> Int -> String
comparaPoder x y 
    | x > y = "vencedor: carta 1"
    | y > x = "vencedor: carta 2"
    | otherwise = "empate"

main :: IO()
main = do 
    print "entrada: "
    x1 <- getLine
    y1 <- readLn :: IO Int
    x2 <- getLine
    y2 <- readLn :: IO Int
    print (eh_vencedor x1 y1 x2 y2)
