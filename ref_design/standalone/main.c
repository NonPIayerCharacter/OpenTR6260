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
	Main_Init();
	while(true)
	{
		sys_delay_ms(1000);
		Main_OnEverySecond();
		//system_printf("Main_OnEverySecond\n");
	}
}

int32_t OpenBeken(void)
{
	BaseType_t ret = xTaskCreate(
		sys_task1,
		"OpenBeken",
		8192,
		NULL,
		3,
		&g_sys_task_handle1);
	if(ret == pdPASS)
	{
		system_printf("[%s, %d] task created\n", __func__, __LINE__);
		util_trace_stack_add_task(g_sys_task_handle1);
	}
	else
		system_printf("[%s, %d] task creation failed!(0x%x)\n", __func__, __LINE__);

	return 0;
}

int32_t Wifi_Init(void)
{
	int option = TR_PSM_OPTION_RF_INIT;
	ef_get_env_blob(NV_PSM_OPTION, &option, 2, NULL);

	if(option == TR_PSM_OPTION_RF_INIT)
	{
		wifi_drv_init();
		standalone_main();
		OpenBeken();
		wifi_load_nv_cfg();
	}
	else
	{
		extern int nrf_rtc_cal(void);
		nrf_rtc_cal();
	}

	util_cli_freertos_init(util_cmd_run_command);

	return 0;
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
	//TrPsmInit();
	Wifi_Init();
	time_check_temp();
	Hal_WtdSoftTask_Init();

	vTaskStartScheduler();
#endif
	return 0;
}
