ehpar :: Int -> Bool
ehpar x = if even x then True 
            else False


main :: IO()
main = do
    number <- readLn :: IO Int
    print (ehpar number)