# Start Debian virtual machine & open in Virt-Viewer
virsh --connect qemu:///system start Debian &&
  virt-viewer --connect qemu:///system Debian
