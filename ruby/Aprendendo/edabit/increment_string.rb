def increment_string(str)
	if str[-1].match(/\d/)
		str[-1] = (srt.split(/\D/)[-1].to_i + 1).to_s.rjust(str.split(/\D/)[-1].length, "0")
		return srt
	else
		str.split.push("1").join
	end
end

