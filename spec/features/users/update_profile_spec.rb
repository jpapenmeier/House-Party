feature "User can update profile settings", %(

  As a User
  I want to update my User profile
  So that my interests and preferences are up to date

  Acceptance Criteria:
  [] After signing In I am brought to my User profile.
  [] Any changes to my interests are saved.
  [] Revisiting my User profile shows updated interests.

) do

  scenario 'User updates interests' do
    sign_in
    click_on "Update Profile"
    


  end
end
