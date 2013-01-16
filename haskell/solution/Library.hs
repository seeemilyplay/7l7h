import Data.List

data Library a = Library [a]
  deriving Show

borrow :: (Eq a) => a -> Library a -> Library a
borrow x (Library xs) = Library (filter (/= x) xs)

giveBack :: a -> Library a -> Library a
giveBack x (Library xs) = Library (x:xs)

main :: IO ()
main =
  let catLibrary0 = Library ["Mr. Tiddles", "Dusty", "Tiger"]
      catLibrary1 = borrow "Dusty" catLibrary0
      catLibrary2 = borrow "Tiger" catLibrary1
      catLibrary3 = giveBack "Dusty" catLibrary2 in
  putStrLn (show [catLibrary0, catLibrary1, catLibrary2, catLibrary3])
