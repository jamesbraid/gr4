// @generated from devices/pp1/registers.toml by defs-gen - do not edit, change the source
// SPDX-License-Identifier: BSD-3-Clause
// defs-gen 4
// input sha256 e1a18a4b96ad72e5bdae304875b0f08c335204cf50091e4966771a1c1d3a89c5
// display read buffer registers of the Impact graphics
#![allow(dead_code)]
#![allow(clippy::doc_markdown)]
#![cfg_attr(rustfmt, rustfmt_skip)]

/// Pixel command: starts a pixel-processor operation. Role inferred from the hand-written header, not measured. (inferred)
pub mod pixel_command {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf160;
}
/// Source and destination blend factors. Source in bits 3:0, destination in bits 7:4; the encodings are inferred. Role inferred from the hand-written hea (inferred)
pub mod blend_factor {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf165;
}
/// Stencil test function and operations. Role inferred from the hand-written header, not measured. (inferred)
pub mod stencil_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf166;
}
/// Stencil read and write mask. Role inferred from the hand-written header, not measured. (inferred)
pub mod stencil_mask {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf167;
}
/// Depth test function and depth write enable. Role inferred from the hand-written header, not measured. (inferred)
pub mod depth_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf168;
}
/// Alpha test function and reference value. Role inferred from the hand-written header, not measured. (inferred)
pub mod alpha_test_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf169;
}
/// Accumulation buffer control. Role inferred from the hand-written header, not measured. (inferred)
pub mod accumulation_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf16a;
}
/// Constant blend colour, red and green. Role inferred from the hand-written header, not measured. (inferred)
pub mod blend_color_rg {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf16b;
}
/// Constant blend colour, blue and alpha. Role inferred from the hand-written header, not measured. (inferred)
pub mod blend_color_ba {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf16c;
}
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
    pub mod tile_columns_36bit { // bits 5:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod tile_columns_9bit { // bits 1:0, established
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
/// Tag readback mode control. Role inferred from the hand-written header, not measured. (inferred)
pub mod tag_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf16f;
}
/// Tag readback data, red. Role inferred from the hand-written header, not measured. (inferred)
pub mod tag_data_red {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf170;
}
/// Tag readback data, green. Role inferred from the hand-written header, not measured. (inferred)
pub mod tag_data_green {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf171;
}
/// Tag readback data, blue. Role inferred from the hand-written header, not measured. (inferred)
pub mod tag_data_blue {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf172;
}
/// Tag readback data, alpha. Role inferred from the hand-written header, not measured. (inferred)
pub mod tag_data_alpha {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf173;
}
/// Tag readback data, depth. Role inferred from the hand-written header, not measured. (inferred)
pub mod tag_data_depth {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf174;
}
/// Coordinate of the pixel that the direct pixel colour registers address, y in the high half and x in the low half. Role inferred from the hand-written  (inferred)
pub mod pixel_coordinate {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf175;
}
/// Direct pixel colour write, red. Role inferred from the hand-written header, not measured. (inferred)
pub mod pixel_color_red {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf176;
}
/// Direct pixel colour write, green. Role inferred from the hand-written header, not measured. (inferred)
pub mod pixel_color_green {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf177;
}
/// Direct pixel colour write, blue. Role inferred from the hand-written header, not measured. (inferred)
pub mod pixel_color_blue {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf178;
}
/// Direct pixel colour write, alpha. Role inferred from the hand-written header, not measured. (inferred)
pub mod pixel_color_alpha {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf179;
}
/// Direct pixel colour write, accumulation. Role inferred from the hand-written header, not measured. (inferred)
pub mod pixel_color_accumulation {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf17a;
}
/// Pixel-processor window mode. Role inferred from the hand-written header, not measured. (inferred)
pub mod window_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf17b;
}
/// Front or back selection of the main display buffer. Role inferred from the hand-written header, not measured. (inferred)
pub mod main_buffer_select {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf17e;
}
/// Buffer selection of the overlay display buffer. Role inferred from the hand-written header, not measured. (inferred)
pub mod overlay_buffer_select {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf17f;
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
        assert_eq!(drb_size::tile_columns_9bit::get(0x25a), 2);
        assert_eq!(drb_size::tile_columns_36bit::get(0x25a), 6);
        assert_eq!(drb_size::raster_engines_minus_1::get(0x25a), 1);
        assert_eq!(drb_size::dma_line_count_mask::get(0x25a), 2);
        assert_eq!(drb_size::auto_flush_off::get(0x25a), 0);
    }

    #[test]
    fn drb_size_31a() {
        assert_eq!(drb_size::tile_columns_9bit::get(0x31a), 2);
        assert_eq!(drb_size::tile_columns_36bit::get(0x31a), 6);
        assert_eq!(drb_size::raster_engines_minus_1::get(0x31a), 0);
        assert_eq!(drb_size::dma_line_count_mask::get(0x31a), 3);
        assert_eq!(drb_size::auto_flush_off::get(0x31a), 0);
    }
}
