// generated from gr4 136a8bc692fd XTALK_DECODE.h - do not edit, regenerate in gr4
//!
//! Expected power-up values of the crosstalk widget block on the Octane host interface.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established, diagnostic.
pub const ID_EXPECT: u32 = 0xe001d55;
/// established, diagnostic.
pub const STATUS_EXPECT: u32 = 0;
/// established, diagnostic.
pub const ERR_ADDR_HI_EXPECT: u32 = 0;
/// established, diagnostic.
pub const ERR_ADDR_LO_EXPECT: u32 = 0;
/// established, diagnostic.
pub const CONTROL_EXPECT: u32 = 0x32f;
/// established, diagnostic.
pub const REQ_TIMEOUT_EXPECT: u32 = 0xfffff;
/// established, diagnostic.
pub const INTR_DEST_HI_EXPECT: u32 = 0;
/// established, diagnostic.
pub const INTR_DEST_LO_EXPECT: u32 = 0;
/// established, diagnostic.
pub const ERR_CMD_EXPECT: u32 = 0;
/// established, diagnostic.
pub const LLP_CONFIG_EXPECT: u32 = 0x3ff1810;
/// established, diagnostic.
pub const TARGET_FLUSH_EXPECT: u32 = 0;

/// The `LLP_CONFIG` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct LlpConfig(u32);

impl LlpConfig {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:10, inferred.
    pub const fn null_timeout(self) -> u32 {
        (self.0 >> 10) & 0x3f
    }

    /// Bits 25:16, inferred.
    pub const fn retry_limit(self) -> u32 {
        (self.0 >> 16) & 0x3ff
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_llp_config_3ff1810() {
        let w = LlpConfig::new(0x3ff1810);
        assert_eq!(w.null_timeout(), 6, "null_timeout");
        assert_eq!(w.retry_limit(), 1023, "retry_limit");
    }
}
