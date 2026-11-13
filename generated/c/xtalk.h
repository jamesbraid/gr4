/* generated from devices/xtalk/registers.toml by defs-gen - do not edit, change the source */
/* expected power-up values of the host interface's crosstalk */
#ifndef XTALK_GEN_H
#define XTALK_GEN_H

#include <stdint.h>


/*
 * Link-layer configuration. The diagnostic describes the expected value as a
 * null timeout of 6 in bits 15:10 and a retry limit of 0x3ff in bits 25:16
 * (maximum burst 16 is also stated; its bit position is not).
 */
/* word LLP_CONFIG: 32 bits; diagnostic program data */
#define XTALK_LLP_CONFIG_WIDTH                       32 /* inferred */
#define XTALK_LLP_CONFIG_RETRY_LIMIT_SHIFT           16 /* inferred */
#define XTALK_LLP_CONFIG_RETRY_LIMIT_MASK            0x3ffu
#define XTALK_LLP_CONFIG_RETRY_LIMIT_INPLACE         (XTALK_LLP_CONFIG_RETRY_LIMIT_MASK << XTALK_LLP_CONFIG_RETRY_LIMIT_SHIFT)
#define XTALK_LLP_CONFIG_NULL_TIMEOUT_SHIFT          10 /* inferred */
#define XTALK_LLP_CONFIG_NULL_TIMEOUT_MASK           0x3fu
#define XTALK_LLP_CONFIG_NULL_TIMEOUT_INPLACE        (XTALK_LLP_CONFIG_NULL_TIMEOUT_MASK << XTALK_LLP_CONFIG_NULL_TIMEOUT_SHIFT)

#define XTALK_CONTROL_EXPECT                         0x32fu /* established */
#define XTALK_ERR_ADDR_HI_EXPECT                     0x0u /* established */
#define XTALK_ERR_ADDR_LO_EXPECT                     0x0u /* established */
#define XTALK_ERR_CMD_EXPECT                         0x0u /* established */
#define XTALK_ID_EXPECT                              0xe001d55u /* established */
#define XTALK_INTR_DEST_HI_EXPECT                    0x0u /* established */
#define XTALK_INTR_DEST_LO_EXPECT                    0x0u /* established */
#define XTALK_LLP_CONFIG_EXPECT                      0x3ff1810u /* established */
#define XTALK_REQ_TIMEOUT_EXPECT                     0xfffffu /* established */
#define XTALK_STATUS_EXPECT                          0x0u /* established */
#define XTALK_TARGET_FLUSH_EXPECT                    0x0u /* established */

#endif /* XTALK_GEN_H */
