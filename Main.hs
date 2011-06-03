{-# LANGUAGE ForeignFunctionInterface, EmptyDataDecls #-}


import Foreign.C.Types


foreign import ccall safe "openWindow" openWindow 
	:: IO CInt

foreign export ccall "fibonacci" fibonacci 
	:: Int -> Int
	
foreign export ccall "fac" fac 
	:: Int -> Int

fibonacci :: Int -> Int
fibonacci n = fibs !! n
    where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)


fac :: Int -> Int
fac 0 = 1
fac n | n > 0 = n * fac (n-1)


main = do

    openWindow
    return ()