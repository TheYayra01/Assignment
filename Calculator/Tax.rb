# Develop a tax calculator, accepts an amount and calculates the total , vat, nhil, covid levy inclusive

puts "Insert amount here: "
amount = gets.chomp.to_i


# Formula based on percentages on a shoprite receipt 
nhil = 0.025 * amount
covid_levy = 0.01 * amount
sub_total = amount + nhil + covid_levy
vat = 0.125 * sub_total
total = sub_total + vat


puts "Calculated Tax:"
puts "NHIL = #{nhil.round(2)}"
puts "Covid Levy = #{covid_levy.round(2)}"
puts "VAT = #{vat.round(2)}"
puts "Total = #{total.round(2)}"

