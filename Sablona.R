SuperString = function(sek){
while (length(sek)>1) {
  
  
}
}

Prekryv = function(sek1,sek2){
  sek1 = strsplit(sek1,"")[[1]]
  sek2 = strsplit(sek2,"")[[1]]
 # for (i in 1:length(sek2)) {
 #   if (sek1[1]==sek2[i]){
 #     Prekryv[i] = sek2[i]
 #     
 #   }
  
  if(length(sek2)<length(sek1)){pom = sek1
  sek1=sek2
  sek2=pom}
  
  delka_kr = length(sek1)
  delka_dl = length(sek2)
  prekryv1 = 0
  prekryv2 = 0
  
  
  for (i in delka_kr:1) {
    if (isTRUE((sek1[1:i]==sek2[(delka_dl-i+1):delka_dl]))){prekryv1=i
    prekryv1n=sek1[1:i]
    break
    }
  }
  
  for (j in 1:delka_kr) {
    if(isTRUE((sek1[i:delka_kr] == sek2[1:(delka_kr-i+1)]))){
      prekryv2=i
      prekryv2n=sek1[i:delka_kr]
      break
    }
    
  }
  prekryv = c(prekryv1,prekryv2)
  
  return(prekryv)   
} 


  

 


MaticePrekryvu = function(sek){
  matice = numeric(length(sek),length(sek))
  x = 1
  for (i in 1:length(sek)) {
    for (j in x:length(sek)-1) {
      
      matice[i, j] = Prekryv(sek[i],sek[j+1])
      x=x+1
    }
    
  }
  
  
  return(matice)
}