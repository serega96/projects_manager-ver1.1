require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save project without information" do
    project = Project.new
    assert_not project.save
  end

  test "save and destroy project with name summary start_date end_date" do
    project = Project.new(id: '1',name: 'Test', summary: 'Summery test', start_date: '12.10.2018', end_date: '14.10.2018')
    assert project.save

    project = Project.destroy(1)
    assert project.destroy
  end
end
