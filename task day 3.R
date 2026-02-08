


calculate_bill <- function(price, quan) {
  
  discount <- 0
  
  total_bill <- price * quan
  
  if (total_bill > 2000) {
    discount <- total_bill * 0.1
    total_bill <- total_bill - discount
  }
  cat("Discount", discount)
  cat("Total Bill",total_bill)
  
  # Concatenate and return output
  return()
}

# Call the function without using print() around it
result <- calculate_bill(2000, 3)
print(result)

