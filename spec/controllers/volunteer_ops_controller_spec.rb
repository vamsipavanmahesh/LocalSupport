require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe VolunteerOpsController do

  # This should return the minimal set of attributes required to create a valid
  # VolunteerOp. As you add validations to VolunteerOp, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VolunteerOpsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all volunteer_ops as @volunteer_ops" do
      volunteer_op = VolunteerOp.create! valid_attributes
      get :index, {}, valid_session
      assigns(:volunteer_ops).should eq([volunteer_op])
    end

    it "should render template two column layout"  do
      get :index
      response.should render_template 'index'
      response.should render_template 'layouts/two_columns'
    end
  end
end
