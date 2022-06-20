MENU_DIR?=${HOME}/.hackedbox/
PIC_DIR?=${HOME}/.hackedbox/backgrounds
MENU?=bgMenu

all:
	echo "" > ${MENU_DIR}/${MENU};
	for name in `ls ${PIC_DIR}` ; do \
		echo "	[exec]    ($$name) {bsetbg -full ${PIC_DIR}/$$name} " >> ${MENU_DIR}/${MENU}; \
	done
