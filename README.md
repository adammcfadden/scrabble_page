When the user gives a letter to the program, the program will return the scrabble score of that letter.

When the user gives a word to the program, the program returns the cumulative scrabble score of all of the letters in that word as a fixnum.

The scores of each letter are as follows.

```
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10
```

For example:

```ruby
> path.scrabble()
> 9
```
