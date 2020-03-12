-- main = putStrLn "Hello, World"


-- main = do  
--    putStrLn "Hello, what's your name?"  
--    name <- getLine  
--    putStrLn ("Hey " ++ name ++ ", you rock!")  


-- import Data.Char  
-- main = do  
--     putStrLn "What's your first name?"  
--     firstName <- getLine  
--     putStrLn "What's your last name?"  
--     lastName <- getLine  
--     let bigFirstName = map toUpper firstName  
--         bigLastName = map toUpper lastName  
--     putStrLn $ "hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?"  


-- main = do  
--     line <- getLine  
--     if null line  
--         then return ()  
--         else do  
--             putStrLn $ reverseWords line  
--             main  
  
-- reverseWords :: String -> String  
-- reverseWords = unwords . map reverse . words 


-- /// Usar return não faz com que o bloco de I/O do encerre sua execução ou algo parecido. ///
-- main = do  
--     return ()  
--     return "HAHAHA"  
--     line <- getLine  
--     return "BLAH BLAH BLAH"  
--     return 4  
--     putStrLn line  


-- // Tudo o que esses returns fazem é criar ações de I/O que na verdade fazem nada além de ter um resultado encapsulado //
-- main = do  
--     a <- return "hell"  
--     b <- return "yeah!"  
--     putStrLn $ a ++ " " ++ b  


-- // et em blocos do para associar valores a nomes
-- main = do  
--     let a = "hell"  
--         b = "yeah"  
--     putStrLn $ a ++ " " ++ b 


-- main = do   putStr "Hey, "  
--             putStr "I'm "  
--             putStrLn "Andy!"  


-- main = do   putChar 't'  
--             putChar 'e'  
--             putChar 'h' 


-- main = do   print True  
--             print 2  
--             print "haha"  
--             print 3.2  
--             print [3,4,3]  


-- main = do  
--     c <- getChar  
--     if c /= ' '  
--         then do  
--             putChar c  
--             main  
--         else return ()  


-- import Control.Monad  
-- main = do  
--     c <- getChar  
--     when (c /= ' ') $ do  
--         putChar c  
--         main  


-- main = do  
--     rs <- sequence [getLine, getLine, getLine]  
--     print rs  

-- /// Loop infinito  ///
-- import Control.Monad  
-- import Data.Char  
-- main = forever $ do  
--     putStr "Give me some input: "  
--     l <- getLine  
--     putStrLn $ map toUpper l 

-- // USo de forM //
-- import Control.Monad  
-- main = do  
--     colors <- forM [1,2,3,4] (\a -> do  
--         putStrLn $ "Which color do you associate with the number " ++ show a ++ "?"  
--         color <- getLine  
--         return color)  
--     putStrLn "The colors that you associate with 1, 2, 3 and 4 are: "  
--     mapM putStrLn colors