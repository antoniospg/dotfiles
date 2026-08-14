-- new nvim-treesitter stores queries under runtime/queries/ but doesn't add
-- that path to rtp itself, so queries would never be found without this
vim.opt.rtp:prepend(vim.fn.stdpath('data') .. '/site/pack/packer/start/nvim-treesitter/runtime')

local max_filesize = 100 * 1024

local function start_ts(buf)
  local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(buf))
  if ok and stats and stats.size > max_filesize then
    return
  end
  pcall(vim.treesitter.start, buf)
end

vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    start_ts(args.buf)
  end,
})

-- activate for all buffers already loaded before this autocmd was registered
for _, buf in ipairs(vim.api.nvim_list_bufs()) do
  if vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].filetype ~= '' then
    pcall(vim.treesitter.start, buf)
  end
end
