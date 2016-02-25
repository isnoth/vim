function! TestGrep()
python << EOF

#from vim import *
import vim
import re

class Foo_demo:
    def __init__(self):
        print 'Foo_demo init'

        #for i in vim.vvars.keys():
        #    print i, ': ', vim.vvars[i]

        #print line('.')
        #print vim.buffers[1]
        cw = vim.current.window
        print cw.cursor
        row = cw.cursor[1]
        print row
        #print vim.getline('.')
        l = vim.current.line
        fnd =  re.findall('([0-9a-zA-Z_]+)', l[row:])[0]
        print fnd
        cmd = "grep -rn %s *" %fnd
        print cmd
        vim.command(cmd)
        vim.command('cw')

        #print vim.command("*")
        #b =  vim.current.buffer
        #print b.mark('a')
        #print vim.command("/re")

Foo_demo()

EOF
endfunction
