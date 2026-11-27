// @generated from devices/mgras/registers.toml by defs-gen - do not edit, change the source
// SPDX-License-Identifier: BSD-3-Clause
// defs-gen 4
// input sha256 45cc340820519febd97084f15bd72f61fde5e54545336083c3940c57b96d90b9
// board-level words of the Impact graphics subsystem
#![allow(dead_code)]
#![allow(clippy::doc_markdown)]
#![cfg_attr(rustfmt, rustfmt_skip)]

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
/// Second board-version word at address 0x072408, of which the kernel reads only the top byte (bits 31:24). Bits 1:0 and 3:2 of that byte are the two TRA (inferred)
pub mod bdvers1 {
    pub const WIDTH: u32 = 32;
    pub mod rb_revision { // bits 30:28, inferred
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod tram_field_1 { // bits 27:26, inferred
        pub const SHIFT: u32 = 26;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod tram_field_0 { // bits 25:24, inferred
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0x3;
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
        pub const INDIGO2_GIO: u32 = 0; // inferred
        pub const SOLID_IMPACT: u32 = 1; // established
        pub const SINGLE_GE_TEXTURED: u32 = 2; // inferred
        pub const TWO_GE: u32 = 3; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Indigo2Gio,
            SolidImpact,
            SingleGeTextured,
            TwoGe,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Indigo2Gio,
                    1 => Self::SolidImpact,
                    2 => Self::SingleGeTextured,
                    3 => Self::TwoGe,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Indigo2Gio => 0,
                    Self::SolidImpact => 1,
                    Self::SingleGeTextured => 2,
                    Self::TwoGe => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod mgras_revision { // bits 28:26, inferred
        pub const SHIFT: u32 = 26;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod ge_count { // bits 25:24, inferred
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Byte at address 0x071708: bits 2:0 the CMAP revision (0 is rev A, other values are rev value + 2, so 1 is rev C and 3 is rev E), bits 6:4 the RA revis (inferred)
pub mod cmap_ra_status {
    pub const WIDTH: u32 = 8;
    pub mod video_option { // bits 7:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const PRESENT: u32 = 0; // inferred
        pub const ABSENT: u32 = 1; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Present,
            Absent,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Present,
                    1 => Self::Absent,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Present => 0,
                    Self::Absent => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod ra_revision { // bits 6:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cmap_revision { // bits 2:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
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
/// Read after the GE program download verifies: a 32-bit read of 0x028000, a 13 microsecond wait, then a 32-bit read of 0x028004. The kernel keeps only t (inferred)
#[allow(clippy::module_inception)]
pub mod ge_revision {
    pub const WIDTH: u32 = 32;
    pub mod ge_revision { // bits 7:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Identification word read at the start of the board's window. The kernel's probe compares only bits 6:0 (must be 0x10), bit 16 (set), bit 17 (clear) an (inferred)
pub mod gio_id {
    pub const WIDTH: u32 = 32;
    pub mod revision { // bits 15:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod product { // bits 7:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// One command written to the normal command FIFO, as the public driver packs it: the constant framing 0x0018000400000000, the register selector shifted  (established)
pub mod hq4_numeric_packet {
    pub const WIDTH: u32 = 64;
    pub mod execute { // bits 50:50, inferred
        pub const SHIFT: u32 = 50;
        pub const MASK: u64 = 0x1;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod selector { // bits 48:40, established
        pub const SHIFT: u32 = 40;
        pub const MASK: u64 = 0x1ff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod payload { // bits 31:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u64 = 0xffffffff;
        pub const fn get(v: u64) -> u64 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u64, x: u64) -> u64 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Host interface control word. Its geometry engine select field chooses which geometry engine the next program upload reaches. The kernel sets the field (established)
pub mod hq_ge_select {
    pub const WIDTH: u32 = 32;
    pub mod ge_select { // bits 5:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const GE0: u32 = 2; // established
        pub const GE1: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Ge0,
            Ge1,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    2 => Self::Ge0,
                    3 => Self::Ge1,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Ge0 => 2,
                    Self::Ge1 => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// Board word at address 0x000000, the first identity read IRIX makes. Bits 31:28 are the HQ revision: 1 is rev A, 2 is rev B. Read by the IRIX kernel's  (inferred)
#[allow(clippy::module_inception)]
pub mod hq_revision {
    pub const WIDTH: u32 = 32;
    pub mod hq_revision { // bits 31:28, inferred
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// One bit slot of the one-wire serial-number record at HQ_SERIAL_MASTER_OFFSET, written as one 32-bit store. The low-drive time sits in bits 19:10 and t (inferred)
pub mod hq_serial_slot {
    pub const WIDTH: u32 = 32;
    pub mod drive_time { // bits 19:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod sample_offset { // bits 9:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod done { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod level { // bits 0:0, inferred
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
/// Byte at address 0x071308. Bits 7:4 are the monitor ID, which depends on the attached monitor, not on the board. The kernel does not read bits 3:0. The (inferred)
pub mod monitor_id {
    pub const WIDTH: u32 = 8;
    pub mod monitor { // bits 7:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const UNIDENTIFIED: u32 = 0; // inferred
        pub const ASSUMED_19_INCH: u32 = 15; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Unidentified,
            Assumed19Inch,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Unidentified,
                    15 => Self::Assumed19Inch,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Unidentified => 0,
                    Self::Assumed19Inch => 15,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// Pixel processor word reached through the XMAP data port with XMAP index 0 selected. Bits 21:20 hold the raster engine count less one. The kernel write (inferred)
pub mod pp1_config {
    pub const WIDTH: u32 = 32;
    pub mod re_count_less_one { // bits 21:20, inferred
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Index write of 4 to the byte at address 0x071c88, then a 32-bit read of 0x071d00. Bits 2:0 are the PP1 revision (XMAP index 4). Owner captures of E-se (inferred)
#[allow(clippy::module_inception)]
pub mod pp1_revision {
    pub const WIDTH: u32 = 32;
    pub mod pp1_revision { // bits 2:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// One 64-bit write to address 0x120400, then a 32-bit read of 0x02c578. Bits 7:4 are the RE4 revision. The value written is not recorded in the source t (inferred)
#[allow(clippy::module_inception)]
pub mod re4_revision {
    pub const WIDTH: u32 = 32;
    pub mod re4_revision { // bits 7:4, inferred
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
/// Raster engine status word, read after the raster engine select register has chosen one engine. The IDE diagnostic expects the selected engine's number (inferred)
pub mod re4_status {
    pub const WIDTH: u32 = 32;
    pub mod selected_re { // bits 3:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod re_count_less_one { // bits 1:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Byte write of 0x1f to address 0x072008, then a 16-bit read of 0x0720b0 (read only when the RE count is nonzero). Bits 7:6 are the VC3 revision. Inferr (inferred)
#[allow(clippy::module_inception)]
pub mod vc3_revision {
    pub const WIDTH: u32 = 16;
    pub mod vc3_revision { // bits 7:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x3;
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
pub const ADV7162_PORT_PROBE: u32 = 0x3; // inferred
pub const ADV7162_REG_BLANK: u32 = 0x4; // established
pub const ADV7162_REG_ID: u32 = 0x3; // established
pub const ADV7162_RESTORE_VALUE: u32 = 0xffff; // established
pub const BOARD_CONFIG_OFFSET: u32 = 0x72408; // established
pub const CMAP_ENTRIES: u32 = 0x2000; // established
pub const GE0_UPLOAD_PORT_A: u32 = 0x58040; // established
pub const GE0_UPLOAD_PORT_B: u32 = 0x58044; // established
pub const GE1_UPLOAD_PORT_A: u32 = 0x58048; // established
pub const GE1_UPLOAD_PORT_B: u32 = 0x5804c; // established
pub const GE_READBACK_PORT_A: u32 = 0x5822c; // established
pub const GE_READBACK_PORT_B: u32 = 0x58230; // established
pub const GL_CLIENT_FIFO_PROCESS_ADDR: u32 = 0x124400; // inferred
pub const HQ4_NORMAL_FIFO_OFFSET: u32 = 0x20400; // established
pub const HQ_BUS_STATUS_OFFSET: u32 = 0x20100; // established
pub const HQ_CTXSW_RETURN_CMD: u32 = 0xf400; // established
pub const HQ_CTXSW_START_OFFSET: u32 = 0x130500; // established
pub const HQ_CTXSW_START_VALUE: u32 = 0x4fc; // established
pub const HQ_CTXSW_TAIL_OFFSET: u32 = 0x40088; // established
pub const HQ_CTXSW_WAIT_MASK: u32 = 0x1eff; // established
pub const HQ_CTXSW_WAIT_OFFSET: u32 = 0x8000; // established
pub const HQ_CTX_ENAB_CLEAR_OFFSET: u32 = 0x11038; // established
pub const HQ_CTX_ENAB_OFFSET: u32 = 0x11030; // established
pub const HQ_CTX_WORD_OFFSET: u32 = 0x11008; // established
pub const HQ_FIFO_CTL0_OFFSET: u32 = 0x40000; // inferred
pub const HQ_FIFO_CTL2_OFFSET: u32 = 0x40010; // inferred
pub const HQ_FIFO_CTL3_OFFSET: u32 = 0x40020; // inferred
pub const HQ_FIFO_CTL4_OFFSET: u32 = 0x40028; // inferred
pub const HQ_FIFO_CTL5_OFFSET: u32 = 0x40030; // inferred
pub const HQ_FIFO_LOWATER_OFFSET: u32 = 0x40008; // established
pub const HQ_FIFO_STATUS_OFFSET: u32 = 0x20008; // inferred
pub const HQ_FLOW_TIMEOUT_OFFSET: u32 = 0x40078; // inferred
pub const HQ_GE_SELECT_ADDR: u32 = 0x11000; // established
pub const HQ_GL_DMA_STATUS_OFFSET: u32 = 0x20200; // inferred
pub const HQ_GL_DMA_STATUS_WAIT_MASK: u32 = 0x1eff; // inferred
pub const HQ_GL_FLAGS_OFFSET: u32 = 0x20010; // inferred
pub const HQ_GL_FLAG_CLEAR_OFFSET: u32 = 0x20018; // inferred
pub const HQ_GL_FLAG_FLUSH: u32 = 0x100000; // inferred
pub const HQ_GL_FLAG_QUERY_READY: u32 = 0x20000; // inferred
pub const HQ_GL_FLAG_SYNC_COMPLETE: u32 = 0x10000; // inferred
pub const HQ_GL_QUERY_ANSWER_OFFSET: u32 = 0x28004; // inferred
pub const HQ_GL_STATUS_DMA_BUSY: u32 = 0x1000; // inferred
pub const HQ_GL_STATUS_OFFSET: u32 = 0x20000; // inferred
pub const HQ_GL_STATUS_PIPE_IDLE: u32 = 0x2; // inferred
pub const HQ_ID_MANUFACTURER_EXPECTED: u32 = 0x2aa; // inferred
pub const HQ_ID_PART_EXPECTED: u32 = 0xc003; // inferred
pub const HQ_INTR_DEST_LOWER_OFFSET: u32 = 0x11068; // inferred
pub const HQ_INTR_DEST_UPPER_OFFSET: u32 = 0x11060; // inferred
pub const HQ_INTR_ENAB_CLEAR_OFFSET: u32 = 0x11048; // inferred
pub const HQ_INTR_ENAB_DEFAULT: u32 = 0x3008a200; // established
pub const HQ_INTR_ENAB_SET_OFFSET: u32 = 0x11040; // established
pub const HQ_INTR_LEVEL2_CLEAR_OFFSET: u32 = 0x11058; // inferred
pub const HQ_INTR_LEVEL2_ENAB_OFFSET: u32 = 0x11050; // established
pub const HQ_INTR_LEVEL2_LOWATER: u32 = 0x10; // established
pub const HQ_INTR_PENDING_CLEAR_OFFSET: u32 = 0x11028; // inferred
pub const HQ_INTR_SRC_CTX_ACK1: u32 = 0x80000; // established
pub const HQ_INTR_SRC_CTX_ACK2: u32 = 0x10000000; // established
pub const HQ_INTR_SRC_DMA_OVERFLOW: u32 = 0x8000; // established
pub const HQ_INTR_SRC_DMA_RANGE: u32 = 0x2000; // established
pub const HQ_INTR_SRC_FIFO_OVERFLOW: u32 = 0x20000000; // established
pub const HQ_INTR_SRC_PRIV: u32 = 0x4000; // established
pub const HQ_INTR_SRC_PROGRAM_ERROR: u32 = 0x200; // established
pub const HQ_INTR_SRC_RELEASE: u32 = 0x10000; // established
pub const HQ_INTR_SRC_SWAP: u32 = 0x400; // established
pub const HQ_INTR_STATUS_OFFSET: u32 = 0x11020; // established
pub const HQ_INTR_VECTOR_OFFSET: u32 = 0x11070; // established
pub const HQ_SERIAL_MASTER_OFFSET: u32 = 0x11098; // inferred
pub const HQ_SWAP_ACK_VALUE: u32 = 0x401; // established
pub const HQ_SWAP_CMD: u32 = 0x3700; // established
pub const HQ_VC3_RETRACE_OFFSET: u32 = 0x72038; // established
pub const HQ_VIDEO_DMA_CONTROL_OFFSET: u32 = 0x81010; // inferred
pub const HQ_VIDEO_DMA_DESCRIPTOR_OFFSET: u32 = 0x81000; // inferred
pub const HQ_VIDEO_DMA_MODE_OFFSET: u32 = 0x81018; // inferred
pub const HQ_VIDEO_DMA_SOURCE_OFFSET: u32 = 0x60018; // inferred
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
pub const MGRAS_SET_GENLOCK_REQUEST: u32 = 0x6d670014; // established
pub const MGRAS_VIDEO_TEXTURE_XFER_REQUEST: u32 = 0x6d670016; // established
pub const PP1_SELECT_ADDR: u32 = 0x71c08; // established
pub const RDRAM_ADDR_PORT_ADDR: u32 = 0x2c570; // inferred
pub const RDRAM_BUFFER_PORT_ADDR: u32 = 0x2c5b4; // inferred
pub const RDRAM_DATA_PORT_ADDR: u32 = 0x2c574; // established
pub const RSS_RE_SELECT_PIO_ADDR: u32 = 0x2c448; // inferred
pub const RSS_RE_SELECT_REG: u32 = 0x112; // established
pub const VC3_DISPLAY_GENLOCK: u32 = 0x40; // inferred
pub const VC3_DISPLAY_GENSYNC: u32 = 0x20; // inferred
pub const VC3_DISPLAY_RETRACE_ENABLE: u32 = 0x1; // inferred
pub const VC3_DISPLAY_TIMING_BITS: u32 = 0x1e; // inferred
pub const VC3_REG_CONFIG: u32 = 0x1f; // established
pub const VC3_REG_CURS_CONTROL: u32 = 0x1d; // established
pub const VC3_REG_CURS_EP: u32 = 0x1; // established
pub const VC3_REG_CURS_TBL_PTR: u32 = 0xc; // established
pub const VC3_REG_CURS_X_LOC: u32 = 0x2; // established
pub const VC3_REG_CURS_Y_LOC: u32 = 0x3; // established
pub const VC3_REG_CUR_CURSOR_X: u32 = 0xe; // established
pub const VC3_REG_DID_EP1: u32 = 0x4; // established
pub const VC3_REG_DID_EP2: u32 = 0x5; // established
pub const VC3_REG_DID_FRAMETAB1: u32 = 0x10; // established
pub const VC3_REG_DID_FRAMETAB2: u32 = 0x12; // established
pub const VC3_REG_DID_LINETAB1: u32 = 0x11; // established
pub const VC3_REG_DID_LINETAB2: u32 = 0x13; // established
pub const VC3_REG_DISPLAY_CONTROL: u32 = 0x1e; // established
pub const VC3_REG_RAM_ADDR: u32 = 0x7; // established
pub const VC3_REG_SCAN_LENGTH: u32 = 0x6; // established
pub const VC3_REG_VERT_LINE_COUNT: u32 = 0xb; // established
pub const VC3_REG_VID_EP: u32 = 0x0; // established
pub const VC3_REG_VT_FRAME_TBL_PTR: u32 = 0x8; // established
pub const VC3_REG_VT_LINES_RUN: u32 = 0xa; // established
pub const VC3_REG_VT_LINE_SEQ_PTR: u32 = 0x9; // established
pub const VC3_REG_WORKING_CURS_Y: u32 = 0xd; // established
pub const WINDOW_MODE_MAIN_ADDR: u32 = 0x71e00; // established
pub const WINDOW_MODE_OVERLAY_ADDR: u32 = 0x71e80; // established
pub const WINDOW_SELECT_ADDR: u32 = 0x71d80; // established
pub const XMAP_INDEX_ADDR: u32 = 0x71c88; // established

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
        assert_eq!(gio_id::revision::get(0x50190), 1);
        assert_eq!(gio_id::product::get(0x50190), 144);
    }

    #[test]
    fn mco_index_90() {
        assert_eq!(mco_index::port::get(0x90), 0);
        assert_eq!(mco_index::bank::get(0x90), 9);
    }
}
