command Start :edit! slides/01.txt
command NextSlide :execute 'edit!' 'slides/' . printf('%02d', expand('%:tr') + 1) . '.txt'
command PrevSlide :execute 'edit!' 'slides/' . printf('%02d', max([expand('%:tr') - 1, 1])) . '.txt'

:nmap + :NextSlide<cr>
:nmap _ :PrevSlide<cr>

Start
