class MerchantFacade 
    def all_merchants 
        all_merchant_data[:data].map do |data|
            binding.pry
            Merchant.new(data)
        end
    end
    def all_merchant_data 
        service.get_all_merchants
    end


    def one_merchant(id) 
        Merchant.new(one_merchant_data(id))
    end
    def one_merchant_data(id) 
        service.get_one_merchant(id)
    end


    def service 
        MerchantService.new
    end
end