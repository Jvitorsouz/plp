import Data.Char (GeneralCategory(UppercaseLetter))
import Distribution.Simple.Utils (xargs)
-- Defina uma função que calcula o tamanho de uma lista

tamanhoL :: [t] -> Int
tamanhoL [] = 0 --caso base
tamanhoL (a:as) = 1 + tamanhoL as

--Defina uma função que encontra p i-ésimo elemento de uma lista
iesimo :: [t] -> Int -> t
iesimo (a:as) 1 = a
iesimo (a:as) n = iesimo as (n-1)

-- Defina uma função que encontra o maior elemento de uma lista de inteiros
-- estudar esse codigo
maiorList :: [Int] -> Int
maiorList [a] = a
maiorList (a:as) = if a > maiorList as then a else maiorList as

-- Eu quero uma função que recebe uma string e remove tudo, exceto as letras maiúsculas
removeNaoMaiscula :: String -> String
removeNaoMaiscula "" = ""
removeNaoMaiscula (a:as) = if  ehMaisculo a then [a]++(removeNaoMaiscula as) else  removeNaoMaiscula as

ehMaisculo :: Char -> Bool
ehMaisculo c = elem c ['A' .. 'Z']

-- usando list comprehesion
removeNaoMaiscula2 :: String -> String
removeNaoMaiscula2 str = [c | c <- str, elem c ['A'..'Z']]

-- Defina uma função que add uma quant de n espaçõs à esquerda de uma string
addEspaco :: String -> Int -> String
addEspaco x 0 = x
--addEspaco x n = addEspaco (" "++x) (n-1)
addEspaco x n = " " ++ addEspaco x (n-1)

--Defina uma função que recebe uma lista de palavras, e retorne a quantidade de palavras estão no plural
--palavras terminadas em s
plural :: [String] -> Int
plural l = length([s | s<- l, last s == 's'])







main :: IO()
main = do
    print(addEspaco "abc" 3)


