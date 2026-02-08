attendance_days_count = readline(prompt = "Enter the number of days: ")

attendance_days_count_numeric = as.numeric(attendance_days_count)

if(attendance_days_count_numeric >= 25){
  print("Discount: 35%")
}else if(attendance_days_count_numeric >= 20){
  print("Discount: 25%")
}else if(attendance_days_count_numeric >= 10){
  print("Discount: 15%")
}else if(attendance_days_count_numeric < 10){
  print("Discount: 5%")
}else {
  print("Cannot give the discount please contact samadhi sir")
}
