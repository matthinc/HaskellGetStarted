module Lib
    ( someFunc
    , square
    , ggT
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

square :: Double -> Double
square n = n * n

ggT :: Integer -> Integer -> Integer
ggT a b = do
  if b == 0
    then a
    else if a == 0
      then b
      else if a > b
        then ggT (a - b) b
        else ggT a (b - a)
