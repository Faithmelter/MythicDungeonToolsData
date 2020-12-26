if IsAddOnLoaded("MythicDungeonTools") then

	function MDT:OpenNoDungeonDataWarning()
		return true
	end

	function MDT:HexToRGB(rgb)
		if rgb and string.len(rgb) == 6 then
			local r, g, b
			r, g, b = tonumber('0x'..strsub(rgb, 0, 2)), tonumber('0x'..strsub(rgb, 3, 4)), tonumber('0x'..strsub(rgb, 5, 6))
			if not r then r = 0 else r = r/255 end
			if not g then g = 0 else g = g/255 end
			if not b then b = 0 else b = b/255 end
			return r,g,b
		else
			return
		end
	end

end