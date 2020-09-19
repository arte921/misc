
{-repeat 0 _ = return()
repeat n code = 
    do
        code
        repeat (n - 1) code

-}