# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :api_page, :class => 'Api::Page' do
    title "MyString"
    content "MyString"
    published_on "2013-05-29 05:23:48"
  end
end
