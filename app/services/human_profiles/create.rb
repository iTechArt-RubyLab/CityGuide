module HumanProfiles
  class Create
    def initialize(contact_information, human_profile_params)
      @human_profile_params = human_profile_params
      @contact_information = contact_information
    end

    def call
      @human_profile = HumanProfile.new(@human_profile_params)
      @human_profile.contact_information = @contact_information
      if @human_profile.save
        OpenStruct.new(success?: true, human_profile: @human_profile)
      else
        OpenStruct.new(success?: false, errors: @human_profile.errors)
      end
    end
  end
end
