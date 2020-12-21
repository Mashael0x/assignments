
# Write a function that solves the Kims problem decision tree.

where <- c("Outdoors","Outdoors","Porch","Porch", "Indoors","Indoors")
weather <- c("Sun","Rain","Sun","Rain","Sun","Rain")
probabilites <- c(0.4,0.6,0.4,0.6,0.4,0.6)
cost <- c(100,0,90,20,40,50)

Kims_problem <- data.frame(where, weather, probabilites, cost)
Kims_problem

maximum_desicion <- function(Kims_problem){
  outcome = c()
  for(i in 1:nrow(Kims_problem)){
    outcome[i] = Kims_problem$probabilites[i]*Kims_problem$cost[i]
    
  }
  max_index <- which.max(outcome)
  print(paste0("the maximum value is: ", outcome[max_index]))
  print(paste0("Kim's Party will be: ", Kims_problem$where[max_index]))
 
}

maximum_desicion(Kims_problem)
