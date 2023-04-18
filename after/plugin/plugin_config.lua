-- TODO: This is ugly, but there's curently a bug in Mason, when using
-- 'config' attr in Packer breaks :Mason interface.
local chatgpt_status, chatgpt = pcall(require, "chatgpt")
if(chatgpt_status) then
  chatgpt.setup()
end
local dap_virutal_text_status, dap_virutal_text = pcall(require, "nvim-dap-virtual-text")
if(dap_virutal_text_status) then
   dap_virutal_text.setup()
end
