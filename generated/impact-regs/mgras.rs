// generated from gr4 cd4aad0265a1 MGRAS_DECODE.h - do not edit, regenerate in gr4
//!
//! Board-level words of the Impact graphics subsystem.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// Board-level register `dcb_ctrl`: read/write, 32-bit, 12 consecutive registers; reset unknown; inferred.
pub const REG_DCB_CTRL: u32 = 0xa000;
pub const REG_DCB_CTRL_WIDTH: u32 = 32;
pub const REG_DCB_CTRL_COUNT: u32 = 12;

/// Values of `data_width` in `DcbAddr` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum DcbAddrDataWidth {
    /// inferred.
    FourBytes,
    /// inferred.
    OneByte,
    /// inferred.
    TwoBytes,
    /// inferred.
    ThreeBytes,
    /// A value the notes do not name.
    Other(u8),
}

impl DcbAddrDataWidth {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::FourBytes,
            0x1 => Self::OneByte,
            0x2 => Self::TwoBytes,
            0x3 => Self::ThreeBytes,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::FourBytes => 0x0,
            Self::OneByte => 0x1,
            Self::TwoBytes => 0x2,
            Self::ThreeBytes => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `bank` in `McoIndex` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum McoIndexBank {
    /// established.
    OverlayDacA,
    /// established.
    OverlayDacB,
    /// established.
    TrueColourDacA,
    /// established.
    TrueColourDacB,
    /// established.
    Control1,
    /// established.
    Control2,
    /// established.
    Control3,
    /// A value the notes do not name.
    Other(u8),
}

impl McoIndexBank {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::OverlayDacA,
            0x1 => Self::OverlayDacB,
            0x2 => Self::TrueColourDacA,
            0x3 => Self::TrueColourDacB,
            0x8 => Self::Control1,
            0x9 => Self::Control2,
            0xa => Self::Control3,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::OverlayDacA => 0x0,
            Self::OverlayDacB => 0x1,
            Self::TrueColourDacA => 0x2,
            Self::TrueColourDacB => 0x3,
            Self::Control1 => 0x8,
            Self::Control2 => 0x9,
            Self::Control3 => 0xa,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `dcb_ctrl` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DcbCtrl(u32);

impl DcbCtrl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn sync_ack(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, inferred.
    pub const fn async_ack(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bits 4:2, inferred.
    pub const fn cs_width(self) -> u32 {
        (self.0 >> 2) & 0x7
    }

    /// Bits 8:6, inferred.
    pub const fn cs_hold(self) -> u32 {
        (self.0 >> 6) & 0x7
    }

    /// Bits 12:10, inferred.
    pub const fn cs_setup(self) -> u32 {
        (self.0 >> 10) & 0x7
    }
}

/// The `DCB_ADDR` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DcbAddr(u32);

impl DcbAddr {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 5, inferred.
    pub const fn encrs_inc(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, inferred.
    pub const fn endata_pack(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bits 9:7, inferred.
    pub const fn crs(self) -> u32 {
        (self.0 >> 7) & 0x7
    }

    /// Bits 4:3, inferred.
    pub const fn data_width(self) -> DcbAddrDataWidth {
        DcbAddrDataWidth::from_bits((self.0 >> 3) & 0x3)
    }
}

/// The `MCO_INDEX` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct McoIndex(u32);

impl McoIndex {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn port(self) -> u32 {
        self.0 & 0xf
    }

    /// Bits 7:4, established.
    pub const fn bank(self) -> McoIndexBank {
        McoIndexBank::from_bits((self.0 >> 4) & 0xf)
    }
}

/// The `GIO_ID` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GioId(u32);

impl GioId {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 7:4, inferred.
    pub const fn revision(self) -> u32 {
        (self.0 >> 4) & 0xf
    }

    /// Bits 31:8, inferred.
    pub const fn product(self) -> u32 {
        self.0 >> 8
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_gio_id_50190() {
        let w = GioId::new(0x50190);
        assert_eq!(w.revision(), 9, "revision");
        assert_eq!(w.product(), 1281, "product");
    }

    #[test]
    fn testvec_mgras_dcb_ctrl_108c() {
        let w = DcbCtrl::new(0x108c);
        assert_eq!(w.sync_ack() as u32, 0, "sync_ack");
        assert_eq!(w.async_ack() as u32, 0, "async_ack");
        assert_eq!(w.cs_width(), 3, "cs_width");
        assert_eq!(w.cs_hold(), 2, "cs_hold");
        assert_eq!(w.cs_setup(), 4, "cs_setup");
    }

    #[test]
    fn testvec_mgras_dcb_ctrl_318c() {
        let w = DcbCtrl::new(0x318c);
        assert_eq!(w.cs_width(), 3, "cs_width");
        assert_eq!(w.cs_hold(), 6, "cs_hold");
        assert_eq!(w.cs_setup(), 4, "cs_setup");
    }

    #[test]
    fn testvec_mgras_dcb_ctrl_318() {
        let w = DcbCtrl::new(0x318);
        assert_eq!(w.sync_ack() as u32, 0, "sync_ack");
        assert_eq!(w.async_ack() as u32, 0, "async_ack");
        assert_eq!(w.cs_width(), 6, "cs_width");
        assert_eq!(w.cs_hold(), 4, "cs_hold");
        assert_eq!(w.cs_setup(), 0, "cs_setup");
    }

    #[test]
    fn testvec_mgras_dcb_ctrl_6319() {
        let w = DcbCtrl::new(0x6319);
        assert_eq!(w.sync_ack() as u32, 1, "sync_ack");
        assert_eq!(w.async_ack() as u32, 0, "async_ack");
        assert_eq!(w.cs_width(), 6, "cs_width");
        assert_eq!(w.cs_hold(), 4, "cs_hold");
        assert_eq!(w.cs_setup(), 0, "cs_setup");
    }

    #[test]
    fn testvec_mgras_dcb_ctrl_631a() {
        let w = DcbCtrl::new(0x631a);
        assert_eq!(w.sync_ack() as u32, 0, "sync_ack");
        assert_eq!(w.async_ack() as u32, 1, "async_ack");
        assert_eq!(w.cs_width(), 6, "cs_width");
        assert_eq!(w.cs_hold(), 4, "cs_hold");
        assert_eq!(w.cs_setup(), 0, "cs_setup");
    }

    #[test]
    fn testvec_mco_index_90() {
        let w = McoIndex::new(0x90);
        assert_eq!(w.port(), 0, "port");
        assert_eq!(w.bank().bits(), 9, "bank");
    }
}
