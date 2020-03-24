module Main where

import Lib

main :: IO ()
main = do
  putStrLn "Geben Sie bitte eine Zahl ein (0 == Ende): "
  number <- readLn :: IO Double
  putStrLn ("square(" ++ show number ++ ") = " ++ show (square number))
  if number == 0
    then putStrLn "Ciao"
    else main

