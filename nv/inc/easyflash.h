/*
 * This file is part of the EasyFlash Library.
 *
 * Copyright (c) 2014-2019, Armink, <armink.ztl@gmail.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * 'Software'), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * Function: It is an head file for this library. You can see all be called functions.
 * Created on: 2014-09-10
 */


#ifndef EASYFLASH_H_
#define EASYFLASH_H_

#include <ef_cfg.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include "system_log.h"
#ifdef __cplusplus
extern "C" {
#endif
extern void system_printf(const char *f, ...);

/* EasyFlash debug print function. Must be implement by user. */
#ifdef PRINT_DEBUG
#define EF_DEBUG(...) ef_log_debug(__FILE__, __LINE__, __VA_ARGS__)
#else
#define EF_DEBUG(...)
#endif
/* EasyFlash routine print function. Must be implement by user. */
#define EF_INFO(...)  ef_log_info(__VA_ARGS__)
/* EasyFlash assert for developer. */
#define EF_ASSERT(EXPR)                                                       \
if (!(EXPR))                                                                  \
{                                                                             \
    EF_DEBUG("(%s) has assert failed at %s.\n", #EXPR, __FUNCTION__);         \
    while (1);                                                                \
}

/**
 * ENV version number defined by user.
 * Please change it when your firmware add a new ENV to default_env_set.
 */
#ifndef EF_ENV_VER_NUM
#define EF_ENV_VER_NUM                 0
#endif

/* EasyFlash software version number */
#define EF_SW_VERSION                  "4.0.0"
#define EF_SW_VERSION_NUM              0x40000

typedef struct _ef_env {
    char *key;
    void *value;
    size_t value_len;
} ef_env, *ef_env_t;

/* EasyFlash error code */
typedef enum {
    EF_NO_ERR,
    EF_ERASE_ERR,
    EF_READ_ERR,
    EF_WRITE_ERR,
    EF_ENV_NAME_ERR,
    EF_ENV_NAME_EXIST,
    EF_ENV_FULL,
    EF_ENV_INIT_FAILED,
} EfErrCode;

/* the flash sector current status */
typedef enum {
    EF_SECTOR_EMPTY,
    EF_SECTOR_USING,
    EF_SECTOR_FULL,
} EfSecrorStatus;

/* easyflash.c */
EfErrCode easyflash_init(void);

#ifdef EF_USING_ENV
/* only supported on ef_env.c */
size_t ef_get_env_blob(const char *key, void *value_buf, size_t buf_len, size_t *value_len);
EfErrCode ef_set_env_blob(const char *key, const void *value_buf, size_t buf_len);

/* ef_env.c, ef_env_legacy_wl.c and ef_env_legacy.c */
EfErrCode ef_load_env(void);
void ef_print_env(void);
char *ef_get_env(const char *key);
EfErrCode ef_set_env(const char *key, const char *value);
EfErrCode ef_del_env(const char *key);
#if ENABLE_EZIOT
EfErrCode ef_del_env_by_prefix(const char *key);
#endif
EfErrCode ef_save_env(void);
EfErrCode ef_env_set_default(void);
size_t ef_get_env_write_bytes(void);
EfErrCode ef_set_and_save_env(const char *key, const char *value);
EfErrCode ef_del_and_save_env(const char *key);

EfErrCode backup_set_env_blob(const char *key, const void *value_buf, size_t buf_len);
size_t backup_get_env_blob(const char *key, void *value_buf, size_t buf_len, size_t *value_len);
EfErrCode backup_del_env(const char *key);


void backup_recovery(void);
void backup_print_env(void);

#define PARTION_NAME_CPU1		"cpu1"
#define PARTION_NAME_CPU2		"cpu2"
#define PARTION_NAME_NV_USR		"nv_usr"
#define PARTION_NAME_NV_BACKUP	"nv_backup"
#define PARTION_NAME_NV_AMT		"nv_amt"
#define PARTION_NAME_DATA_CERT	"data_cert"
#define PARTION_NAME_DATA_CA	"data_ca" // add by wangxia 20200226
#define PARTION_NAME_DATA_KEY	"data_key" // add by wangxia 20200226
#define PARTION_NAME_DATA_SSL	"data_ssl"
#define PARTION_NAME_DATA_OTA	"data_ota"
#define PARTION_NAME_LFS		"lfs"


int partion_info_get(char *key, unsigned int *addr, unsigned int * length);
int partion_init(void);
void partion_print_all(void);

#endif

#ifdef EF_USING_IAP
/* ef_iap.c */
EfErrCode ef_erase_bak_app(size_t app_size);
EfErrCode ef_erase_user_app(uint32_t user_app_addr, size_t user_app_size);
EfErrCode ef_erase_spec_user_app(uint32_t user_app_addr, size_t app_size,
                                 EfErrCode (*app_erase)(uint32_t addr, size_t size));
EfErrCode ef_erase_bl(uint32_t bl_addr, size_t bl_size);
EfErrCode ef_write_data_to_bak(uint8_t *data, size_t size, size_t *cur_size,
                               size_t total_size);
EfErrCode ef_copy_app_from_bak(uint32_t user_app_addr, size_t app_size);
EfErrCode ef_copy_spec_app_from_bak(uint32_t user_app_addr, size_t app_size,
                                    EfErrCode (*app_write)(uint32_t addr, const uint32_t *buf, size_t size));
EfErrCode ef_copy_bl_from_bak(uint32_t bl_addr, size_t bl_size);
uint32_t ef_get_bak_app_start_addr(void);
#endif

#ifdef EF_USING_LOG
/* ef_log.c */
EfErrCode ef_log_read(size_t index, uint32_t *log, size_t size);
EfErrCode ef_log_write(const uint32_t *log, size_t size);
EfErrCode ef_log_clean(void);
size_t ef_log_get_used_size(void);
#endif

/* ef_utils.c */
uint32_t ef_calc_crc32(uint32_t crc, const void *buf, size_t size);

/* ef_port.c */
EfErrCode ef_port_read(uint32_t addr, uint32_t *buf, size_t size);
EfErrCode ef_port_erase(uint32_t addr, size_t size);
EfErrCode ef_port_write(uint32_t addr, const uint32_t *buf, size_t size);
void ef_port_env_lock(void);
void ef_port_env_unlock(void);
void ef_log_debug(const char *file, const long line, const char *format, ...);
void ef_log_info(const char *format, ...);
void ef_print(const char *format, ...);

#ifdef __cplusplus
}
#endif

#endif /* EASYFLASH_H_ */
