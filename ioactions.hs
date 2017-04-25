main = do
    putStrLn "Hello, world!"
    putStr "n = "
    str <- getLine
    putStrLn ("you entered " ++ str)
    let n = read str :: Int
    print (fun n)

fun x = (2*x+1)
