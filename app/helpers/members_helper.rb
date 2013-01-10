module MembersHelper

	def alpha_pagination
		selected_letter = 
			if params.has_key?(:letter)
				params[:letter]
			else
				"a"
			end
		letters_inside_lis = ""
		("A".."Z").each do |letter|
			if letter.downcase == selected_letter.downcase
				letters_inside_lis += "<li class='active'><a href='?letter=#{letter}'>#{letter}</a></li>"
			else
				letters_inside_lis += "<li><a href='?letter=#{letter}'>#{letter}</a></li>"
			end
		end
		render(:inline=>"<div class='pagination'><ul>#{letters_inside_lis}</ul></div>")
	end
end
