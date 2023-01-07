local status, lualine = pcall(require, "lualine")

if not status then
	print("No lualine installed")
	return
end

lualine.setup({
	options = {
		theme = "ayu_light",
	},
})
