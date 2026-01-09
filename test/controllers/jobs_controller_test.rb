require "test_helper"

class JobsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jobs_path
    assert_response :success
    assert_select "h1", text: I18n.t("job_applications.title")
  end

  test "should display job applications list" do
    get jobs_path
    assert_response :success
    assert_select ".bg-white", count: 4 # Should display 4 job cards
  end

  test "should show job statistics" do
    get jobs_path
    assert_response :success
    assert_select "h2", text: I18n.t("job_applications.total_applications")
    assert_select "p", text: "4" # Total applications count
  end

  test "should get new" do
    get new_job_path
    assert_response :success
    assert_select "h1", text: I18n.t("job_applications.new_application")
  end

  test "should have job form fields" do
    get new_job_path
    assert_response :success
    assert_select 'input[name="job[title]"]'
    assert_select 'input[name="job[company]"]'
    assert_select 'input[name="job[location]"]'
    assert_select 'select[name="job[source]"]'
    assert_select 'select[name="job[status]"]'
    assert_select 'textarea[name="job[description]"]'
  end

  test "should create job application" do
    assert_difference("Job.count") do
      post jobs_path, params: {
        job: {
          title: "Test Developer",
          company: "Test Company",
          location: "Test Location",
          source: "LinkedIn",
          status: "applied",
          description: "Test description"
        }
      }
    end

    assert_redirected_to jobs_path
    assert_equal I18n.t("job_applications.create_success"), flash[:notice]
  end

  test "should validate required fields" do
    post jobs_path, params: { job: { title: "" } }
    assert_response :unprocessable_entity
  end

  test "should filter jobs by source" do
    get jobs_path
    assert_response :success
    assert_select 'select[name="source-filter"]'
    assert_select 'option[value="LinkedIn"]'
    assert_select 'option[value="Indeed"]'
  end

  test "should filter jobs by status" do
    get jobs_path
    assert_response :success
    assert_select 'select[name="status-filter"]'
    assert_select 'option[value="applied"]'
    assert_select 'option[value="interviewing"]'
  end

  test "should display job status badges" do
    get jobs_path
    assert_response :success
    assert_select ".inline-flex", /Ansökt|Intervju|Väntar/ # Should contain status badges
  end

  test "should show applied time ago" do
    get jobs_path
    assert_response :success
    assert_select "span", /för \d+ dagar sedan/ # Should show time ago format
  end
end
