FactoryGirl.define do
  factory :wish do
    content "Just a wish"
    user { build(:user) }
  end
end
