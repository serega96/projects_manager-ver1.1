require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "should not save task without information" do
    task = Task.new
    assert_not task.save
  end

  test "save task with information and destroy for id" do
    task = Task.new(id: '1', title: "Test", description: 'TEst description', status: 1, project_id: 298486374)
    assert task.save

    task_d = Task.destroy(1)
    assert task_d.destroy
  end
end
