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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas][-1] = supply
  holiday_hash[:winter][:new_years][-1] = supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_hash[:winter].each do |holiday|
    supplies << holiday
  end
  return supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
   holiday_hash.each do |season|
     
     season_caps = season[0].to_s.split("_")
     season_caps.collect do |word|
       word.capitalize!()
     end
     season_caps.join(" ")
     puts season_caps[0] + ":"
    
     season[1].each do |holiday|
       holiday_caps = holiday[0].to_s.split("_")
       holiday_caps.collect do |word|
         word.capitalize!()
       end
        puts "  " + holiday_caps.join(" ") + ": " + holiday[1].join(", ")
     end
     
   end
 end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  ans = []
  holiday_hash.each do |season|
    
    season[1].each do |holiday|
      
      if holiday[1].include?("BBQ")
        ans.push(holiday[0])
      
      end
    
    end
  end

  ans
end







