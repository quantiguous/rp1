require 'test_helper'

module Rp
  class ReportsControllerTest < ActionController::TestCase
    fixtures :all
    setup do
      @report = rp_reports(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:available_reports)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create report" do
      params = { name: @report.file_name, file_name: @report.name, file_path: @report.file_path, finished_at: @report.finished_at, line_count: @report.line_count, name: @report.name, started_at: @report.started_at, state: @report.state }
      assert_difference('Report.count') do
        post :create, report: params
      end

      assert_redirected_to report_path(assigns(:report))
    end

    test "should show report" do
      get :show, id: @report
      assert_response :success
      assert_not_nil assigns(:reports)
    end

    test "should get edit" do
      get :edit, id: @report
      assert_response :success
    end

    test "should update report" do
      params = { name: @report.file_name, file_name: @report.name, file_path: @report.file_path, finished_at: @report.finished_at, line_count: @report.line_count, name: @report.name, started_at: @report.started_at, state: @report.state }
      patch :update, id: @report, report: params
      assert_redirected_to report_path(assigns(:report))
    end

    test "should destroy report" do
      assert_difference('Report.count', -1) do
        delete :destroy, id: @report
      end

      assert_redirected_to reports_path
    end
  end
end
