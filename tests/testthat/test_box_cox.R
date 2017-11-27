context("Box-cox transformations on non-numerics")

test_that("Numerics work, and that the inverse gives the raw response (separate tests).", {
	expect_identical(box_cox_transform(1,0), 0)
	expect_identical(box_cox_transform(1,0), 0)
	expect_identical(inverse_box_cox_transform(0,0), 1)
})

test_that("Logicals convert to numerics.", {
	logic_response = TRUE
	logic_param = FALSE
	expect_identical(box_cox_transform(logic_response, logic_param), box_cox_transform(1,0))
})
