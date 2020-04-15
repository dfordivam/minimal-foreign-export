{-# LANGUAGE ForeignFunctionInterface #-}

module ExportedFuncs where

import Data.Time

foreign export ccall hsSomeExportedApi :: Int -> IO ()

hsSomeExportedApi :: Int -> IO ()
hsSomeExportedApi n = do
  let
    loop = do
      putStrLn $ "Got: " <> show n
      print =<< getCurrentTime
      -- Uncommenting the following code fixes the issue
      -- if (n < 0) then loop else pure ()
  loop
