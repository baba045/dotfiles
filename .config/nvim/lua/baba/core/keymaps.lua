-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-----------------------------------------------------------
--------------------- General Keymaps ---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

keymap.set("v", "p", '"_dP', { noremap = true, silent = true })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- move selected text
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Remap indent commands to maintain visual selection
keymap.set("v", "<", "<gv", { noremap = true, silent = true })
keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Navigate to next/previous buffer
keymap.set("n", "<C-o>", "<cmd>bnext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<C-i>", "<cmd>bprevious<CR>", { desc = "Go to previous buffer" })

-- Close current buffer
keymap.set("n", "<leader>bx", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
keymap.set("n", "<leader>bf", "<cmd>BufferLinePick<CR>", { desc = "Go to buffer (fuzzy)" })

-- Undotree
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

--------------------- Barbar Keymaps ---------------------
-- Move to previous/next
keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", { desc = "Go to next buffer" })

-- Re-order to previous/next
keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", { desc = "Move buffer to previous position" })
keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", { desc = "Move buffer to next position" })

-- Goto buffer in position...
keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", { desc = "Go to buffer 1" })
keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", { desc = "Go to buffer 2" })
keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", { desc = "Go to buffer 3" })
keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", { desc = "Go to buffer 4" })
keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", { desc = "Go to buffer 5" })
keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", { desc = "Go to buffer 6" })
keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", { desc = "Go to buffer 7" })
keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", { desc = "Go to buffer 8" })
keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", { desc = "Go to buffer 9" })
keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", { desc = "Go to last buffer" })

-- Pin/unpin buffer
keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>", { desc = "Pin/unpin buffer" })

-- Close buffer
keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })

-- Restore buffer
keymap.set("n", "<A-S-c>", "<Cmd>BufferRestore<CR>", { desc = "Restore closed buffer" })

-- Magic buffer-picking mode
keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>", { desc = "Pick buffer" })
keymap.set("n", "<C-p>", "<Cmd>BufferPickDelete<CR>", { desc = "Pick buffer to delete" })

-- Sort automatically by...
keymap.set("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", { desc = "Sort buffers by number" })
keymap.set("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", { desc = "Sort buffers by directory" })
keymap.set("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", { desc = "Sort buffers by language" })
keymap.set("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>", { desc = "Sort buffers by name" })
keymap.set("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", { desc = "Sort buffers by window number" })
