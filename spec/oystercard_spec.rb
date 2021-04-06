require 'oystercard'
describe Oystercard do
  oystercard = Oystercard.new
  it { expect(oystercard).to be_an_instance_of(Oystercard) }
  it { expect(subject).to respond_to(:balance) }
  it { expect(subject.balance).to eq (0) }
end