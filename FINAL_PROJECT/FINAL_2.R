p=numeric(100)
for (k in 1:100) {
  Cor_wine=c(letters[1:10])
  T=-4
  B=999
  Tobs=numeric(B)
  for (i in 1:B) {
    Wine=sample(Cor_wine)
    s=0
    for (j in 1:10) {
      if (Wine[j]==Cor_wine[j]){
        s=s+1
      }
    }
    Tobs[i]=-s
  }
  Pvalue=(length(Tobs[Tobs<=T])+1)/B
  p[k]=Pvalue
}
p
length(p[p>0.05])
hist(p)
shapiro.test(p)
