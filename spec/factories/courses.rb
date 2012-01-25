# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    name            'Ensino Basico'
    description     'Descricao'
    quantityLessons '2'
  end
end
