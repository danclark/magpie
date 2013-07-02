require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email "daniel.clark@utoledo.edu"
    username "dclark8"
    password "abc123"
		name "Dan"
  end
end
