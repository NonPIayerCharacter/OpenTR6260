VPATH  += $(OBK_PATH)
DEFINE += -DUSER_SW_VER='"$(APP_VERSION)"'
DEFINE += -DPLATFORM_TR6260

CSRCS  += base64/base64.c \
 bitmessage/bitmessage_read.c \
 bitmessage/bitmessage_write.c \
 cJSON/cJSON.c \
 cmnds/cmd_channels.c \
 cmnds/cmd_eventHandlers.c \
 cmnds/cmd_if.c \
 cmnds/cmd_main.c \
 cmnds/cmd_newLEDDriver_colors.c \
 cmnds/cmd_newLEDDriver.c \
 cmnds/cmd_repeatingEvents.c \
 cmnds/cmd_script.c \
 cmnds/cmd_simulatorOnly.c \
 cmnds/cmd_tasmota.c \
 cmnds/cmd_tcp.c \
 cmnds/cmd_test.c \
 cmnds/cmd_tokenizer.c \
 devicegroups/deviceGroups_read.c \
 devicegroups/deviceGroups_util.c \
 devicegroups/deviceGroups_write.c \
 driver/drv_main.c \
 hal/tr6260/hal_adc_tr6260.c \
 hal/tr6260/hal_flashConfig_tr6260.c \
 hal/tr6260/hal_flashVars_tr6260.c \
 hal/tr6260/hal_generic_tr6260.c \
 hal/tr6260/hal_main_tr6260.c \
 hal/tr6260/hal_pins_tr6260.c \
 hal/tr6260/hal_wifi_tr6260.c \
 httpserver/hass.c \
 httpserver/http_basic_auth.c \
 httpserver/http_fns.c \
 httpserver/http_tcp_server_nonblocking.c \
 httpserver/http_tcp_server.c \
 httpserver/json_interface.c \
 httpserver/new_http.c \
 httpserver/rest_interface.c \
 mqtt/new_mqtt_deduper.c \
 jsmn/jsmn.c \
 logging/logging.c \
 mqtt/new_mqtt.c \
 new_cfg.c \
 new_common.c \
 new_ping.c \
 new_pins.c \
 rgb2hsv.c \
 tiny_crc8.c \
 user_main.c \
# cmnds/cmd_send.c \
# driver/drv_adcButton.c \
# driver/drv_adcSmoother.c \
# driver/drv_aht2x.c \
# driver/drv_battery.c \
# driver/drv_bl_shared.c \
# driver/drv_bl0937.c \
# driver/drv_bl0942.c \
# driver/drv_bmp280.c \
# driver/drv_bmpi2c.c \
# driver/drv_bp1658cj.c \
# driver/drv_bp5758d.c \
# driver/drv_bridge_driver.c \
# driver/drv_chargingLimit.c \
# driver/drv_charts.c \
# driver/drv_cht8305.c \
# driver/drv_cse7766.c \
# driver/drv_ddp.c \
# driver/drv_debouncer.c \
# driver/drv_dht_internal.c \
# driver/drv_dht.c \
# driver/drv_doorSensorWithDeepSleep.c \
# driver/drv_gn6932.c \
# driver/drv_hd2015.c \
# driver/drv_ht16k33.c \
# driver/drv_httpButtons.c \
# driver/drv_hue.c \
# driver/drv_kp18058.c \
# driver/drv_kp18068.c \
# driver/drv_max72xx_clock.c \
# driver/drv_max72xx_internal.c \
# driver/drv_max72xx_single.c \
# driver/drv_mcp9808.c \
# driver/drv_ntp_events.c \
# driver/drv_ntp.c \
# driver/drv_pt6523.c \
# driver/drv_pwm_groups.c \
# driver/drv_pwmToggler.c \
# driver/drv_pwrCal.c \
# driver/drv_rn8209.c \
# driver/drv_sgp.c \
# driver/drv_shiftRegister.c \
# driver/drv_sht3x.c \
# driver/drv_sm15155e.c \
# driver/drv_sm16703P.c \
# driver/drv_sm2135.c \
# driver/drv_sm2235.c \
# driver/drv_soft_i2c.c \
# driver/drv_soft_spi.c \
# driver/drv_spi_flash.c \
# driver/drv_spi.c \
# driver/drv_spidma.c \
# driver/drv_ssdp.c \
# driver/drv_tasmotaDeviceGroups.c \
# driver/drv_test_drivers.c \
# driver/drv_textScroller.c \
# driver/drv_tm_gn_display_shared.c \
# driver/drv_tm1637.c \
# driver/drv_tm1638.c \
# driver/drv_tuyaMCU.c \
# driver/drv_tuyaMCUSensor.c \
# driver/drv_uart.c \
# driver/drv_ucs1912.c \
# driver/drv_wemo.c \
# driver/drv_ds1820_simple.c \
# httpclient/http_client.c \
# httpclient/utils_net.c \
# httpclient/utils_timer.c \
# i2c/drv_i2c_lcd_pcf8574t.c \
# i2c/drv_i2c_main.c \
# i2c/drv_i2c_mcp23017.c \
# i2c/drv_i2c_tc74.c \
# littlefs/lfs_util.c \
# littlefs/lfs.c \
# littlefs/our_lfs.c \
# memory/memtest.c \
# ota/ota.c \
# sim/sim_uart.c \
