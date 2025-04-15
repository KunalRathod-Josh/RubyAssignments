=begin
A CLI application for handling data of as many countries as we can. Example of what data that we can have:
Population
GDP(Gross Domestic Production)
States
Army Strength
State of country(developing, developed)
Etc.
On the basis of all these data we will be building modules to conceive various outputs like:
Whether that country will get a loan from the IMF (International Monetary Fund) or WB (World bank).
Whether the country can have a seat in the UN (United Nations) Security council.
Whether the country can win the war or not
=end

module LoanEligibilty
  def eligible_for_imf_loan
    gdp < 500 && status == "developing"
  end

  def eligible_for_worldbank_loan
    gdp < 1000 && population > 5
  end

end

module SecurityCouncilEligibility
  def can_be_in_security_council
    gdp > 3000 && army_strength >1000 && status == "developed"
  end
end

module WarEvalutor
  def ready_for_war
    army_strength > 500 && gdp >1000
  end
end

class Country

  include LoanEligibilty
  include WarEvalutor
  include SecurityCouncilEligibility

  attr_reader :name, :population, :gdp, :states, :army_strength, :status

  def initialize(name, population, gdp, states, army_strength, status)
    @name = name
    @population = population
    @gdp = gdp
    @states = states
    @army_strength = army_strength
    @status = status
  end

  def display_info
    puts
    puts "--- Country Details ---"
    puts "country: #{name}"
    puts "population: #{population} million"
    puts "gdp: $#{gdp} billion"
    puts "states: #{states.join(', ')}"
    puts "army strength: #{army_strength}k troops"
    puts "status: #{status}"
  end    

  india = Country.new("India", 1450, 3500, ["Maharashtra", "Gujarat"], 1500, "developing")
  china = Country.new("China", 1400, 17000, ["Chongqing", "Shanghai"], 2000, "developed")

  flag = true



  countries = {
  "india" => india,
  "china" => china
  }

  puts "\n--- Available Countries ---"
  countries.each do |key, value| puts key end

  puts "\n---Enter country name---"
  country_name = gets.chomp.downcase

  country = countries[country_name]
  country.display_info

  flag = false

  until flag == true

    puts "\n---Questions you can ask ---"
    puts "1. Will the country get a loan from the IMF?"
    puts "2. Will the country get a loan from the World Bank?"
    puts "3. Can the country have a seat in the UN Security Council?"
    puts "4. Can the country win a war?"
    puts "0. To change country"

    print "Enter your question number: "
    que_no = gets.chomp.to_i

    case que_no
    when 1
      puts "\nIMF Loan Eligibility: #{country.eligible_for_imf_loan ? 'Yes' : 'No'}"
    when 2
      puts "\nWorld Bank Loan Eligibility: #{country.eligible_for_worldbank_loan ? 'Yes' : 'No'}"
    when 3
      puts "\nUN Security Council Eligibility: #{country.can_be_in_security_council ? 'Yes' : 'No'}"
    when 4
      puts "\nWar Readiness: #{country.ready_for_war ? 'Yes' : 'No'}"
    when 0
      break 
    else
      puts "Invalid option"
    end
  end
end


  