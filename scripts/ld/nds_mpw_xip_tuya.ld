/* This file is generated by nds_ldsag (version (2016-04-13) ). */
ENTRY(_start)
SECTIONS
{
	. = 0xd08000;
    FLASH_BEGIN = .;
	.xip 	:	{ 
        *(.xip ) 
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/system_common.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/system_modem_api.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/main.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/standalone.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/tasks.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/list.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/queue.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/hal_phy_mpw.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/hal_lmac_common.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/hal_lmac_util.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/hal_lmac_ps_common.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/hal_lmac_ps_psnonpoll.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/hal_rf_mpw.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/util_cli_freertos.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/util_trace.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/util_cmd.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/util_cmd_lmac.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/util_cmd_lmac_indirect.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/util_sysbuf_queue.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/util_trace_stack.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/umac_scan.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/umac_beacon.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/umac_probe_resp.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/umac_bcn_monitor.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/config.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/umac_info.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/notify.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/bss.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eap_register.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/common.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wpa_debug.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wpabuf.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wmm_ac.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/os_freeRTOS.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eloop_freeRTOS.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/config_nrc.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wpa.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/preauth.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/pmksa_cache.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/peerkey.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wpa_ie.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wpa_common.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/l2_packet_freeRTOS.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eapol_supp_sm.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eap.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eap_methods.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ap.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/hostapd.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wpa_auth_glue.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/utils.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/authsrv.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ap_config.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ip_addr.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/sta_info.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/tkip_countermeasures.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ap_mlme.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ieee802_1x.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eapol_auth_sm.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ieee802_11_auth.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ieee802_11_shared.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/drv_callbacks.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ap_drv_ops.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/beacon.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/bss_load.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eap_user_db.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/neighbor_db.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/rrm.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ieee802_11_ht.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ctrl_iface_ap.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eap_server.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eap_server_identity.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eap_server_methods.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wmm.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ap_list.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ieee802_11.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/hw_features.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/dfs.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wpa_auth.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wpa_auth_ie.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/pmksa_cache_auth.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/crypto_internal.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/tls_none.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/aes-internal.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/aes-internal-dec.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/aes-unwrap.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/aes-wrap.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/aes-internal-enc.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/md5.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/md5-internal.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/rc4.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ctrl_iface.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ctrl_iface_freeRTOS.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/sme.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ieee802_11_common.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/hw_features_common.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/eap_common.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/sha1.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/sha1-prf.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/sha1-internal.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/sha1-pbkdf2.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/driver_common.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wpa_supplicant.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/events.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/blacklist.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/wpas_glue.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/scan.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/main_freeRTOS.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/drivers.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/driver_nrc.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/driver_nrc_scan.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/driver_nrc_tx.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/driver_nrc_rx.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/driver_nrc_debug.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ip4.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ip4_frag.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ip4_addr.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/def.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/dns.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/inet_chksum.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ip.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/stats.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/autoip.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/dhcp.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/etharp.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/icmp.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/igmp.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/raw.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/timeouts.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/sys.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/tcp.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/tcp_in.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/tcp_out.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/udp.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/mem.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/memp.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/netif.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/pbuf.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/init.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/sys_arch.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/api_lib.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/api_msg.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/err.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/sockets.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/tcpip.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ethernet.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/netbuf.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/ping.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/lwiperf.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/dhcpserver.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/umac_wim_dispatcher.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/umac_wim_manager.c.o (.text .text.*)
../out/mpw/standalone_tuya/obj_standalone_mpw_tuya/umac_wim_builder.c.o (.text .text.*)
	    *(.rodata .rodata.* .gnu.linkonce.r.* ) 
        *(.rodata1 ) 
		KEEP(*(SORT(.at_cmd* )))
		KEEP(*(SORT(.nrc_cmd* )))
    }
    FLASH_SIZE = (. - FLASH_BEGIN);
	PROVIDE (__executable_start = 0x0);
	NDS_SAG_LMA_FLASH1 = 0x0 ;
	. = 0x00010000;
	ROM_BEGIN = .;	
	.nds32_init 	: { KEEP(*(.nds32_init )) }
	.interp 	: { *(.interp ) }
	.hash 	: { *(.hash ) }
	.dynsym 	: { *(.dynsym ) }
	.dynstr 	: { *(.dynstr ) }
	.gnu.version 	: { *(.gnu.version ) }
	.gnu.version_d 	: { *(.gnu.version_d ) }
	.gnu.version_r 	: { *(.gnu.version_r ) }
	.rel.init 	: { *(.rel.init ) }
	.rela.init 	: { *(.rela.init ) }
	.rel.text 	: { *(.rel.text .rel.text.* .rel.gnu.linkonce.t.* ) }
	.rela.text 	: { *(.rela.text .rela.text.* .rela.gnu.linkonce.t.* ) }
	.rel.fini 	: { *(.rel.fini ) }
	.rela.fini 	: { *(.rela.fini ) }
	.rel.rodata 	: { *(.rel.rodata .rel.rodata.* .rel.gnu.linkonce.r.* ) }
	.rela.rodata 	: { *(.rela.rodata .rela.rodata.* .rela.gnu.linkonce.r.* ) }
	.rel.data.rel.ro 	: { *(.rel.data.rel.ro* ) }
	.rela.data.rel.ro 	: { *(.rel.data.rel.ro* ) }
	.rel.data 	: { *(.rel.data .rel.data.* .rel.gnu.linkonce.d.* ) }
	.rela.data 	: { *(.rela.data .rela.data.* .rela.gnu.linkonce.d.* ) }
	.rel.tdata 	: { *(.rel.tdata .rel.tdata.* .rel.gnu.linkonce.td.* ) }
	.rela.tdata 	: { *(.rela.tdata .rela.tdata.* .rela.gnu.linkonce.td.* ) }
	.rel.tbss 	: { *(.rel.tbss .rel.tbss.* .rel.gnu.linkonce.tb.* ) }
	.rela.tbss 	: { *(.rela.tbss .rela.tbss.* .rela.gnu.linkonce.tb.* ) }
	.rel.ctors 	: { *(.rel.ctors ) }
	.rela.ctors 	: { *(.rela.ctors ) }
	.rel.dtors 	: { *(.rel.dtors ) }
	.rela.dtors 	: { *(.rela.dtors ) }
	.rela.dyn 	: { *(rela.dyn ) *(.rela__libc_subfreeres ) *(.rela__libc_atexit ) *(.rela__libc_thread_subfreeres ) *(.rela.init_array ) *(.rela.fini_array ) }
	.rel.got 	: { *(.rel.got ) }
	.rela.got 	: { *(.rela.got ) }
	.rel.sdata 	: { *(.rel.sdata .rel.sdata.* .rel.gnu.linkonce.s.* ) }
	.rela.sdata 	: { *(.rela.sdata .rela.sdata.* .rela.gnu.linkonce.s.* ) }
	.rel.sbss 	: { *(.rel.sbss .rel.sbss.* .rel.gnu.linkonce.sb.* ) }
	.rela.sbss 	: { *(.rela.sbss .rela.sbss.* .rela.gnu.linkonce.sb.* ) }
	.rel.sdata2 	: { *(.rel.sdata2 .rel.sdata2.* .rel.gnu.linkonce.s2.* ) }
	.rela.sdata2 	: { *(.rela.sdata2 .rela.sdata2.* .rela.gnu.linkonce.s2.* ) }
	.rel.sbss2 	: { *(.rel.sbss2 .rel.sbss2.* .rel.gnu.linkonce.sb2.* ) }
	.rela.sbss2 	: { *(.rela.sbss2 .rela.sbss2.* .rela.gnu.linkonce.sb2.* ) }
	.rel.bss 	: { *(.rel.bss .rel.bss.* .rel.gnu.linkonce.b.* ) }
	.rela.bss 	: { *(.rela.bss .rela.bss.* .rela.gnu.linkonce.b.* ) }
	.rel.plt 	: { *(.rel.plt ) }
	.rela.plt 	: { *(.rela.plt ) }
	.init 	: { KEEP(*(.init )) }
	.plt 	: { *(.plt ) }
	.text 	: { *(.text .stub .text.* .gnu.linkonce.t.* ) KEEP(*(.text.*personality* )) *(.gnu.warning ) . = ALIGN(4); }
	.fini 	: { KEEP(*(.fini )) }
	.ex9.itable 	: { *(.ex9.itable ) }
	PROVIDE (__etext = .);
	PROVIDE (_etext = .);
	PROVIDE (etext = .);
	.rodata 	: { *(.rodata .rodata.* .gnu.linkonce.r.* ) }
	.rodata1 	: { *(.rodata1 ) }
	.sdata2 	: { *(.sdata2 .sdata2.* .gnu.linkonce.s2.* ) }
	.sbss2 	: { *(.sbss2 .sbss2.* .gnu.linkonce.sb2.* ) }
	.eh_frame_hdr 	: { *(.eh_frame_hdr ) }

	/*	. = 0x200000; */
	RAM_BEGIN = .;
	. = ALIGN(0x20);
	__rw_lma_start =  LOADADDR (.eh_frame);
	__rw_vma_start = ADDR(.eh_frame);
	.eh_frame 	: 	{ KEEP(*(.eh_frame )) }
	.gcc_except_table 	: 	{ KEEP(*(.gcc_except_table )) *(.gcc_except_table.* ) }
	.tdata 	: 	{ *(.tdata .tdata.* .gnu.linkonce.td.* ) }
	. = ALIGN(4);
	PROVIDE (__preinit_array_start = .);
	.preinit_array 	: 	{ KEEP(*(.preinit_array )) }
	PROVIDE (__preinit_array_end = .);
	PROVIDE (__init_array_start = .);
	.init_array 	: 	{ KEEP(*(.init_array )) }
	PROVIDE (__init_array_end = .);
	PROVIDE (__fini_array_start = .);
	.fini_array 	: 	{ KEEP(*(.fini_array )) }
	PROVIDE (__fini_array_end = .);
	PROVIDE (__ctors_start = .);
	.ctors 	: 	{ KEEP(*crtbegin*.o(.ctors)) KEEP(*(EXCLUDE_FILE (*crtend*.o) .ctors)) KEEP(*(SORT(.ctors.* ))) KEEP(*(.ctors )) }
	PROVIDE (__ctors_end = .);
	PROVIDE (__dtors_start = .);
	.dtors 	: 	{ KEEP(*crtbegin*.o(.dtors)) KEEP(*(EXCLUDE_FILE (*crtend*.o) .dtors)) KEEP(*(SORT(.dtors.* ))) KEEP(*(.dtors )) }
	PROVIDE (__dtors_end = .);
	.jcr 	: 	{ KEEP(*(.jcr )) }
	.data.rel.ro 	: 	{ *(.data.rel.ro.local ) *(.data.rel.ro* ) }
	.dynamic 	: 	{ *(.dynamic ) }
	.data 	: 	{ *(.data .data.* .gnu.linkonce.d.* ) KEEP(*(.gnu.linkonce.d.*personality* )) SORT(CONSTRUCTORS) . = ALIGN(8); }
	.data1 	: 	{ *(.data1 ) . = ALIGN(8); }
	.got 	: 	{ *(.got.plt ) *(.got ) }
	.sdata_d 	: 	{ *(.sdata_d .sdata_d.* ) }
	.sdata_w 	: 	{ *(.sdata_w .sdata_w.* ) }
	.sdata_h 	: 	{ *(.sdata_h .sdata_h.* ) }
	.sdata_b 	: 	{ *(.sdata_b .sdata_b.* ) }
	.sdata_f 	: 	{ *(.sdata_f .sdata_f.* ) }
	. = ALIGN(4);
	_edata = .;
	ROM_SIZE = . - ROM_BEGIN;
	PROVIDE(_rom_len = ROM_SIZE);
	PROVIDE (edata = .);
	__bss_start = .;
	PROVIDE (__sbss_start = .);
	PROVIDE (___sbss_start = .);
	__rw_lma_end =  LOADADDR (.tbss);
	.tbss 	: 	{ *(.tbss .tbss.* .gnu.linkonce.tb.* ) *(.tcommon ) }
	.sbss_f 	: 	{ *(.sbss_f .sbss_f.* ) *(.scommon_f .scommon_f.* ) }
	.sbss_b 	: 	{ *(.sbss_b .sbss_b.* ) *(.scommon_b .scommon_b.* ) . = ALIGN(2); }
	.sbss_h 	: 	{ *(.sbss_h .sbss_h.* ) *(.scommon_h .scommon_h.* ) . = ALIGN(4); }
	.sbss_d 	: 	{ *(.sbss_d .sbss_d.* ) *(.scommon_d .scommon_d.* ) }
	.bss 	: 
	{
		*(.sbss_w .sbss_w.* ) *(.scommon_w .scommon_w.* ) *(.dynsbss ) *(.scommon ) . = ALIGN(8);	
		*(.dynbss ) *(.bss .bss.* .gnu.linkonce.b.* ) *(COMMON ) . = ALIGN(4); 
	}
	PROVIDE (__sbss_end = .);
	PROVIDE (___sbss_end = .);
	. = ALIGN(4);
	_end = .;
	PROVIDE (end = .);
	/* PROVIDE (_stack = 0x0020fffc); */
	PROVIDE (_stack = 0x00c07f00);
	PROVIDE (_heap1_start = .);
	PROVIDE (_heap_start = 0x00200000);
	PROVIDE (_heap2_start = 0x00c02000);
	RAM_SIZE = . - RAM_BEGIN;

	. = 0x00C00000;
	BUF_BEGIN = .;
	PROVIDE (__BUF_START = .);
	/*.buffer 	: { KEEP(*(.buffer )) }*/
	.buffer_section (NOLOAD) :
	{
		KEEP(*(.buffer))
	}
	BUF_END = .;
	BUF_SIZE = . - BUF_BEGIN;
	PROVIDE (__BUF_END = .);

	.stab	0 : { *(.stab) }
	.stabstr	0 : { *(.stabstr) }
	.stab.excl	0 : { *(.stab.excl) }
	.stab.exclstr	0 : { *(.stab.exclstr) }
	.stab.index	0 : { *(.stab.index) }
	.stab.indexstr	0 : { *(.stab.indexstr) }
	.note.nds32	0 : { *(.note.nds32) *(.note.nds32.*) }
	.comment	0 : { *(.comment) }
	.debug	0 : { *(.debug) }
	.line	0 : { *(.line) }
	.debug_srcinfo	0 : { *(.debug_srcinfo) }
	.debug_sfnames	0 : { *(.debug_sfnames) }
	.debug_aranges	0 : { *(.debug_aranges) }
	.debug_pubnames	0 : { *(.debug_pubnames) }
	.debug_info	0 : { *(.debug_info .gnu.linkonce.wi.*) }
	.debug_abbrev	0 : { *(.debug_abbrev) }
	.debug_line	0 : { *(.debug_line) }
	.debug_frame	0 : { *(.debug_frame) }
	.debug_str	0 : { *(.debug_str) }
	.debug_loc	0 : { *(.debug_loc) }
	.debug_macinfo	0 : { *(.debug_macinfo) }
	.debug_weaknames	0 : { *(.debug_weaknames) }
	.debug_funcnames	0 : { *(.debug_funcnames) }
	.debug_typenames	0 : { *(.debug_typenames) }
	.debug_varnames	0 : { *(.debug_varnames) }
}
/*ASSERT((DEFINED (_RELAX_END_) ? 0x0 : ROM_SIZE) <= 0x30000, "ROM OVERFLOW");*/
/*ASSERT((DEFINED (_RELAX_END_) ? 0x0 : RAM_SIZE) <= 0x20000, "RAM OVERFLOW");*/

ASSERT((DEFINED (_RELAX_END_) ? 0x0 : ROM_SIZE) <= 0x40000, "ROM OVERFLOW");
ASSERT((DEFINED (_RELAX_END_) ? 0x0 : RAM_SIZE) <= 0x40000, "RAM OVERFLOW");
ASSERT((DEFINED (_RELAX_END_) ? 0x0 : BUF_SIZE) <= 0x10000, "BUF OVERFLOW");
/* ASSERT(((end + _stack_size) < _stack) , "BSS exceed STACK Position"); */
