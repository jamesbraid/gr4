// generated from defs/xtalk.toml by defs-gen - do not edit, change the source
// expected power-up values of the host interface's crosstalk
#![allow(dead_code)]

/// Link-layer configuration. The diagnostic describes the expected value as a null timeout of 6 in bits 15:10 and a retry limit of 0x3ff in bits 25:16 (m (inferred)
pub mod llp_config {
    pub const WIDTH: u32 = 32;
    pub mod retry_limit { // bits 25:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod null_timeout { // bits 15:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
pub const CONTROL_EXPECT: u32 = 0x32f; // established
pub const ERR_ADDR_HI_EXPECT: u32 = 0x0; // established
pub const ERR_ADDR_LO_EXPECT: u32 = 0x0; // established
pub const ERR_CMD_EXPECT: u32 = 0x0; // established
pub const ID_EXPECT: u32 = 0xe001d55; // established
pub const INTR_DEST_HI_EXPECT: u32 = 0x0; // established
pub const INTR_DEST_LO_EXPECT: u32 = 0x0; // established
pub const LLP_CONFIG_EXPECT: u32 = 0x3ff1810; // established
pub const REQ_TIMEOUT_EXPECT: u32 = 0xfffff; // established
pub const STATUS_EXPECT: u32 = 0x0; // established
pub const TARGET_FLUSH_EXPECT: u32 = 0x0; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn llp_config_3ff1810() {
        assert_eq!(llp_config::null_timeout::get(0x3ff1810), 6);
        assert_eq!(llp_config::retry_limit::get(0x3ff1810), 1023);
    }
}
