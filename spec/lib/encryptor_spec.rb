require "encryptor"
require "spec_helper"

describe Encryptor do
  describe "#encrypt" do
    it  "takes a string, splits it into an array, encrypts each entry, and joins the result" do
      expect(subject.encrypt "Hello, World!").to eq "Uryyb, Jbeyq"
    end
  end
end
