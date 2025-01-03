/*******************************************************************************
 * Copyright by Transa Semi.
 *
 * File Name:    hal_efuse.c
 * File Mark:    
 * Description:  pwm
 * Others:        
 * Version:       V1.0
 * Author:        yanhj
 * Date:          2018-12-24
 * History 1:      
 *     Date: 
 *     Version:
 *     Author: 
 *     Modification:  
 * History 2: 
  ********************************************************************************/


/****************************************************************************
* 	                                           Include files
****************************************************************************/
#include "soc_top_reg.h"
#include "system_common.h"

/****************************************************************************
* 	                                           Local Macros
****************************************************************************/
#define EFUSE_ADDR_AND_START 			(SOC_EFUSE_BASE + 0x0)
#define EFUSE_STATE 		            (SOC_EFUSE_BASE + 0x4)
#define EFUSE_VALUE 		            (SOC_EFUSE_BASE + 0x8)

#define  EFUSE_START(X) 				(X) << 0
#define  EFUSE_ADDR(X)                  (X) << 4

#define  EFUSE_VALUE_READY              0x1
/****************************************************************************
* 	                                           Local Types
****************************************************************************/

/****************************************************************************
* 	                                           Local Constants
****************************************************************************/

/****************************************************************************
* 	                                           Local Function Prototypes
****************************************************************************/

/****************************************************************************
* 	                                          Global Constants
****************************************************************************/

/****************************************************************************
* 	                                          Global Variables
****************************************************************************/

/****************************************************************************
* 	                                          Global Function Prototypes
****************************************************************************/

/****************************************************************************
* 	                                          Function Definitions
****************************************************************************/

/*******************************************************************************
 * Function:     hal_efuse_read
 * Description:  
 * Parameters: 
 *   Input:
 *
 *   Output:
 *
 * Returns: 
 *
 *
 * Others: 
 ********************************************************************************/
unsigned int hal_efuse_read(int  addr)
{	
	if(addr > 7)
		return -1;

	OUT32(EFUSE_ADDR_AND_START, EFUSE_START(1) | EFUSE_ADDR(addr));

	usdelay(1);
	
	while(1)
		if((REG32(EFUSE_STATE) & EFUSE_VALUE_READY) == 0)
			break;

	return REG32(EFUSE_VALUE);
}


