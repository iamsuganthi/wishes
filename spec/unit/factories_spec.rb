require "spec_helper_lite"
Dir["#{ROOT}/app/models/*.rb"].each {|f| require f }

FactoryGirl.factories.map(&:name).each do |factory_name|
  describe "The #{factory_name} factory" do
    it "is valid" do
      build(factory_name).should be_valid
    end
  end
end
