FactoryGirl.define do
  factory :guest do
    email 'guest@forecast.com'
    password 'password'
    first_name 'Guest'
    last_name 'Forecast'
    image 'image-url'
    sex 'Male'
    birthday '2015-01-30'
  end
end