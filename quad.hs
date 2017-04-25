-- sqrt must have float params, sqrtOf9 = sqrt (fromIntegral num9)
-- squaring 9 ** 2 (9^2)
import Data.List
import System.IO
import Data.Char

quad :: [Char] -> [Char] -> [Char] -> (Double, Double)

quad ac bc cc
  | det > 0 = (((-b) +  sqrt(det)) / (2 * a), ((-b) - sqrt(det)) / (2 * a))
  | det == 0 = (((-b) + sqrt(det)) / (2 * a), ((-b) + sqrt(det))/ (2 * a))
  | otherwise = ((-b)/(2 * a), sqrt((-det)/(2*a)))
  where
  a = fromIntegral(read ac :: Int)
  b = fromIntegral(read bc :: Int)
  c = fromIntegral(read cc :: Int)
  det = (b ** 2) - 4 * a * c


showDetails :: (Double, Double) -> String
showDetails (x, y) = "(" ++ show x ++ "," ++ show y ++ ")"





main = do
  putStrLn "Enter a"
  a <- getLine
  putStrLn "Enter b"
  b <- getLine
  putStrLn "Enter c"
  c <- getLine
  putStrLn $ "The roots are " ++ showDetails(quad a b c)
