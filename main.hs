{-# LANGUAGE CApiFFI #-}

import ExportedFuncs

foreign import capi safe "main.h cSideApi" cSideApi :: IO ()

main = cSideApi
