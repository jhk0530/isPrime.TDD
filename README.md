# :yellow_heart: isPrime.TDD
Check given number is prime number with Test Driven Development in R language.


## :clipboard: Prerequisites
* [R](https://www.r-project.org/) - 3.6.2
* [devtools](https://devtools.r-lib.org/) - 2.2.1.9000
* [usethis](https://usethis.r-lib.org/) - 1.5.1.9000
* [testthat](https://testthat.r-lib.org/) - 2.3.1


## :rocket: Note
* I learned from [this Video tutorial](https://www.youtube.com/watch?v=uU9e4nLfSu8)<br>
* For more information about `testthat` visit this [reference](https://testthat.r-lib.org/reference/index.html)<br>

## :art: Process

<img src = 'https://user-images.githubusercontent.com/6457691/72229576-155d9100-35f3-11ea-9d01-56a773111f5e.png' width = 800></img>

## :tulip: Steps

![#ffaf40](https://placehold.it/15/ffaf40/000000?text=+) Make package with name (isPrime.TDD)

![#4b4b4b](https://placehold.it/15/4b4b4b/000000?text=+) Make isPrime.R file 

```r 
# isPrime.R

## EMPTY
```

![#ff3838](https://placehold.it/15/ff3838/000000?text=+) Make test 

* make test environment with `usethis::use_test('isPrime')` first
* there's no law with test creating, but I think basic result with working example could be good option

```r
# test-isPrime.R
test_that('use', {
 expect_equal(isPrime(2), TRUE) # 2 is prime number
 expect_equal(isPrime(4), FALSE) # 4 isnot prime number
})
```

![#4b4b4b](https://placehold.it/15/4b4b4b/000000?text=+) Run test (windows : `ctrl`+`shift`+`t`), and Fail it.

<img src= 'https://user-images.githubusercontent.com/6457691/72229924-67071b00-35f5-11ea-91cf-0586989cb55f.png'></img>

![#32ff7e](https://placehold.it/15/32ff7e/000000?text=+) Since there's no function, we fix it until pass test with minimal efforts
 1) make `isPrime` function
 2) make `isPrime(2)` returns `TRUE`
 3) make `isPrimie(4)` returns `FALSE`

```r
# isPrime.R
isPrime = function(x){
  if(x==2){return(TRUE)}
  for(i in 2:(x-1)){
    if(x%%i==0)return(FALSE)
  }
  return(TRUE)
}
```

![#4b4b4b](https://placehold.it/15/4b4b4b/000000?text=+) Pass on test

<img src='https://user-images.githubusercontent.com/6457691/72230013-1e9c2d00-35f6-11ea-930b-3a8851f1fe4b.png'></img>

*i'm still confused in ![#17c0eb](https://placehold.it/15/17c0eb/000000?text=+) refactoring code part if you have advice, please let me know hwanistic@gmail.com*


![#ff3838](https://placehold.it/15/ff3838/000000?text=+) Make another test with check format (or error)

```r
# test-isPrime.R
test_that('use',{
  expect_equal(isPrime(2), TRUE)
  expect_equal(isPrime(4), FALSE)
})

test_that('abuse', {
  expect_type(isPrime(2), 'logical')
  expect_error(isPrime('Hello World'),'x must be numeric value')
})
```

![#4b4b4b](https://placehold.it/15/4b4b4b/000000?text=+) Run test (windows : `ctrl`+`shift`+`t`), and Fail it.

<img src='https://user-images.githubusercontent.com/6457691/72230113-d2052180-35f6-11ea-8e3e-9808d3212874.png'></img>

![#32ff7e](https://placehold.it/15/32ff7e/000000?text=+) Fix it until pass test with minimal efforts
 1) check `isPrime` function returns `logical` that is either `TRUE` or `FALSE`
 2) make error message with `x must be numeric value` when `x` is not numeric value.
 
```r
# isPrime.R
isPrime = function(x){
  if(!is.numeric(x)){
    stop('x must be numeric value', call. = FALSE)
  }
  if(x==2){return(TRUE)}
  for(i in 2:(x-1)){
    if(x%%i==0)return(FALSE)
  }
  return(TRUE)
}
```

![#4b4b4b](https://placehold.it/15/4b4b4b/000000?text=+) Pass on test

<img src='https://user-images.githubusercontent.com/6457691/72230226-68d1de00-35f7-11ea-9375-aa0f3ec917cd.png'></img>

![#cd84f1](https://placehold.it/15/cd84f1/000000?text=+) I think more improvement can not possible, so finish this and build package. (windows : `ctrl` + `shift` + `b`)

## :memo: License
Copyright :copyright: 2019 Jinhwan Kim
This project is [MIT](https://opensource.org/licenses/MIT) licensed

*This README was generated with :two_hearts: by [shinyReadme](http://github.com/jhk0530/shinyReadme)*
