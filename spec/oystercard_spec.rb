require 'oystercard'

describe OysterCard do
   subject(:oystercard) { described_class.new }
   let(:fake_entry_station) { double :entry_station }


  it "has a balance" do
    expect(oystercard.balance).to eq OysterCard::BALANCE_DEFAULT
  end

  it "tops up the balance with a value" do
    expect(oystercard.top_up(5)).to eq 5 + OysterCard::BALANCE_DEFAULT
  end

  it "limits the top up to a maximum value" do
    expect { oystercard.top_up(OysterCard::BALANCE_MAX) }.to raise_error "You've exceeded the maximum top up of #{OysterCard::BALANCE_MAX}"
  end

  it "deducts fare from balance" do
    oystercard1 = OysterCard.new(5)
    expect(oystercard1.deduct(3)).to eq 2
  end

  it "doesn't allow fare larger than the current balance" do
    oystercard1 = OysterCard.new(5)
    expect { oystercard1.deduct(8) }.to raise_error "You don't have enough money to travel."
  end

  it "checks if it is touched in" do
    allow(fake_entry_station).to receive(:touch_in) { :at_station }
    expect(fake_entry_station.touch_in).to eq :at_station
  end

  it "raise error when balance is less than minimum amount on touch in" do
    oystercard1 = OysterCard.new(0)
    expect { oystercard1.touch_in("station") }.to raise_error "You have less than minimum £#{OysterCard::BALANCE_MIN} balance"
  end

  it "deducts fare at touch out" do
    expect { oystercard.touch_out("station") }.to change{oystercard.balance}.by(-OysterCard::BALANCE_MIN)
  end

  # it "checks if it is in journey" do
  #   oystercard.touch_in("station")
  #   expect(oystercard.in_journey?).to eq true
  # end

  # it "checks if it is not in journey" do
  #   oystercard.touch_in("station")
  #   oystercard.touch_out("station")
  #   expect(oystercard.in_journey?).to eq false
  # end

  it "remembers the entry station of the current journey" do
    expect(oystercard.touch_in(fake_entry_station)).to eq fake_entry_station
  end

  describe '#list_journeys' do
    it 'responds to #list_journeys' do
      expect(subject).to respond_to(:list_journeys)
    end

    it 'test that the card has an empty list of journies by default' do
      expect(oystercard.list_journeys).to eq []
    end

  end
end
