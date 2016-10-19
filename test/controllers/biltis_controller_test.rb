require 'test_helper'

class BiltisControllerTest < ActionController::TestCase
  setup do
    @bilti = biltis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biltis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bilti" do
    assert_difference('Bilti.count') do
      post :create, bilti: { aoc: @bilti.aoc, asset_value: @bilti.asset_value, cc: @bilti.cc, charged_kgs: @bilti.charged_kgs, client_id: @bilti.client_id, company_id: @bilti.company_id, consignee: @bilti.consignee, consigner: @bilti.consigner, fov: @bilti.fov, goods: @bilti.goods, invoice_number: @bilti.invoice_number, others: @bilti.others, service_tax_paid_by: @bilti.service_tax_paid_by, st_charge: @bilti.st_charge, tin_no: @bilti.tin_no, total: @bilti.total, transit_charge: @bilti.transit_charge }
    end

    assert_redirected_to bilti_path(assigns(:bilti))
  end

  test "should show bilti" do
    get :show, id: @bilti
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bilti
    assert_response :success
  end

  test "should update bilti" do
    patch :update, id: @bilti, bilti: { aoc: @bilti.aoc, asset_value: @bilti.asset_value, cc: @bilti.cc, charged_kgs: @bilti.charged_kgs, client_id: @bilti.client_id, company_id: @bilti.company_id, consignee: @bilti.consignee, consigner: @bilti.consigner, fov: @bilti.fov, goods: @bilti.goods, invoice_number: @bilti.invoice_number, others: @bilti.others, service_tax_paid_by: @bilti.service_tax_paid_by, st_charge: @bilti.st_charge, tin_no: @bilti.tin_no, total: @bilti.total, transit_charge: @bilti.transit_charge }
    assert_redirected_to bilti_path(assigns(:bilti))
  end

  test "should destroy bilti" do
    assert_difference('Bilti.count', -1) do
      delete :destroy, id: @bilti
    end

    assert_redirected_to biltis_path
  end
end
