FactoryGirl.define do
  factory :soil_sample do
    plot
    user
    collected_on Date.today
    ph_level 1.5
    temperature 20.5
    moisture 3.5
    collection_method 'composite'
  end

  factory :empty_soil_sample, class: SoilSample do
    collected_on nil
    ph_level ''
    temperature ''
    moisture ''
    collection_method ''
  end
end
