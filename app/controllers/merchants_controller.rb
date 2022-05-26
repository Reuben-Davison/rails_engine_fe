class MerchantsController < ApplicationController 
    def index 
        @merchants = MerchantFacade.new.all_merchants
    end

    def show 
        @merchant = MerchantFacade.new.one_merchant(id)
    end
end