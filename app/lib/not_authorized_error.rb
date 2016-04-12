class NotAuthorizedError < StandardError
  def initialize
    super('GIVE ME YOUR TOKEN MOTHERFUCKER')
  end
end
