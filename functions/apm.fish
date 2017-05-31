function apm
 if not count $argv
   apm-beta .
 else
   apm-beta $argv
 end
end
