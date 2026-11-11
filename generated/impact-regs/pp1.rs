// generated from gr4 710441e716d5 PP1_DECODE.h - do not edit, regenerate in gr4
//!
//! Display read buffer registers of the Impact graphics subsystem.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established, kernel constant table.
pub const DRB_SIZE_COMMAND_WORD: u32 = 0x196e04;
/// established, kernel constant table.
pub const DRB_POINTERS_COMMAND_WORD: u32 = 0x196d04;

/// Pixel processor register `drb_pointers`: write, 32-bit; reset unknown; inferred.
pub const REG_DRB_POINTERS: u32 = 0xf16d;
pub const REG_DRB_POINTERS_WIDTH: u32 = 32;
/// Pixel processor register `drb_size`: write, 32-bit; reset unknown; inferred.
pub const REG_DRB_SIZE: u32 = 0xf16e;
pub const REG_DRB_SIZE_WIDTH: u32 = 32;

/// The `drb_pointers` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DrbPointers(u32);

impl DrbPointers {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 9:0, established.
    pub const fn page_a(self) -> u32 {
        self.0 & 0x3ff
    }

    /// Bits 19:10, established.
    pub const fn page_b(self) -> u32 {
        (self.0 >> 10) & 0x3ff
    }
}

/// The `drb_size` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DrbSize(u32);

impl DrbSize {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn xtiles9(self) -> u32 {
        self.0 & 0x3
    }

    /// Bits 5:2, established.
    pub const fn xtiles36(self) -> u32 {
        (self.0 >> 2) & 0xf
    }

    /// Bits 7:6, established.
    pub const fn raster_engines_minus_1(self) -> u32 {
        (self.0 >> 6) & 0x3
    }

    /// Bits 9:8, inferred.
    pub const fn dma_line_count_mask(self) -> u32 {
        (self.0 >> 8) & 0x3
    }

    /// Bit 10, inferred.
    pub const fn auto_flush_off(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_pp_drb_size_31a() {
        let w = DrbSize::new(0x31a);
        assert_eq!(w.xtiles9(), 2, "xtiles9");
        assert_eq!(w.xtiles36(), 6, "xtiles36");
        assert_eq!(w.raster_engines_minus_1(), 0, "raster_engines_minus_1");
        assert_eq!(w.dma_line_count_mask(), 3, "dma_line_count_mask");
        assert_eq!(w.auto_flush_off() as u32, 0, "auto_flush_off");
    }

    #[test]
    fn testvec_pp_drb_size_25a() {
        let w = DrbSize::new(0x25a);
        assert_eq!(w.xtiles9(), 2, "xtiles9");
        assert_eq!(w.xtiles36(), 6, "xtiles36");
        assert_eq!(w.raster_engines_minus_1(), 1, "raster_engines_minus_1");
        assert_eq!(w.dma_line_count_mask(), 2, "dma_line_count_mask");
        assert_eq!(w.auto_flush_off() as u32, 0, "auto_flush_off");
    }

    #[test]
    fn testvec_pp_drb_pointers_90240() {
        let w = DrbPointers::new(0x90240);
        assert_eq!(w.page_a(), 576, "page_a");
        assert_eq!(w.page_b(), 576, "page_b");
    }

    #[test]
    fn testvec_pp_drb_pointers_101c0() {
        let w = DrbPointers::new(0x101c0);
        assert_eq!(w.page_a(), 448, "page_a");
        assert_eq!(w.page_b(), 64, "page_b");
    }

    #[test]
    fn testvec_pp_drb_pointers_c8240() {
        let w = DrbPointers::new(0xc8240);
        assert_eq!(w.page_a(), 576, "page_a");
        assert_eq!(w.page_b(), 800, "page_b");
    }

    #[test]
    fn testvec_pp_drb_pointers_380e0() {
        let w = DrbPointers::new(0x380e0);
        assert_eq!(w.page_a(), 224, "page_a");
        assert_eq!(w.page_b(), 224, "page_b");
    }
}
