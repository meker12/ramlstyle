module Raml
  # @private
  module Global
    def default_media_type
      @parent.default_media_type
    end

  	def trait_declarations
  		@parent.trait_declarations
  	end

  	def resource_type_declarations
  		@parent.resource_type_declarations
  	end

  	def schema_declarations
  		@parent.schema_declarations
  	end

    def security_scheme_declarations
      @parent.security_scheme_declarations
    end

    def secured_by_declarations
      @parent.secured_by_declarations
    end
  end
end