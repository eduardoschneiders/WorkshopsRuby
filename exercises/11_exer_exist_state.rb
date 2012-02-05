# encoding: UTF-8

#Return the existence of a state of Brasil
def state_exist? state

	#Set all the UF
	states_description = Array.new()
	states_description = [
		{"UF" => "AC", "name" => "Acre", "capital" => "Rio Branco"},
		{"UF" => "AL", "name" => "Alagoas", "capital" => "Maceió"},
		{"UF" => "AP", "name" => "Amapá", "capital" => "Macapá"},
		{"UF" => "AM", "name" => "Amazonas", "capital" => "Manaus"},
		{"UF" => "BA", "name" => "Bahia", "capital" => "Fortaleza"},
		{"UF" => "CE", "name" => "Ceará", "capital" => "Salvador"},
		{"UF" => "DF", "name" => "Distrito Federal", "capital" => "Brasília"},
		{"UF" => "ES", "name" => "Espírito Santo", "capital" => "Vitória"},
		{"UF" => "GO", "name" => "Goiás", "capital" => "Goiânia"},
		{"UF" => "MA", "name" => "Maranhão", "capital" => "São Luís"},
		{"UF" => "MT", "name" => "Mato Grosso", "capital" => "Cuiabá"},
		{"UF" => "MS", "name" => "Mato Grosso do Sul", "capital" => "Campo Grande"},
		{"UF" => "MG", "name" => "Minas Gerais", "capital" => "Belo Horizonte"},
		{"UF" => "PA", "name" => "Pará", "capital" => "Belém"},
		{"UF" => "PB", "name" => "Paraíba", "capital" => "João Pessoa"},
		{"UF" => "PR", "name" => "Paraná", "capital" => "Curitiba"},
		{"UF" => "PE", "name" => "Pernambuco", "capital" => "Recife"},
		{"UF" => "PI", "name" => "Piauí", "capital" => "Teresina"},
		{"UF" => "RJ", "name" => "Rio de Janeiro", "capital" => "Rio de Janeiro"},
		{"UF" => "RN", "name" => "Rio Grande do Norte", "capital" => "Natal"},
		{"UF" => "RS", "name" => "Rio Grande do Sul", "capital" => "Porto Alegre"},
		{"UF" => "RO", "name" => "Rondônia", "capital" => "Porto Velho"},
		{"UF" => "RR", "name" => "Roraima", "capital" => "Boa Vista"},
		{"UF" => "SC", "name" => "Santa Catarina", "capital" => "Florianópolis"},
		{"UF" => "SP", "name" => "São Paulo", "capital" => "São Paulo"},
		{"UF" => "SE", "name" => "Sergipe", "capital" => "Aracaju"},
		{"UF" => "TO", "name" => "Tocantins", "capital" => "Palmas"}

	]

	#Make the verification and RETURN
	for state_description in states_description
		if state_description["UF"] == state
			return  "O estado do #{state_description["name"]} (#{state_description["UF"]}) - Capital: #{state_description["capital"]} existe!"
		end
	end

	return FALSE
end

puts "Digite uma unidade federativa do Brasil: "
state = gets.chomp.upcase

#Take the return about the state existence
response = state_exist? state

#Give the answare according to the response
puts response != FALSE ? "#{response}" : "O estado #{state} não existe"