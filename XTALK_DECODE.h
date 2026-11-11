/*
 * XTALK_DECODE.h - expected power-up values of the host interface's crosstalk
 * widget block on the Octane (publish-safe decode header)
 *
 *   FIELD: <WORD>.<field> <hi>:<lo> <grade>
 *   TESTVEC: <value> as <WORD> => field=val, ...
 *
 * Derivation. The shipped standalone diagnostics for the Octane check eleven
 * widget registers against a table giving an expected value, an access mode
 * and a mask for each. The values below are that table, read from the
 * program's data. Grade: established that the diagnostic expects them after
 * power-up and reports an error for any register that differs; that they are
 * the hardware's reset values is inferred. Register offsets are not stated
 * here, so none is given.
 *
 * The identification word does not decode as a standard widget
 * identification: its part-number field reads 0xe001 where the diagnostic's
 * own part constant is 0xc003. Treat it as the diagnostic's expectation only
 * until a captured read of the register settles it.
 */
#ifndef XTALK_DECODE_H
#define XTALK_DECODE_H

#include <stdint.h>

#define XTALK_ID_EXPECT 0x0e001d55 /* established, diagnostic */
#define XTALK_STATUS_EXPECT 0 /* established, diagnostic */
#define XTALK_ERR_ADDR_HI_EXPECT 0 /* established, diagnostic */
#define XTALK_ERR_ADDR_LO_EXPECT 0 /* established, diagnostic */
#define XTALK_CONTROL_EXPECT 0x32f /* established, diagnostic */
#define XTALK_REQ_TIMEOUT_EXPECT 0xfffff /* established, diagnostic */
#define XTALK_INTR_DEST_HI_EXPECT 0 /* established, diagnostic */
#define XTALK_INTR_DEST_LO_EXPECT 0 /* established, diagnostic */
#define XTALK_ERR_CMD_EXPECT 0 /* established, diagnostic */
#define XTALK_LLP_CONFIG_EXPECT 0x03ff1810 /* established, diagnostic */
#define XTALK_TARGET_FLUSH_EXPECT 0 /* established, diagnostic */

/*
 * Link-layer configuration. The diagnostic describes the expected value as a
 * null timeout of 6 in bits 15:10 and a retry limit of 0x3ff in bits 25:16
 * (maximum burst 16 is also stated; its bit position is not).
 */
/* FIELD: LLP_CONFIG.null_timeout 15:10 inferred */
#define XTALK_LLP_CONFIG_NULL_TIMEOUT_SHIFT 10
#define XTALK_LLP_CONFIG_NULL_TIMEOUT_MASK  0x3fu
/* FIELD: LLP_CONFIG.retry_limit 25:16 inferred */
#define XTALK_LLP_CONFIG_RETRY_LIMIT_SHIFT 16
#define XTALK_LLP_CONFIG_RETRY_LIMIT_MASK  0x3ffu

/*
 * TESTVEC: 0x03ff1810 as LLP_CONFIG => null_timeout=6, retry_limit=0x3ff
 */

#endif
