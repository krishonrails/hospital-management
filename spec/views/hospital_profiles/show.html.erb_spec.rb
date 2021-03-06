require 'rails_helper'

RSpec.describe "hospital_profiles/show", type: :view do
	before(:each) do
		@hospital_profile = assign(:hospital_profile, HospitalProfile.create!(
			:name => "Name",
			:about => "About",
			:location => "Location"
		))
	end

	it "renders attributes in <p>" do
		render
		expect(rendered).to match(/Name/)
		expect(rendered).to match(/About/)
		expect(rendered).to match(/Location/)
	end
end