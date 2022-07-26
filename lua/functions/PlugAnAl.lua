require("functions")

local configs = {}

local aliases = {
	_do = "do",
	_end = "end",
}

local Plug = {
	begins = function()
		vim.cmd("call plug#begin()")
	end,

	ends = function()
		vim.cmd("call plug#end()")

		for _, fn in pairs(configs) do
			-- print("PlugAnAl: " .. cp)
			if type(fn) == "function" then
				fn() -- call the function
			end
		end
	end,
}

local meta = {
	__call = function(self, remote, config, opts)
		if remote == nil then
			error("[PLUGINS] Error: package name is nil")
		end

		if opts == nil then
			opts = {}
		end

		-- Inserting the plugins. at the beginning if missing
		if config ~= nil and not string.starts(config, "plugins") then
			config = "plugins." .. config
		end

		local args = {}
		for k, v in pairs(opts) do
			if aliases[k] ~= nil then
				k = aliases[k]
			end
			table.insert(args, "'" .. k .. "'" .. ": '" .. v .. "'") -- 'k': 'v'
		end

		local cmd = "Plug '" .. remote .. "', {" .. table.concat(args, ", ") .. "}"
		vim.cmd(cmd)

		if config ~= nil then
			configs[config] = function()
				return pcall(require, config)
			end
		end

	end,
}

return setmetatable(Plug, meta)

