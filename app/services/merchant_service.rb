class MerchantService 

    def get_all_merchants 
        get_url("merchants")
    end

    def get_one_merchant(id) 
        get_url("merchants/#{id}")
    end

    def get_url(uri)
    response = Faraday.get("http://localhost:3000/api/v1/#{uri}")
    JSON.parse(response.body, symbolize_names: true)
    end
end