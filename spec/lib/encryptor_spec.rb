require "encryptor"
require "spec_helper"

describe Encryptor do
  describe "#encrypt" do
    it "takes a rotation number and string then returns the string encrypted" do
      expect(subject.encrypt 13, "Hello, World!" ).to eq "Uryy!9-d!$yq."
    end
  end

  describe "#decrypt" do
    it "takes a rotation number and encrypted string then returns the string decrypted" do
      expect(subject.decrypt 13, "Uryy!9-d!$yq." ).to eq "Hello, World!"
    end
  end
end
