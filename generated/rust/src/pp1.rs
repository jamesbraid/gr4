// generated from devices/pp1/registers.toml by defs-gen - do not edit, change the source
// display read buffer registers of the Impact graphics
#![allow(dead_code)]

/// (inferred)
pub mod drb_pointers {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf16d;
    pub mod page_b { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod page_a { // bits 9:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod drb_size {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf16e;
    pub mod auto_flush_off { // bits 10:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_line_count_mask { // bits 9:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod raster_engines_minus_1 { // bits 7:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod xtiles36 { // bits 5:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod xtiles9 { // bits 1:0, established
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
pub const DRB_POINTERS_COMMAND_WORD: u32 = 0x196d04; // established
pub const DRB_SIZE_COMMAND_WORD: u32 = 0x196e04; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn drb_pointers_101c0() {
        assert_eq!(drb_pointers::page_a::get(0x101c0), 448);
        assert_eq!(drb_pointers::page_b::get(0x101c0), 64);
    }

    #[test]
    fn drb_pointers_380e0() {
        assert_eq!(drb_pointers::page_a::get(0x380e0), 224);
        assert_eq!(drb_pointers::page_b::get(0x380e0), 224);
    }

    #[test]
    fn drb_pointers_90240() {
        assert_eq!(drb_pointers::page_a::get(0x90240), 576);
        assert_eq!(drb_pointers::page_b::get(0x90240), 576);
    }

    #[test]
    fn drb_pointers_c8240() {
        assert_eq!(drb_pointers::page_a::get(0xc8240), 576);
        assert_eq!(drb_pointers::page_b::get(0xc8240), 800);
    }

    #[test]
    fn drb_size_25a() {
        assert_eq!(drb_size::xtiles9::get(0x25a), 2);
        assert_eq!(drb_size::xtiles36::get(0x25a), 6);
        assert_eq!(drb_size::raster_engines_minus_1::get(0x25a), 1);
        assert_eq!(drb_size::dma_line_count_mask::get(0x25a), 2);
        assert_eq!(drb_size::auto_flush_off::get(0x25a), 0);
    }

    #[test]
    fn drb_size_31a() {
        assert_eq!(drb_size::xtiles9::get(0x31a), 2);
        assert_eq!(drb_size::xtiles36::get(0x31a), 6);
        assert_eq!(drb_size::raster_engines_minus_1::get(0x31a), 0);
        assert_eq!(drb_size::dma_line_count_mask::get(0x31a), 3);
        assert_eq!(drb_size::auto_flush_off::get(0x31a), 0);
    }
}
