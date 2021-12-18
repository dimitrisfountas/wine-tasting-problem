library('gtools')
cor_Wine=c("a","b","c","d","e")
comb=permutations(5,5,cor_Wine)
n=factorial(5)
tobs=3
t=numeric(120)
for (i in 1:120) {
  s=0
  for (j in 1:5) {
    if (comb[i,j]==cor_Wine[j]){
      s=s+1
    }
  }
  t[i]=s
  }
pvalue=length(t[tobs<=t])/n
pvalue

