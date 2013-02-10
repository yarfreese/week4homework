$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'business'

describe Business do

  subject { Business.new 'Acme Advanced Auto', '123-456-7890' }

  it 'business card prints name and tax id when address and hours missing' do
    subject.business_card.should eq "Acme Advanced Auto\n==================\n\n\nOpen: \nTax Id: 123-456-7890"
  end

  it 'business card shows complete information when available' do
    subject.address="123 Main St, Kalamazoo, MI"
    subject.hours="9 to 9 daily"
    subject.business_card.should eq "Acme Advanced Auto\n==================\n\n123 Main St, Kalamazoo, MI\nOpen: 9 to 9 daily\nTax Id: 123-456-7890"
  end

end

