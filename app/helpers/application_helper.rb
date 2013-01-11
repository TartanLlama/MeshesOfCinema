module ApplicationHelper
  def priority_countries
    %W(AT AU BE BR CA CN CZ DK FI FR DE GR HK HU IN IR IT JP KR MX NL PL RU SN RS ZA ES SE TH GB US)
  end

  def to_rating_string (i)
    ["Don't bother", "Of some interest", "Well worth a watch", "Masterpiece"][i-1]
  end
end
