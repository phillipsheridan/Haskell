sieve (p:lis) = p : sieve [n | n <- lis, mod n p /= 0]
primes = sieve [2..]
orderedSearch a (h:t) = if a < h then False else (if a == h then True else orderedSearch a t )
isTwinPrime a = (orderedSearch (a+2) primes) || (orderedSearch (a-2) primes)
twins = [x | x <- tprimes, snd(x) - fst(x) == 2]
tprimes = x `zip` y
  where
  y = tail x
  x = filter isTwinPrime primes
