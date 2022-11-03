local core = require("popui/core")

local customUIInput = function(options, onConfirm)
    core:spawnInputPopup(
        options.prompt or "Input",
        options.default,
        function(lineNumber, lineContent)
            onConfirm(lineContent)
        end,
        vim.g.popui_border_style
    )
end

return customUIInput
