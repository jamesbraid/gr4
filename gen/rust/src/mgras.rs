// generated from defs/mgras.toml by defs-gen - do not edit, change the source
// board-level words of the Impact graphics subsystem
#![allow(dead_code)]

/// (inferred)
pub mod dcb_ctrl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xa000;
    pub const COUNT: u32 = 12;
    pub const STRIDE: u64 = 4;
    pub mod cs_setup { // bits 12:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cs_hold { // bits 8:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cs_width { // bits 4:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod async_ack { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod sync_ack { // bits 0:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Second board-version word, read 0x62488 above the board register base: the start of device 9's window, register select 1, one-byte width. The kernel's (established)
pub mod bdvers2 {
    pub const WIDTH: u32 = 32;
    pub mod product { // bits 30:29, established
        pub const SHIFT: u32 = 29;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const SOLID_IMPACT: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            SolidImpact,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    1 => Self::SolidImpact,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::SolidImpact => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (inferred)
pub mod dcb_addr {
    pub const WIDTH: u32 = 32;
    pub mod device { // bits 14:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod crs { // bits 9:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod endata_pack { // bits 6:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod encrs_inc { // bits 5:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod data_width { // bits 4:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const FOUR_BYTES: u32 = 0; // inferred
        pub const ONE_BYTE: u32 = 1; // inferred
        pub const TWO_BYTES: u32 = 2; // inferred
        pub const THREE_BYTES: u32 = 3; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            FourBytes,
            OneByte,
            TwoBytes,
            ThreeBytes,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::FourBytes,
                    1 => Self::OneByte,
                    2 => Self::TwoBytes,
                    3 => Self::ThreeBytes,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::FourBytes => 0,
                    Self::OneByte => 1,
                    Self::TwoBytes => 2,
                    Self::ThreeBytes => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// Identification word read at the start of the board's window. The kernel's probe compares only bits 6:0 (must be 0x10), bit 16 (set), bit 17 (clear) an (inferred)
pub mod gio_id {
    pub const WIDTH: u32 = 32;
    pub mod product { // bits 31:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod revision { // bits 7:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Identification byte of the multi-channel option board (the byte at the index port's register select 0). The kernel's probe has two shapes, split by th (established)
pub mod mco_id {
    pub const WIDTH: u32 = 32;
    pub mod board { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const PRESENT_SINGLE_READ: u32 = 4; // established
        pub const PRESENT: u32 = 10; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            PresentSingleRead,
            Present,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    4 => Self::PresentSingleRead,
                    10 => Self::Present,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::PresentSingleRead => 4,
                    Self::Present => 10,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod revision { // bits 3:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Index byte of the multi-channel option board, written to the board's index port before each access to its data port. The high nibble picks a device, t (established)
pub mod mco_index {
    pub const WIDTH: u32 = 32;
    pub mod bank { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const OVERLAY_DAC_A: u32 = 0; // established
        pub const OVERLAY_DAC_B: u32 = 1; // established
        pub const TRUE_COLOUR_DAC_A: u32 = 2; // established
        pub const TRUE_COLOUR_DAC_B: u32 = 3; // established
        pub const CONTROL_1: u32 = 8; // established
        pub const CONTROL_2: u32 = 9; // established
        pub const CONTROL_3: u32 = 10; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            OverlayDacA,
            OverlayDacB,
            TrueColourDacA,
            TrueColourDacB,
            Control1,
            Control2,
            Control3,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::OverlayDacA,
                    1 => Self::OverlayDacB,
                    2 => Self::TrueColourDacA,
                    3 => Self::TrueColourDacB,
                    8 => Self::Control1,
                    9 => Self::Control2,
                    10 => Self::Control3,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::OverlayDacA => 0,
                    Self::OverlayDacB => 1,
                    Self::TrueColourDacA => 2,
                    Self::TrueColourDacB => 3,
                    Self::Control1 => 8,
                    Self::Control2 => 9,
                    Self::Control3 => 10,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod port { // bits 3:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
pub const ADV473_PORT_ADDR: u32 = 0x0; // established
pub const ADV473_PORT_COMMAND: u32 = 0x6; // established
pub const ADV473_PORT_MASK: u32 = 0x2; // inferred
pub const ADV473_PORT_PALETTE: u32 = 0x1; // established
pub const ADV7162_BLANK_VALUE: u32 = 0x0; // established
pub const ADV7162_ID_VALUE: u32 = 0x79; // established
pub const ADV7162_PORT_DATA: u32 = 0x2; // established
pub const ADV7162_PORT_PALETTE: u32 = 0x1; // established
pub const ADV7162_PORT_POINTER: u32 = 0x0; // established
pub const ADV7162_PORT_PROBE: u32 = 0x3; // unknown
pub const ADV7162_REG_BLANK: u32 = 0x4; // established
pub const ADV7162_REG_ID: u32 = 0x3; // established
pub const ADV7162_RESTORE_VALUE: u32 = 0xffff; // established
pub const CMAP_ENTRIES: u32 = 0x2000; // established
pub const MCO_BANK_BASE_CH0: u32 = 0x0; // established
pub const MCO_BANK_BASE_CH1: u32 = 0x20; // established
pub const MCO_BANK_BASE_CH2: u32 = 0x30; // established
pub const MCO_BANK_BASE_CH3: u32 = 0x0; // established
pub const MCO_BANK_BASE_CH4: u32 = 0x10; // established
pub const MCO_DAC_LUT_ENTRIES: u32 = 0x100; // established
pub const MCO_DAC_LUT_ENTRY_BITS: u32 = 0xa; // established
pub const MCO_ID_ABSENT: u32 = 0xff; // established
pub const MCO_ID_PROBE_SINGLE_READ_OFFSET: u32 = 0x70008; // established
pub const MCO_ID_PROBE_SINGLE_TIMING_SELECT_FIRST: u32 = 0x14; // established
pub const MCO_ID_PROBE_SINGLE_TIMING_SELECT_SECOND: u32 = 0x0; // established
pub const MCO_ID_PROBE_SINGLE_WRITE_OFFSET: u32 = 0x72c08; // established
pub const MCO_ID_PROBE_WRITE_FIRST: u32 = 0xff; // established
pub const MCO_ID_PROBE_WRITE_SECOND: u32 = 0x0; // established
pub const MCO_ID_SPECIAL_PRESENT: u32 = 0x1; // established
pub const MCO_LOAD_CTRL_FIRST: u32 = 0xfe; // established
pub const MCO_LOAD_CTRL_SECOND: u32 = 0x1; // established
pub const MCO_LOAD_IMAGE_BYTES: u32 = 0xf688; // established
pub const MCO_LOAD_PAD_BYTES: u32 = 0x14; // established
pub const MCO_LOAD_STATUS_AFTER_SECOND: u32 = 0x6; // established
pub const MCO_LOAD_STATUS_FIRST: u32 = 0x0; // established
pub const MCO_SEL_FPGA_CTRL: u32 = 0x1; // established
pub const MCO_SEL_FPGA_DATA: u32 = 0x0; // established
pub const MCO_SEL_TIMING_DATA: u32 = 0x5; // established
pub const MCO_SEL_TIMING_RAM: u32 = 0x7; // established
pub const MCO_SEL_TIMING_REG: u32 = 0x4; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn dcb_ctrl_318() {
        assert_eq!(dcb_ctrl::sync_ack::get(0x318), 0);
        assert_eq!(dcb_ctrl::async_ack::get(0x318), 0);
        assert_eq!(dcb_ctrl::cs_width::get(0x318), 6);
        assert_eq!(dcb_ctrl::cs_hold::get(0x318), 4);
        assert_eq!(dcb_ctrl::cs_setup::get(0x318), 0);
    }

    #[test]
    fn dcb_ctrl_108c() {
        assert_eq!(dcb_ctrl::sync_ack::get(0x108c), 0);
        assert_eq!(dcb_ctrl::async_ack::get(0x108c), 0);
        assert_eq!(dcb_ctrl::cs_width::get(0x108c), 3);
        assert_eq!(dcb_ctrl::cs_hold::get(0x108c), 2);
        assert_eq!(dcb_ctrl::cs_setup::get(0x108c), 4);
    }

    #[test]
    fn dcb_ctrl_318c() {
        assert_eq!(dcb_ctrl::cs_width::get(0x318c), 3);
        assert_eq!(dcb_ctrl::cs_hold::get(0x318c), 6);
        assert_eq!(dcb_ctrl::cs_setup::get(0x318c), 4);
    }

    #[test]
    fn dcb_ctrl_6319() {
        assert_eq!(dcb_ctrl::sync_ack::get(0x6319), 1);
        assert_eq!(dcb_ctrl::async_ack::get(0x6319), 0);
        assert_eq!(dcb_ctrl::cs_width::get(0x6319), 6);
        assert_eq!(dcb_ctrl::cs_hold::get(0x6319), 4);
        assert_eq!(dcb_ctrl::cs_setup::get(0x6319), 0);
    }

    #[test]
    fn dcb_ctrl_631a() {
        assert_eq!(dcb_ctrl::sync_ack::get(0x631a), 0);
        assert_eq!(dcb_ctrl::async_ack::get(0x631a), 1);
        assert_eq!(dcb_ctrl::cs_width::get(0x631a), 6);
        assert_eq!(dcb_ctrl::cs_hold::get(0x631a), 4);
        assert_eq!(dcb_ctrl::cs_setup::get(0x631a), 0);
    }

    #[test]
    fn gio_id_50190() {
        assert_eq!(gio_id::revision::get(0x50190), 9);
        assert_eq!(gio_id::product::get(0x50190), 1281);
    }

    #[test]
    fn mco_index_90() {
        assert_eq!(mco_index::port::get(0x90), 0);
        assert_eq!(mco_index::bank::get(0x90), 9);
    }
}
