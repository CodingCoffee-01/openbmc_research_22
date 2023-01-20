# custom layer note

	old environment:
		source oe-init-build-env 

	new environment:

		. setup qemuarm build 

		nano ./conf/bblayers.conf

		bitbake obmc-phosphor-image

		runqemu qemuarm nographic

	## use bitbake create layer 

		bitbake-layers create-layer ../meta-ast_bsp

		bitbake-layers add-layer ../meta-ast_bsp

		mkdir -p ../meta-ast_bsp/conf/machine/include

		bitbake-layers create-layer ../meta-ast_bsp/meta-bsp_board1

		bitbake-layers add-layer ../meta-ast_bsp/meta-bsp_board1
		
		nano ../meta-ast_bsp/conf/machine/include/ast_g5_bsp.conf
		
		nano ../meta-ast_bsp/conf/machine/include/ast_bsp.inc

		bitbake-layers add-layer ../meta
		
		bitbake-layers add-layer ../meta-openembedded

		bitbake-layers add-layer ../meta-openembedded/meta-oe

		bitbake-layers add-layer ../meta-openembedded/meta-python
	
		bitbake-layers add-layer ../meta-openembedded/meta-perl

		bitbake-layers add-layer ../meta-openembedded/meta-networking

		bitbake-layers add-layer ../meta-openembedded/meta-webserver
		
		bitbake-layers add-layer ../meta-phosphor/
