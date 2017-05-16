

describe "Feature Tests" do

let(:card) {OysterCard.new}


  it "tests to see if there is money on the card" do
    expect(card.balance).to eq 5
  end

  it "remembers where I've traveled from" do
    card.touch_in("station")
    expect(card.entry_station).to eq "station"
  end

  it "lists all the previous trips" do
    card.touch_in("Brixton")
    card.touch_out("Shoreditch")
    card.touch_in("Shadwell")
    card.touch_out("Stratford")
    expect(card.list_journeys).to eq [{ journey_start: "Brixton", journey_end: "Shoreditch" }, { journey_start: "Shadwell", journey_end: "Stratford"}]
  end
end
