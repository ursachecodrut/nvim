local status, copilot = pcall(require, "copilot")
if not status then
	return
end

copilot.setup()
