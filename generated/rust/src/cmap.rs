// @generated from devices/cmap/registers.toml by defs-gen - do not edit, change the source
// SPDX-License-Identifier: BSD-3-Clause
// defs-gen 4
// input sha256 ded8e67cb35c81337325ab34e6f92ace2d9647686f1d95349deb829ab921207c
// CMAP colour map chips of the Impact graphics subsystem
#![allow(dead_code)]
#![allow(clippy::doc_markdown)]
#![cfg_attr(rustfmt, rustfmt_skip)]

/// Port: low byte of the palette address. Defined next to the sixteen-bit address port; no shipped use of the byte form was read. (inferred)
pub mod addr_lo {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x8;
}
/// Port: palette entry address. The diagnostic and the loaders write it before a run of colour writes or reads, twice in a row as a workaround for the ad (established)
pub mod addr {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x30;
    pub mod entry { // bits 12:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Port: high byte of the palette address. Defined next to the address port; no shipped use was read. (inferred)
pub mod addr_hi {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x88;
}
/// Port: palette entry data, a three-byte access. A write stores one entry at the current address and steps it; a read returns one entry. The loaders pac (established)
pub mod pal {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x118;
    pub mod red { // bits 31:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod green { // bits 23:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blue { // bits 15:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Port: command. The diagnostic writes 3 through the broadcast window to enable the timing pipes, and the standalone and kernel initialisation write a m (established)
pub mod cmd {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x188;
}
/// Port: status, read per chip. The loaders wait on it between runs of palette writes: the older builds wait until bit 3 is set and the Octane build wait (established)
pub mod status {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x208;
    pub mod ready { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod busy { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Port: chip revision, read per chip. The diagnostic masks the low three bits, requires each chip to be at least REVISION_MIN, checking each one separat (established)
pub mod rev {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x308;
    pub mod revision { // bits 2:0, established
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
/// Port: defined by the software's register layout as the last select; no shipped use was read, and its role is unknown. (inferred)
pub mod reserved {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x388;
}
pub const CMD_ENABLE_TIMING_PIPES: u32 = 0x3; // established
pub const DCB_DEVICE_ALL: u32 = 0x5; // established
pub const DCB_DEVICE_CMAP0: u32 = 0x6; // established
pub const DCB_DEVICE_CMAP1: u32 = 0x7; // established
pub const ENTRIES: u32 = 0x2000; // established
pub const ENTRY_BITS: u32 = 0x18; // inferred
pub const REVISION_MAX_EXPECTED: u32 = 0x4; // established
pub const REVISION_MIN: u32 = 0x2; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn pal_12345600() {
        assert_eq!(pal::red::get(0x12345600), 18);
        assert_eq!(pal::green::get(0x12345600), 52);
        assert_eq!(pal::blue::get(0x12345600), 86);
    }
}
