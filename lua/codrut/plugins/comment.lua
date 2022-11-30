local status, comment = pcall(require, "Comment")
if not status then
  print("Error on comment plugin")
  return
end

comment.setup()
