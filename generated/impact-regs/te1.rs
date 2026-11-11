// generated from gr4 b0b868e9bfd9 TE1_DECODE.h - do not edit, regenerate in gr4
//!
//! Texture RAM revision words and loader registers of the Impact graphics subsystem.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established, diagnostic.
pub const TRAM_REV_WORD0: u32 = 0x1c011401;
/// established, diagnostic.
pub const TRAM_REV_WORD1: u32 = 0xc000400;
/// established, diagnostic.
pub const TRAM_REV_WORD0_LOW_HALF: u32 = 0x1401;
/// established, diagnostic.
pub const TRAM_REV_WORD0_HIGH_HALF: u32 = 0x1c01;

/// Texture engine register `tx_mipmap`: write, 32-bit; reset unknown; established.
pub const REG_TX_MIPMAP: u32 = 0xf191;
pub const REG_TX_MIPMAP_WIDTH: u32 = 32;
/// Texture engine register `tl_mode`: write, 32-bit; reset unknown; established.
pub const REG_TL_MODE: u32 = 0xf1a1;
pub const REG_TL_MODE_WIDTH: u32 = 32;
/// Texture engine register `tl_spec`: write, 32-bit; reset unknown; established.
pub const REG_TL_SPEC: u32 = 0xf1a2;
pub const REG_TL_SPEC_WIDTH: u32 = 32;
/// Texture engine register `tl_addr`: write, 32-bit; reset unknown; inferred.
pub const REG_TL_ADDR: u32 = 0xf1a3;
pub const REG_TL_ADDR_WIDTH: u32 = 32;
/// Texture engine register `tl_mipmap`: write, 32-bit; reset unknown; inferred.
pub const REG_TL_MIPMAP: u32 = 0xf1a4;
pub const REG_TL_MIPMAP_WIDTH: u32 = 32;

/// The `tx_mipmap` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TxMipmap(u32);

impl TxMipmap {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 7:0, inferred.
    pub const fn page(self) -> u32 {
        self.0 & 0xff
    }

    /// Bits 15:8, inferred.
    pub const fn bank(self) -> u32 {
        (self.0 >> 8) & 0xff
    }
}

/// The `tl_mode` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TlMode(u32);

impl TlMode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 2:1, inferred.
    pub const fn components_minus_1(self) -> u32 {
        (self.0 >> 1) & 0x3
    }

    /// Bits 4:3, inferred.
    pub const fn cell_slot(self) -> u32 {
        (self.0 >> 3) & 0x3
    }

    /// Bits 6:5, inferred.
    pub const fn component_depth(self) -> u32 {
        (self.0 >> 5) & 0x3
    }

    /// Bit 8, inferred.
    pub const fn flag8(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bits 12:9, inferred.
    pub const fn enables(self) -> u32 {
        (self.0 >> 9) & 0xf
    }

    /// Bit 14, inferred.
    pub const fn bit14(self) -> bool {
        (self.0 >> 14) & 1 != 0
    }

    /// Bits 18:16, established.
    pub const fn fixed(self) -> u32 {
        (self.0 >> 16) & 0x7
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_te_tl_mode_34e26() {
        let w = TlMode::new(0x34e26);
        assert_eq!(w.components_minus_1(), 3, "components_minus_1");
        assert_eq!(w.cell_slot(), 0, "cell_slot");
        assert_eq!(w.component_depth(), 1, "component_depth");
        assert_eq!(w.flag8() as u32, 0, "flag8");
        assert_eq!(w.enables(), 7, "enables");
        assert_eq!(w.bit14() as u32, 1, "bit14");
        assert_eq!(w.fixed(), 3, "fixed");
    }

    #[test]
    fn testvec_te_tl_mode_35a26() {
        let w = TlMode::new(0x35a26);
        assert_eq!(w.components_minus_1(), 3, "components_minus_1");
        assert_eq!(w.cell_slot(), 0, "cell_slot");
        assert_eq!(w.component_depth(), 1, "component_depth");
        assert_eq!(w.flag8() as u32, 0, "flag8");
        assert_eq!(w.enables(), 13, "enables");
        assert_eq!(w.bit14() as u32, 1, "bit14");
        assert_eq!(w.fixed(), 3, "fixed");
    }
}
