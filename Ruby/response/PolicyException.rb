
class PolicyException

	def initialize
		@messageId=nil
		@text=nil
		@variables=nil
	end

	def initializeJSON(jsondict)
		@messageId=nil
		if (jsondict!=nil) && (jsondict.has_key?'messageId') && (jsondict['messageId']!=nil)
			@messageId=jsondict['messageId']
		end
		@text=nil
		if (jsondict!=nil) && (jsondict.has_key?'text') && (jsondict['text']!=nil)
			@text=jsondict['text']
		end
		@variables=nil
		if (jsondict!=nil) && (jsondict.has_key?'variables') && (jsondict['variables']!=nil)
			@variables=Array.new()
			fieldValue=jsondict['variables']
			if fieldValue.kind_of?Array
				for item in fieldValue
					@variables[variables.length]=item
				end
			else
				@variables[0]=fieldValue
			end
		end
	end

	def getMessageId
		@messageId
	end

	def setMessageId(messageId)
		@messageId=messageId
	end

	def getText
		@text
	end

	def setText(text)
		@text=text
	end

	def getVariables
		@variables
	end

	def setVariables(variables)
		@variables=variables
	end


end 
