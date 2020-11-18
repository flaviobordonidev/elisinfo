module CompanyPersonMapsHelper
  
  def h_company_telefones_first(telephones)
    "#{telephones.first.name}: #{telephones.first.prefix} #{telephones.first.number} " if telephones.first.present?
  end

  def h_company_telefones_all(telephones)
    telephones_all = ""
    telephones.each do |telephone|
     telephones_all = telephones_all + "#{telephone.name}: #{telephone.prefix} #{telephone.number} " if telephone.present?
    end
    return telephones_all
  end
end
