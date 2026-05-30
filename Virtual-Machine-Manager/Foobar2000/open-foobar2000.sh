DISPLAY=:0 virsh --connect qemu:///system start Foobar2000 &&
  DISPLAY=:0 virt-viewer --connect qemu:///system Foobar2000
