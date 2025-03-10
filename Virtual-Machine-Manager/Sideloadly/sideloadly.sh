# Run Sideloadly VM & Open In Virt-Viewer
virsh --connect qemu:///system start Sideloadly &&
  virt-viewer --connect qemu:///system Sideloadly
