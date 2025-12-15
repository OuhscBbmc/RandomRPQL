# Example title is an incomplete sentence –no period

"Description" is a series of complete sentences. See
https://r-pkgs.org/man.html. Keep these documentation lines under 80 or
100 characters (I forgot which )

## Usage

``` r
dummy(x, y = 1L)
```

## Arguments

- x:

  Integer to increment. Required.

- y:

  Amount to increment. Defaults to 1. Required integer.

## Value

A [base::integer](https://rdrr.io/r/base/integer.html) that is
incremented by `y`.

## Details

Adds one.

## Note

Use "note" for something more obscure than a "description"?

## Author

Yutian Thompson

## Examples

``` r
dummy(0L)
#> Error in dummy(0L): could not find function "dummy"
dummy(1L)
#> Error in dummy(1L): could not find function "dummy"
dummy(0L, 2L)
#> Error in dummy(0L, 2L): could not find function "dummy"
```
