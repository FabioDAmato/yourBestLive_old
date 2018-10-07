require "rails_helper"

describe Locale, :type => :model do

    it  "Create Local" do
        local=Locale.new(:nlocale => "Locale1", :indirizzo => "Via fasulla 123", 
            :backline => "chitarra,batteria", :pagamento => 100, 
            :capacita => 500, :genere => "metal", :telefono => "3333333333", :citta => "Roma")
        expect(local).to be_valid
    end

    it "is not valid without a name" do
        local=Locale.new(:nlocale => nil)
        expect(local).to_not be_valid
    end

    it "is not valid without an address" do
        local=Locale.new(:indirizzo => nil)
        expect(local).to_not be_valid
    end

    it "is not valid without a backline" do
        local=Locale.new(:backline => nil)
        expect(local).to_not be_valid
    end

    it "is not valid without a payment type" do
        local=Locale.new(:pagamento => nil)
        expect(local).to_not be_valid
    end

    it "is not valid without a capacity" do
        local=Locale.new(:capacita => nil)
        expect(local).to_not be_valid
    end

    it "is not valid without a genre" do
        local=Locale.new(:genere => nil)
        expect(local).to_not be_valid
    end

    it "is not valid without a phone number" do
        local=Locale.new(:telefono => nil)
        expect(local).to_not be_valid
    end

    it "is not valid without a city" do
        local=Locale.new(:citta => nil)
        expect(local).to_not be_valid
    end

    

end