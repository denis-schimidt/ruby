class Detective
  def initialize(thingie, user)
    @thingie = thingie
    @user = user
  end

  def investigate_user
    "It went '#{@thingie.prod}'"
    @user.to_observe
    @thingie.banana
  end
end