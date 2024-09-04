import Data.Char

concatenaTexto :: String -> String
concatenaTexto [] = ""
concatenaTexto (a:as) = if verificaNumero caracter then [a] ++ concatenaTexto as 
                        else concatenaN [a] (digitToInt caracter) ++ concatenaTexto (tail as)
                        where caracter = retornaCaracter as

verificaNumero :: Char -> Bool
verificaNumero ' ' = True
verificaNumero x = elem x ['a'..'z']

retornaCaracter :: String -> Char
retornaCaracter "" = ' '
retornaCaracter (x:xs) = x

concatenaN :: String -> Int -> String
concatenaN x 0 = ""
concatenaN x y = x ++ concatenaN x (y-1)


main :: IO()
main = do
    x1 <- getLine
    print (concatenaTexto x1)
