{-# LANGUAGE ForeignFunctionInterface #-}

module ExportedFuncs where

import Data.Time

foreign export ccall hsSomeExportedApi :: Int -> IO ()

hsSomeExportedApi :: Int -> IO ()
hsSomeExportedApi n = do
  putStrLn $ "Got: " <> show n
  print =<< getCurrentTime
