names = {"sem", "noah", "luke", "ethan", "mason"}
programminglanguages = {"python", "c++", "javascript", "php", "swift"}
rank = {"beginner", "junior", "middle", "senior", "lead"}

-- ამ ფუნქციით,  დგინდება  ხელმისაწვდომი პროგრამირების ენა და იღებს  სიიდან
function getNextLanguage()
  return table.remove(programminglanguages, 1)
end

--აკეთებს იგივეს ოღონდ რანკზე
function getNextRank()
  return table.remove(rank, 1)
end

-- ციკლი რომ გაიმეროს სახელები,დაპრინტოს რამდენიც არის და მიენიჭოს მათი რანკები და პროგრამირების ენები.
for i, name in ipairs(names) do
  local time = i * 3 
  local selectedRank = ""
  local selectedLanguage = ""
  
  -- თვეების მიხედვით წოდებები და პროგრამირების ენები.
  if time >= 3 and time <= 4 then
    selectedRank = getNextRank()
    selectedLanguage = getNextLanguage()
  elseif time >= 5 and time <= 6 then
    selectedRank = getNextRank()
    selectedLanguage = getNextLanguage()
  elseif time >= 7 and time <= 8 then
    selectedRank = getNextRank()
    selectedLanguage = getNextLanguage()
  elseif time >= 9 and time <= 12 then
    selectedRank = getNextRank()
    selectedLanguage = getNextLanguage()
  elseif time >= 13 and time <= 15 then
    selectedRank = getNextRank()
    selectedLanguage = getNextLanguage()
  end
  
  -- მოწმდება მიენიჭა თუ არა რანკი და ენა
  if selectedRank and selectedLanguage then
    print(name .. " is a " .. selectedLanguage .. " " .. selectedRank)
  else
    print("Invalid time for " .. name)
  end
end
