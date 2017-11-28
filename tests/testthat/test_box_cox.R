context("Box-cox transformations on non-numerics and string outputs")

#expect that all four will pass
test_that("Numerics work, and that the inverse gives the raw response (separate tests).", {
	expect_identical(box_cox_transform(1,0), 0)
	expect_identical(box_cox_transform(3,2), 4)
	expect_identical(inverse_box_cox_transform(0,0), 1)
	expect_identical(inverse_box_cox_transform(4,2),3)
})

#expect that both will pass
test_that("Logicals convert to numerics.", {
	logic_response = TRUE
	logic_param = FALSE
	expect_identical(box_cox_transform(logic_response, logic_param), box_cox_transform(1,0))
	expect_identical(inverse_box_cox_transform(logic_response, logic_param), inverse_box_cox_transform(1,0))
})

#expect that this will pass
test_that("The string output is correct (custom 'error' message).",{
	string <- "Cannot log transform response < 0, check inputs"
	expect_that(box_cox_transform(-1,0), matches(string))
	expect_that(box_cox_transform(-1,0), is_a("chr"))

})

#expect that this will fail
test_that("The string output is correct (custom 'error' message).",{
	string <-"Number not real, check input"
	expect_that(inverse_box_cox_transform(1,-1), matches(string))
	expect_that(inverse_box_cox_transform(1,-1), is_a("chr"))
})
