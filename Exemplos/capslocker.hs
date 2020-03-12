-- import Control.Monad  
-- import Data.Char  

-- main = forever $ do  
--     putStr "Give me some input: "  
--     l <- getLine  
--     putStrLn $ map toUpper l  



-- import Data.Char  
  
-- main = do  
--     contents <- getContents  
--     putStr (map toUpper contents)  



-- /// Vamos criar um programa que recebe alguma entrada e imprime somente as linhas que têm menos de 15 caracteres.///
main = do  
    contents <- getContents  
    putStr (shortLinesOnly contents)  
  
shortLinesOnly :: String -> String  
shortLinesOnly input = 
    let allLines = lines input  
        shortLines = filter (\line -> length line < 15) allLines  
        result = unlines shortLines  
    in  result