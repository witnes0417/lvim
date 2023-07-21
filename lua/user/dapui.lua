local dapui = require("dapui")
local dap = require("dap")

dapui.setup({})
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.setup({})
    dapui.open({})
end

dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.setup({})
    dapui.close({})
end


dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.setup({})
    dapui.close({})
end
