class PostcodeService
  ACT = 'Australian Capital Territory'
  NT = 'Northern Territory'
  NSW = 'New South Wales'
  SA = 'South Australia'
  WA = 'West Australia'
  QLD = 'Queensland'
  VIC = 'Victoria'
  TAS = 'Tasmania'

  def self.isPostcode?(object)
    /^\d{4}$/ === (object.to_s)
  end

  def self.findStateByPostcode(postcode)
    postcode = postcode.to_i
    if ((1000..2599).include?(postcode) || (2620..2899).include?(postcode) || (2921..2999).include?(postcode))
      state = NSW
    elsif((3000..3999).include?(postcode) || (8000..8999).include?(postcode))
      state = VIC
    elsif((4000..4999).include?(postcode) || (9000..9999).include?(postcode))
      state = QLD
    elsif((5000..5999).include?(postcode))
      state = SA
    elsif((6000..6999).include?(postcode))
      state = WA
    elsif((7000..7999).include?(postcode))
      state = TAS
    elsif((200..299).include?(postcode) || (2600..2619).include?(postcode) || (2900..2920).include?(postcode))
      state = ACT
    elsif((800..999).include?(postcode))
      state = NT
    end
    state
  end
end
