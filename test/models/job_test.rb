require "test_helper"

=begin

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

  test "job requires status" do
    job = Job.new
    assert_not job.valid?
    assert_includes job.errors[:status], "can't be blank"
  end

  test "job accepts valid status values" do
    valid_statuses = %w[waiting applied interviewing rejected]

    valid_statuses.each do |status|
      job = Job.new(status: status)
      job.valid? # Trigger validations
      assert_not_includes job.errors[:status], "is not included in the list"
    end
  end

  test "job rejects invalid status values" do
    job = Job.new(status: "invalid_status")
    assert_not job.valid?
    assert_includes job.errors[:status], "is not included in the list"
  end

  test "job accepts valid source values" do
    valid_sources = %w[LinkedIn Indeed Blocket\ Jobb Arbetsförmedlingen Other]

    valid_sources.each do |source|
      job = Job.new(source: source)
      job.valid? # Trigger validations
      assert_not_includes job.errors[:source], "is not included in the list"
    end
  end

  test "job should save with valid attributes" do
    job = Job.new(
      title: "Senior Developer",
      company: "Tech Corp",
      location: "Stockholm",
      source: "LinkedIn",
      status: "applied",
      description: "A great job opportunity"
    )

    assert job.valid?
  end

  test "job should format salary range" do
    job = Job.new(
      salary_min: 400000,
      salary_max: 600000
    )

    assert_equal "400000 - 600000 kr", job.salary_range
  end
end

=end
