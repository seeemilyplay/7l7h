import Data.List

type Cat = String

data CatLibrary = CatLibrary [Cat]
  deriving Show

borrow :: Cat -> CatLibrary -> CatLibrary
borrow x (CatLibrary xs) = CatLibrary (filter (/= x) xs)

giveBack :: Cat -> CatLibrary -> CatLibrary
giveBack x (CatLibrary xs) = CatLibrary (x:xs)

main :: IO ()
main =
  let catLibrary0 = CatLibrary ["Mr. Tiddles", "Dusty", "Tiger"]
      catLibrary1 = borrow "Dusty" catLibrary0
      catLibrary2 = borrow "Tiger" catLibrary1
      catLibrary3 = giveBack "Dusty" catLibrary2 in
  putStrLn (show [catLibrary0, catLibrary1, catLibrary2, catLibrary3])
