require "test_helper"


class JobTest < ActiveSupport::TestCase
  test "job requires title" do
    job = Job.new

    assert_not job.valid?

    assert_includes job.errors[:title], "can't be blank"
  end

  test "job requires company" do
    job = Job.new

    assert_not job.valid?

    assert_includes job.errors[:company], "can't be blank"
  end

  test "job requires location" do
    job = Job.new

    assert_not job.valid?

    assert_includes job.errors[:location], "can't be blank"
  end

   test "job requires source" do
     job = Job.new

     assert_not job.valid?

     assert_includes job.errors[:source], "can't be blank"
   end

  test "job source must be a valid option" do
    job = Job.new(source: "InvalidSource")

    assert_not job.valid?

    assert_includes job.errors[:source], "is not included in the list"
  end

  test "job accepts valid source values" do
    Job::SOURCES.each do |source|
      job = Job.new(source: source)

      job.valid?

      assert_not_includes job.errors[:source], "is not included in the list"
    end
  end

  test "job requires status" do
    job = Job.new

    assert_not job.valid?

    assert_includes job.errors[:status], "can't be blank"
  end


  test "should return all roles in human-friendly format" do
    roles = [ "Backend developer", "Frontend developer", "Fullstack developer" ]

    Job.humanized_roles

    assert_equal roles, Job.humanized_roles
  end

  test "should accept valid roles" do
    Job.roles.keys.each do |role|
      job = Job.new(role: role)

      job.valid?

      assert_not_includes job.errors[:role], "is not included in the list"
    end
  end

  test "should not accept invalid roles" do
    job = Job.new

    assert_raises(ArgumentError) do
      job.role = "designer"
    end
  end

   test "job rejects invalid status values" do
     job = Job.new(status: "invalid_status")

     assert_not job.valid?

     assert_includes job.errors[:status], "is not included in the list"
   end


   test "job accepts valid status values" do
     valid_statuses = %w[waiting applied interviewing rejected]

     valid_statuses.each do |status|
       job = Job.new(status: status)

       job.valid?

       assert_not_includes job.errors[:status], "is not included in the list"
     end
   end
end
