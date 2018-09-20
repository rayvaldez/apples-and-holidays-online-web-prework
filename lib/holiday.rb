require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each { |holiday, supplies| supplies << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring].each { |holiday, supplies| supplies << supply}
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array

  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)

  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)

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
  array = []
     holiday_hash.each do |season, holiday_name|
      holiday_name.each do |holiday, supplies|
        supplies.each do |supply|
          if supply == "BBQ"
            array << holiday
          end
        end
      end
    end
  array
end
