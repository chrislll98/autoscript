@echo -off
if not exist %1 then
mm 1000 0 -io -w 1
mm 1004 %1 -io -w 1
mm 100d 2 -io -w 1 -n
mm 1000 fe -io -w 1 -n
mm 1005 0 -io -w 1 -n
mm 1002 54 -io -w 1 -n
echo Data length:
mm 1005 -io -w 1 -n
echo Block value:
for %i run (0 10)
mm 1007 -io -w 1 -n
endfor
else
echo "Please enter Slave Address and +1 yourself,"
echo "E.g. %0 d9"
endif