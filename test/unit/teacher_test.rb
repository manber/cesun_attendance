require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  def setup
    @teacher = Factory.create :teacher
    @custom_name = 'Other name'
  end


  test "unique control number" do
    assert teacher = Factory.build( :teacher)
	  assert teacher.invalid?
  end

  test "must have a name" do
    assert teacher = Factory.build( :teacher, :name => nil )
    assert teacher.invalid?
  end

  test "must have at least paternal surname" do
    assert teacher = Factory.build( :teacher, :paternal_surname => nil)
    assert teacher.invalid?
  end

  test "create teacher" do
    assert teacher = Factory.build( :teacher, :control_number => '666', :name => 'Manuel', :paternal_surname => 'Bernal')
    assert_difference 'Teacher.count' do
      teacher.save
    end
  end

  test "delete teacher" do
    assert_difference 'Teacher.count', -1 do
      @teacher.delete
    end
  end

  test "update teacher" do
    assert @teacher.update_attributes :name => @custom_name
    assert @custom_name, @teacher.name
  end


end