-- TODO: This is ugly, but there's curently a bug in Mason, when using
-- 'config' attr in Packer breaks :Mason interface.
local chatgpt_status, chatgpt = pcall(require, "chatgpt")
if(chatgpt_status) then
  chatgpt.setup()
end
