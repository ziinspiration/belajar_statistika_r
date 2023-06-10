# Menghitung Mean
hitung_mean <- function(data) {
  mean_value <- mean(data)
  return(mean_value)
}

# Menghitung Median
hitung_median <- function(data) {
  median_value <- median(data)
  return(median_value)
}

# Menghitung Modus
hitung_modus <- function(data) {
  table_data <- table(data)
  modus <- as.numeric(names(table_data)[table_data == max(table_data)])
  return(modus)
}

# Menghitung Varians
hitung_varians <- function(data) {
  varians_value <- var(data)
  return(varians_value)
}

# Menghitung Standar Deviasi
hitung_standar_deviasi <- function(data) {
  standar_deviasi_value <- sd(data)
  return(standar_deviasi_value)
}

# Data Contoh
data <- c(10, 15, 20, 25, 30, 35, 40, 45, 50)

# Menghitung statistik
mean_value <- hitung_mean(data)
median_value <- hitung_median(data)
modus_value <- hitung_modus(data)
varians_value <- hitung_varians(data)
standar_deviasi_value <- hitung_standar_deviasi(data)

# Menampilkan hasil
print("Data : ")
print(data)

print("Mean : ")
print(mean_value)

print("Median : ")
print(median_value)

print("Modus : ")
print(modus_value)

print("Varians : ")
print(varians_value)

print("Standar Deviasi : ")
print(standar_deviasi_value)

