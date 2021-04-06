require 'oystercard'
describe Oystercard do
  oystercard = Oystercard.new
  it { expect(oystercard).to be_an_instance_of(Oystercard) }
  it { expect(subject).to respond_to(:balance) }
  it { expect(subject.balance).to eq (0) }
  it { expect(subject).to respond_to(:top_up).with(1).argument }
  
  it "changes the balance value" do
    oystercard = Oystercard.new
    oystercard.top_up(15)
    expect { subject.top_up(15) }.to change { subject.balance }.by(15)
  end

  it "throws an error when balance exceed 90" do
    oystercard = Oystercard.new
    new_balance = oystercard.top_up(9)
    expect { new_balance }.to raise_error "Exceeded maximum amount of: £#{MaxBalance}" if new_balance > 90
  end
end