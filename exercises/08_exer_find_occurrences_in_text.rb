# encoding: UTF-8

string = "
O Facebook apresentou, na quarta-feirFois que as ações da empresa começarem a ser negociadas com o IPO, o valor de mercado da empresa pode chegar a um patamar entre US$ 75 bilhões e US$ 100 bilhões, o que colocaria o Facebook na sétima posição entre as empresas do setor de tecnologia das Américas, atrás dos gigantes Apple, Microsoft e IBM.
Na opinião de alguns especialistas, essa previsão de valor de mercado é exagerada. Se a estimativa se confirmar, no entanto, a empresa ainda deverá valer pouco mais de \"meio Google\": de acordo com levantamento feito pela consultoria Economatica a pedido do G1, a empresa de Larry Page e Sergey Brin encerrou o mês de janeiro valendo US$ 188 bilhões.
Assim, o Facebook teria o segundo maior valor de mercado das Américas entre as empresas dedicadas à internet, atrás apenas do Google.
"

string = "
O Facebook apresentou, na quarta-feira (1º), os documentos aos órgãos regulatórios para fazer uma oferta inicial de ações (o chamado IPO), prevista para maio, em que espera arrecadar US$ 5 bilhões. A expectativa do mercado é que o IPO seja o maior para uma empresa de internet, superando o de US$ 2 bilhões do Google, feita em agosto de 2004.
De acordo a estimativa de analistas, depois que as ações da empresa começarem a ser negociadas com o IPO, o valor de mercado da empresa pode chegar a um patamar entre US$ 75 bilhões e US$ 100 bilhões, o que colocaria o Facebook na sétima posição entre as empresas do setor de tecnologia das Américas, atrás dos gigantes Apple, Microsoft e IBM.
Na opinião de alguns especialistas, essa previsão de valor de mercado é exagerada. Se a estimativa se confirmar, no entanto, a empresa ainda deverá valer pouco mais de \"meio Google\": de acordo com levantamento feito pela consultoria Economatica a pedido do G1, a empresa de Larry Page e Sergey Brin encerrou o mês de janeiro valendo US$ 188 bilhões.
Com esta avaliação, o Facebook teria o segundo maior valor de mercado das Américas entre as empresas dedicadas à internet, atrás apenas do Google.
"

#Get all the Authors
factories =  string.scan(/[A-Z]\w{3,}/).uniq

puts "Autores encontrados: #{factories.join(', ')} \n\n"

#Make the counting
factoriesSearch = Array.new()
factoriesSearch = "Facebook", "Google", "IBM", "Apple", "Microsoft"

rx = /#{factoriesSearch.join("|")}/
records = string.scan(rx)

#teste = Hash.new()
puts "Contagem: "
factoriesSearch.each do |value|
	#teste[value] = records.count(value)
	print "#{value}: #{records.count(value)} "
end
puts "\n"

#ordenado = teste.sort {|a,b| b[1]<=>a[1]}
#print "#{ordenado.}"


#find by values
 rx = /US\$ \d* bilhões/
 puts "\nValores encontrados: #{string.scan(rx).join(', ')}"
puts "\n"

rx = /\w{4,}/
puts "Foram encontradas #{string.scan(rx).count} palavras"