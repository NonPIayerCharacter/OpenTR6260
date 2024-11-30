#===============================================================================
#
#	file name: tr6260 makeflie top
#
#===============================================================================
TIMER_START = $(shell date)

#===============================================================================
#   path
#===============================================================================

export TOPDIR=..
export DRV_PATH=$(TOPDIR)/drivers
export PLATFORM_PATH=$(TOPDIR)/platform
export WIFI_PATH=$(TOPDIR)/wifi
export REF_PATH=$(TOPDIR)/ref_design
export SYSTEM_PATH=$(TOPDIR)/system
export APP_PATH= $(TOPDIR)/apps
export INC_PATH= $(TOPDIR)/include
export SCRIPT_PATH= $(TOPDIR)/scripts
export OUT_PATH= $(TOPDIR)/out
export OBK_PATH=$(TOPDIR)/../../src


default: help

help:
	@echo "================== Make help ==================="
	@echo "make [help]                     help"
	@echo "make tr6260_3                   compile tr6260_3"
	@echo "make tr6260_3_clean             clean tr6260_3"
	@echo "make tr6260                     compile tr6260"
	@echo "make tr6260_clean               clean tr6260"
	@echo "make tr6260s1                   compile tr6260s1"
	@echo "make tr6260s1_clean             clean tr6260s1"

tr6260_3:
	$(MAKE) --no-print-directory -rR -f Makefile.standalone_diff type=tr6260_3 all
	@echo "$(TIMER_START)"
	@date

tr6260_3_clean:
	$(MAKE) --no-print-directory -rR -f Makefile.standalone_diff type=tr6260_3 clean
	@echo "$(TIMER_START)"
	@date

tr6260:
	$(MAKE) --no-print-directory -rR -f Makefile.standalone_diff type=tr6260 all
	@echo "$(TIMER_START)"
	@date

tr6260_clean :
	$(MAKE) --no-print-directory -rR -f Makefile.standalone_diff type=tr6260 clean
	@echo "$(TIMER_START)"
	@date

tr6260s1:
	$(MAKE) --no-print-directory -rR -f Makefile.standalone_diff type=tr6260s1 all
	@echo "$(TIMER_START)"
	@date

tr6260s1_clean:
	$(MAKE) --no-print-directory -rR -f Makefile.standalone_diff type=tr6260s1 clean
	@echo "$(TIMER_START)"
	@date
