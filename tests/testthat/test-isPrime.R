test_that('use',{
  expect_equal(isPrime(2), TRUE)
  expect_equal(isPrime(4), FALSE)
})

test_that('abuse', {
  expect_type(isPrime(2), 'logical')
  expect_error(isPrime('Hello World'),'x must be numeric value')
})
