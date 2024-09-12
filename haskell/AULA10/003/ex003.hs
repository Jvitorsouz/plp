inverte :: IO()
inverte = do
    num <- readLn :: IO Int
    if num > -1 then do
        inverte
        print num
        else print "Invertidos"

main :: IO()
main = inverte