require "oystercard"

describe Oystercard do
  it "When intialized, the balance is zero" do
    expect(subject.balance).to eq(0)
  end

  it "can top up the balance" do
    # expect(subject.top_up(10)).to eq(10)
    expect { subject.top_up 10 }.to change { subject.balance }.by 10
  end

  it "raise error if max limit reached" do
    error_msg = "Pound 90 limit reached!"
    subject.top_up(90)
    expect { subject.top_up(10) }.to raise_error(error_msg)
  end
end
