class SessionController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create

  def create
    binding.pry
    @oauth = AWeber::OAuth.new("Ak24mnAp7hXh10SVfN23ZrqS", "kmuhFDEkCZdOPD2EF0cH7Y329A6ucKhsbZYk5byt")

# Go to URL outputed by the following, authorize your account
# and copy the verification code
@oauth.request_token.authorize_url
@oauth.authorize_with_verifier("")

# Save your Access Tokens for later use, you won't need
# to do all this once you have it. Check out
# with_access_tokens.rb for an example of this.
#
# DATASTORE << @oauth.access_token.token
# DATASTORE << @oauth.access_token.secret

@aweber = AWeber::Base.new(@oauth)
# An account is the root resource for all AWeber data
@account = @aweber.account

    user = User.find_or_create_by(:provider => auth_hash[:provider], :uid => auth_hash[:uid]) do |user|
      user.name = auth_hash[:info][:name]
    end

    session[:user_id] = user.id

    redirect_to root_path
  end

  def destroy
  end

  private
  def auth_hash
    request.env['omniauth.auth']
  end
end
