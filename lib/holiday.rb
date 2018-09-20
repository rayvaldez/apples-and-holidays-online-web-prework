require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each { |holiday, supplies| supplies << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring].each { |holiday, supplies| supplies << supply}
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array
      # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
      holiday.each do |holiday, supplies|
        x = holiday.to_s.split("").map { |x| x == "_" ? x = " " : x }.join
        z = x.split.each { |y| y.capitalize! }.join(" ")
          puts "  #{z}: #{supplies.join(", ")}"
        end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
    holiday_hash.each do |season, holiday|
      holiday.each do | holiday, supply|
        activities. each do |supply|
          if supply == "BBQ"
            array << holiday
          end
        end
      end
end
end
