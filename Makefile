LIBVIRT_HOOKS_DIR=/etc/libvirt/hooks

install:
		mkdir -p ${LIBVIRT_HOOKS_DIR}
		cp hooks ${LIBVIRT_HOOKS_DIR}
		if [ ! -f  ${LIBVIRT_HOOKS_DIR}/hooks.json ]; then cp hooks.json  ${LIBVIRT_HOOKS_DIR}; fi
		chmod +x ${LIBVIRT_HOOKS_DIR}/hooks
		ln -s ${LIBVIRT_HOOKS_DIR}/hooks ${LIBVIRT_HOOKS_DIR}/qemu
		ln -s ${LIBVIRT_HOOKS_DIR}/hooks ${LIBVIRT_HOOKS_DIR}/lxc
		
uninstall:
		rm ${LIBVIRT_HOOKS_DIR}/hooks{,.json}
		rm ${LIBVIRT_HOOKS_DIR}/qemu
	       	rm ${LIBVIRT_HOOKS_DIR}/lxc
