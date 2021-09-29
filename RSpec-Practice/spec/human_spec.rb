require_relative "../lib/human"

RSpec.describe Human do
  describe "#meditate" do
    context "when the dog is unhappy" do
      subject { described_class.new(emotional_checkin: 5) }

      it "is no longer unhappy" do
        subject.meditate
        expect(subject).to be_happy
      end
    end
  end
  describe "#happy?" do
    context "when emotional_checkin is more than 5" do
      subject { described_class.new(emotional_checkin: 7) }

      it "returns true" do
        expect(subject).to be_happy
      end
    end
    context "when emotional_checkin is 5 or less" do
      subject { described_class.new(emotional_checkin: 5) }

      it "returns false" do
        expect(subject).to_not be_happy
      end
    end
  end
end
