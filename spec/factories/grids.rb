# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grid do
    name            'Grade do Ensino Basico'
    association     :course
  end
  
  Factory.define :grid_complete, :parent => :grid do |grid|
    grid.after_build do |g|
      g.matters = [Factory.build(:matter, :grids => [g]), Factory.build(:matter, :grids => [g])]
      g.coordinator = Factory.build(:coordinator)
    end
  end
end
