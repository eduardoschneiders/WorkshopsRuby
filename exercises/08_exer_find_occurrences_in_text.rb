# encoding: UTF-8

teste = 'Eduardo sdfasdf Matheus Schneiders '
bla = teste.scan(/([A-Z]\w{1,})/).to_a

puts bla[0]

