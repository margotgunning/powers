context("Squaring and cubing non-numerics")

#expect to pass; this is from the class notes
test_that("At least numeric values work.", {
	num_vec <- c(0, -4.6, 3.4)
	expect_identical(square(numeric(0)), numeric(0))
	expect_identical(square(num_vec), num_vec^2)
})


#expect to pass; this is from the class ntoes
test_that("Logicals automatically convert to numeric.", {
	logic_vec <- c(TRUE, TRUE, FALSE)
	expect_identical(square(logic_vec), logic_vec^2)
})

#expect to pass; this is the cube version of above
test_that("The cube fuction also works for numeric values.", {
	num_vec2 <- c(1,3,6)
	expect_identical(cube(numeric(0)), numeric(0))
	expect_identical(cube(num_vec2), num_vec2^3)
})

#expect to pass; this is the cube version of above
test_that("Logicals automatically convert to numeric.", {
	logic_vec <- c(TRUE, TRUE, FALSE)
	expect_identical(cube(logic_vec), logic_vec^3)
})

#expect to pass
test_that("What happens with a string?",{
	string <- "Squared vector"
	expect_that(square(string),
				throws_error("non-numeric argument"))
})

#expect to fail
test_that("That output is not a string",{
	expect_that(cube(3), is_a("chr"))
})
