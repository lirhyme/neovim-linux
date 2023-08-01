
local status, surround = pcall(require, "nvim-surround")
if not status then
  vim.notify("没有找到 surround")
  return
end

surround.setup({
  mappings_style = surround,
})

--    "surround_words"           ysiw)           surround_words
--    make strings               ys$"            "make strings""
--    [delete ar*ound me!]       ds]             delete around me!
--    <b>HTML t*ags</b>          dst             remove HTML tags
--    <change quot*es>           cs'"            "change quotes"
--    <h3>or tag* types</h3>     csth1<CR>       <h1>or tag types</h1>
--    delete(function calls)    dsf             function calls

