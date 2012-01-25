# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  Factory.sequence :name do |n|
    "Matematica#{n}"
  end
  
  factory :matter do
    name            { Factory.next(:name) }
    description     'Descricao'
    quantityLessons '1'
  end
  
  Factory.define :matters_with_grids, :parent => :matter do |matter|
    matter.after_build do |m|
      m.grids = [Factory.build(:grid, :matters => [m]), Factory.build(:grid, :matters => [m])]
    end
  end
end