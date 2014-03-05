require 'spec_helper'

describe PayGrade do

  before do
    @pay_grade = PayGrade.new
  end

  it "should not allow pay grade to be saved without name" do
    @pay_grade.save.should be_false
    @pay_grade.should have(1).error_on(:name)
  end

  it "should not allow pay grade to be saved with blank name" do
    @pay_grade.name = "   "
    @pay_grade.save.should be_false
    @pay_grade.should have(1).error_on(:name)
  end

  it "should not allow pay grade to be saved with existing name" do
    pay_grade = create(:pay_grade)
    @pay_grade.name = pay_grade.name
    @pay_grade.save.should be_false
    @pay_grade.should have(1).error_on(:name)
  end

  it "should allow pay grade to be saved with different name" do
    pay_grade = create(:pay_grade)
    @pay_grade.name = "Accounts"
    @pay_grade.save.should be_true
  end

  it "should not save the pay grade if maximum salary is less than minimum salary" do
    @pay_grade.name = "HRA"
    @pay_grade.min_salary = 10000
    @pay_grade.max_salary = 5000
    @pay_grade.save.should be_false
    @pay_grade.should have(1).error_on(:max_salary)
  end

  it "should save the pay grade if maximum salary is >= than minimum salary" do
    @pay_grade.name = "HRA"
    @pay_grade.min_salary = 10000
    @pay_grade.max_salary = 10000
    @pay_grade.save.should be_true
    @pay_grade.max_salary = 10001
    @pay_grade.save.should be_true
  end

end
