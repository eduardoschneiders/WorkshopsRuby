# encoding: UTF-8

string = 'Eduardo sdfasdf Abdaca Matheus AAsdfsfdsdfs Eduardo Tes Schneiders'
string = "
O Facebook apresentou, na quarta-feira (1º), os documentos aos órgãos regulatórios para fazer uma oferta inicial de ações (o chamado IPO), prevista para maio, em que espera arrecadar US$ 5 bilhões. A expectativa do mercado é que o IPO seja o maior para uma empresa de internet, superando o de US$ 2 bilhões do Google, feita em agosto de 2004.
Segundo a estimativa de analistas, depois que as ações da empresa começarem a ser negociadas com o IPO, o valor de mercado da empresa pode chegar a um patamar entre US$ 75 bilhões e US$ 100 bilhões, o que colocaria o Facebook na sétima posição entre as empresas do setor de tecnologia das Américas, atrás dos gigantes Apple, Microsoft e IBM.
Na opinião de alguns especialistas, essa previsão de valor de mercado é exagerada. Se a estimativa se confirmar, no entanto, a empresa ainda deverá valer pouco mais de \"meio Google\": de acordo com levantamento feito pela consultoria Economatica a pedido do G1, a empresa de Larry Page e Sergey Brin encerrou o mês de janeiro valendo US$ 188 bilhões.
Assim, o Facebook teria o segundo maior valor de mercado das Américas entre as empresas dedicadas à internet, atrás apenas do Google.

"
factories =  string.scan(/[A-Z]\w{3,}/).uniq

print "Empresas encontradas: "

puts factories.join(",")
puts "\n\n"

unicFactories = factories.uniq

factoriesSearch = Array.new()
factoriesSearch = "Facebook", "Google", "IBM", "Apple", "Microsoft"

unicFactories.each do |value|

	if factoriesSearch.include? (value)
		#puts value
		#puts factories.count(value)

	end
end