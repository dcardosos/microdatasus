test_that("sinasc works at 2016, 6-7", {
  sinasc <- fetch_datasus(year_start = 2016, year_end = 2017, uf = "AC", information_system = "SINASC")
  sinasc <- process_sinasc(data = sinasc, municipality_data = TRUE)
  expect_true(class(sinasc) == "data.frame")
})
