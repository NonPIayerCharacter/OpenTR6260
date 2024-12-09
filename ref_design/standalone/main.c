#include "system.h"
#include "standalone.h"
#include "wdt.h"
#include "drv_adc.h"

extern void hal_rtc_init(void);
extern void wifi_drv_init(void);
extern sys_err_t wifi_load_nv_cfg();

void Main_Init();
void Main_OnEverySecond();

TaskHandle_t g_sys_task_handle1;

void sys_task1(void* pvParameters)
{
	while(!wifi_is_ready_full())
	{
		sys_delay_ms(20);
		system_printf("wifi not ready!\n");
	}

	Main_Init();
	while(true)
	{
		sys_delay_ms(1000);
		Main_OnEverySecond();
	}
}

int main()
{
#if 0
	hal_rf_init();
	hal_phy_init();
	hal_lmac_init();
	hal_lmac_set_dl_callback(nrc_mac_rx);

	util_cli_freertos_init(util_cmd_run_command);

	umac_info_init(0, 0);	// STA
	umac_scan_init(nrc_scan_done);

	system_task_init();
	standalone_main();
	TrPsmInit();
	hal_rtc_init();

	system_default_setting(0);

	vTaskStartScheduler();
#else
	hal_rtc_init();

	partion_init();
	easyflash_init();
	TrPsmInit();

	wifi_drv_init();
	standalone_main();
	wifi_load_nv_cfg();

	//time_check_temp();
	Hal_WtdSoftTask_Init();

	xTaskCreate(
		sys_task1,
		"OpenBeken",
		8 * 256,
		NULL,
		SYSTEM_CLI_TASK_PRIORITY,
		&g_sys_task_handle1);

	vTaskStartScheduler();
#endif
	return 0;
}
