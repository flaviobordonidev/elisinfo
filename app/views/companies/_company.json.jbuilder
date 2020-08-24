json.extract! company, :id, :name, :building, :address, :client_type, :client_rate, :supplier_type, :supplier_rate, :note, :sector, :tax_number_1, :tax_number_2, :created_at, :updated_at
json.url company_url(company, format: :json)
