library(rextendr)
library(microbenchmark)

p <- Sys.getenv("PATH")

# For mac
Sys.setenv(PATH = paste0("/Users/heruhandika/.cargo/bin:", p))

# For Windows
Sys.setenv(PATH = paste0("C:\\msys64\\mingw64\\bin", ";", p))

rextendr::rust_function("
    fn multiply(x: f64, y: f64) -> f64 {
       x * y
    }")

x = 1
y = 2
multiply(x,y)
