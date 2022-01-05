module EntityProfiles
  class Create
    def initialize(contact_information, entity_profile_params)
      @entity_profile_params = entity_profile_params
      @contact_information = contact_information
    end

    def call
      @entity_profile = EntityProfile.new(@entity_profile_params)
      @entity_profile.contact_information = @contact_information
      if @entity_profile.save
        OpenStruct.new(success?: true, entity_profile: @entity_profile)
      else
        OpenStruct.new(success?: false, errors: @entity_profile.errors)
      end
    end
  end
end
