# Start Windows 11 offline virtual machine & open in Virt-Viewer
virsh --connect qemu:///system start Windows11-Offline &&
  virt-viewer --connect qemu:///system Windows11-Offline
