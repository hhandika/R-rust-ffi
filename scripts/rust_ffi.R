library(rextendr)
library(microbenchmark)

p <- Sys.getenv("PATH")

Sys.setenv(PATH = paste0("C:\\msys64\\mingw64\\bin", ";", p))

rextendr::rust_function("
    fn multiply(x: f64, y: f64) -> f64 {
       x * y
    }")
