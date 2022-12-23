library(ggplot2)
library(plotly)
library(tidyverse)
library(rmarkdown)
library(knitr)

minutos <- 420:1160

compA <- function(x){
  return(0.05*x+34)
}

compB <- function(x){
  return(0.04*x+40)
}

costoA <- compA(minutos)
costoB <- compB(minutos)

tabla <- data.frame(Minutos = minutos, Costo_A = costoA, Costo_B = costoB)
View(tabla) # IMPORTANTE

fig <- plot_ly(
  data = tabla,
  x = ~minutos,
  y = ~costoA,
  name = "Compañia A",
  type= "scatter"
)

fig <- fig%>%add_trace(
  data = tabla,
  x = ~minutos,
  y = ~costoB,
  name = "Compañia B",
  type= "scatter"
)

fig

