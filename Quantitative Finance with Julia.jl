#### Quantitative Finance with Julia 

# Finance packages 

using Pkg
using QuantLib
using MarketData 

# My portfolio 

tickers = Array(["BPAC11.SA", "EQTL3.SA", "ELET3.SA", "WEGE3.SA", "BBAS3.SA", "KBLN11.SA", "ASAI3.SA", "HAPV3.SA"])

port = Array(1:length(tickers)) 

for i in eachindex(tickers)
    port[i] =  yahoo(tickers[i])
end 