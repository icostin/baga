dep[aa/aa.baga] := bb/bb.baga
dep[ee/exe.baga] := aa/aa.baga cc/gamma.baga

tmp_root := $w/tmp
out_root := $w/out

default_configs := debug

include $b/default-workspace.mk
