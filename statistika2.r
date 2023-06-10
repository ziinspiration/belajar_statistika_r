#Menghitung Total
sum(data_sample)

#Menghitung rata-rata
mean(data_sample)

#Menghitung Median
median(data_sample)

#Menghiitung Modus
modus<-function(x){
ux<-unique(x)
ux[which.max(tabulate(match(x,ux)))]
}
modus(data_sample)

#Menghitung Nilai Variansi
var(data_sample)

#Menghitung Standar Deviasi
sd(data_sample)

#Menghitung Distibusi Normal >8.0
mean <- 8.704
sd <- 2.981218
x <- pnorm(8, mean, sd, lower.tail = FALSE)
print(x)


#membuat Grafik Distribusi Normal
library(ggplot2)
rata_rata <- 8.704
standar_deviasi <- 2.981218
a<- seq(-4, 16, by = 0.01)
b<- dnorm(a, mean=rata_rata, sd=standar_deviasi)
data<- data.frame(a,b)

ggplot(data, aes(x=a, y=b))+geom_line()+labs(x="Rentang sumbu", y = "Densitas Distribusi Normal", title ="Grafik Distribusi Normal")+ geom_vline(xintercept = 6, color="blue")+geom_point(x=6, y=dnorm(6, mean = rata_rata, sd=standar_deviasi), color="yellow", shape=16)+ geom_ribbon(aes(x=a, ymin=0, ymax=ifelse(x > 6, y, 0)), fill="darkblue", alpha=0.3)