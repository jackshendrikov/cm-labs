TaxRate=[0:0.05:0.75];
hold on 

for Profitability = 0.1:0.3:1
    sim('RGR_Shendrikov_sim')
    plot(TaxRate, ScopeData(end,2:end))
    text(TaxRate(7), ScopeData(end,8),['\leftarrow' 'Рентабельність=' num2str(Profitability)]);  
    grid on
end 

hold off
