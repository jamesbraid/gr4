// generated from defs/te1.toml by defs-gen - do not edit, change the source
// texture RAM revision words of the Impact graphics subsystem
#![allow(dead_code)]

/// (established)
pub mod tx_mipmap {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf191;
    pub mod bank { // bits 15:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod page { // bits 7:0, inferred
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
/// (established)
pub mod tl_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a1;
    pub mod fixed { // bits 18:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit14 { // bits 14:14, inferred
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod enables { // bits 12:9, inferred
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod flag8 { // bits 8:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod component_depth { // bits 6:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cell_slot { // bits 4:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod components_minus_1 { // bits 2:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod tl_spec {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a2;
}
/// (inferred)
pub mod tl_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a3;
}
/// (inferred)
pub mod tl_mipmap {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a4;
}
/// (inferred)
pub mod tl_border {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a5;
}
pub const TRAM_REV_WORD0: u32 = 0x1c011401; // established
pub const TRAM_REV_WORD0_HIGH_HALF: u32 = 0x1c01; // established
pub const TRAM_REV_WORD0_LOW_HALF: u32 = 0x1401; // established
pub const TRAM_REV_WORD1: u32 = 0xc000400; // established
pub const TRAM_TEXTURE_BYTES: u32 = 0x400000; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn tl_mode_34e26() {
        assert_eq!(tl_mode::components_minus_1::get(0x34e26), 3);
        assert_eq!(tl_mode::cell_slot::get(0x34e26), 0);
        assert_eq!(tl_mode::component_depth::get(0x34e26), 1);
        assert_eq!(tl_mode::flag8::get(0x34e26), 0);
        assert_eq!(tl_mode::enables::get(0x34e26), 7);
        assert_eq!(tl_mode::bit14::get(0x34e26), 1);
        assert_eq!(tl_mode::fixed::get(0x34e26), 3);
    }

    #[test]
    fn tl_mode_35a26() {
        assert_eq!(tl_mode::components_minus_1::get(0x35a26), 3);
        assert_eq!(tl_mode::cell_slot::get(0x35a26), 0);
        assert_eq!(tl_mode::component_depth::get(0x35a26), 1);
        assert_eq!(tl_mode::flag8::get(0x35a26), 0);
        assert_eq!(tl_mode::enables::get(0x35a26), 13);
        assert_eq!(tl_mode::bit14::get(0x35a26), 1);
        assert_eq!(tl_mode::fixed::get(0x35a26), 3);
    }
}
