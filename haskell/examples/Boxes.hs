data Box a = Box a

unpack :: Box a -> a
unpack (Box x) = x

main :: IO ()
main =
  putStrLn (unpack (Box "surprise!"))
