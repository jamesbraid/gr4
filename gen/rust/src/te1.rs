// generated from defs/te1.toml by defs-gen - do not edit, change the source
// texture engine and texture RAM registers of the Impact graphics subsystem
#![allow(dead_code)]

/// Texture mode for the drawn texture: component depth, filters, wrap and the no-border flag. The diagnostic's mask is 25 bits. The field positions are t (inferred)
pub mod texmode2 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf180;
    pub mod mipmap_active_copy { // bits 19:19, established
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod no_border { // bits 16:16, unknown
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod clamp_is_gl_clamp { // bits 14:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod r_clamp { // bits 13:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod t_clamp { // bits 12:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s_clamp { // bits 11:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod min_within_level { // bits 8:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mag_linear { // bits 7:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod min_between_levels { // bits 6:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mipmap_active { // bits 5:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod multibuffer_hint { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod depth_code { // bits 3:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Log2 sizes of the base level and the detail level code. The diagnostic's mask is 23 bits. The client writes the width and height fields twice, in the  (inferred)
pub mod txsize {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf181;
    pub mod depth_log2 { // bits 22:19, established
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod detail_level_code { // bits 18:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod height_log2_copy { // bits 15:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod width_log2_copy { // bits 11:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod height_log2 { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod width_log2 { // bits 3:0, established
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
/// Written only by the client's texture-manager initialisation. The diagnostic's mask is 26 bits. Its meaning is unknown. (inferred)
pub mod txtile {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf182;
}
/// Level-of-detail clamp. The minimum level is sent as the level times 64, with six fraction bits. The diagnostic's mask is 21 bits, so bits 25 to 21 of  (inferred)
pub mod txlod {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf183;
    pub mod min_lod_64ths { // bits 25:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod context_bits { // bits 15:10, unknown
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod last_level { // bits 3:0, established
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
/// Texture border colour, red and green, 12 bits a component, laid out like the environment colour. (inferred)
pub mod txbcolor_rg {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf184;
    pub mod green { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod red { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Texture border colour, blue and alpha, 12 bits a component, laid out like the environment colour. (inferred)
pub mod txbcolor_ba {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf185;
    pub mod alpha { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blue { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Per-context base block in texture RAM. The client does not write it. The kernel's base write is inferred to land here. (inferred)
pub mod txbase {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf186;
    pub mod base_block { // bits 7:0, inferred
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
/// Texture RAM control, 20 bits in the diagnostic's mask. Its meaning is unknown. (inferred)
pub mod tram_cntrl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf187;
}
/// Maximum pixel clamp, red and green, 24 bits in the diagnostic's mask. The client writes it once in its texture-manager initialisation. Its meaning is  (inferred)
pub mod max_pixel_rg {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf188;
}
/// Maximum pixel clamp, blue and alpha, 24 bits in the diagnostic's mask. Its meaning is unknown. (inferred)
pub mod max_pixel_ba {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf189;
}
/// Multi-dimensional texture addressing, 29 bits in the diagnostic's mask. Used for volume and four-dimensional textures only. The field layout is fitted (inferred)
pub mod mddma_cntrl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf18a;
    pub mod depth_term { // bits 29:26, inferred
        pub const SHIFT: u32 = 26;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod block_pair_log2 { // bits 25:23, inferred
        pub const SHIFT: u32 = 23;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod size3_log2 { // bits 17:14, inferred
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod size2_log2 { // bits 13:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod size1_log2 { // bits 9:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod size0_log2 { // bits 5:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Texture read buffer select, one bit. The client writes it together with the complement in the loader's write-buffer register. The board's use is infer (inferred)
pub mod texrbuffer {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf18b;
    pub mod buffer { // bits 0:0, inferred
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
/// Clamp limits in texels: the base level's width and height without a border, shifted left by the first level. The client computes the word as the width (established)
pub mod txclampsize {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf18c;
    pub mod clamp_width { // bits 25:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x1fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod clamp_height { // bits 12:0, established
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
/// Texture engine soft-reset strobe, 3 bits in the diagnostic's mask. The client does not write it. (inferred)
pub mod te_reset {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf18e;
}
/// Index into the level tables. The client writes zero before it streams a table through the indexed-write token, and advances one entry per table write. (inferred)
pub mod txaddr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf190;
    pub mod index { // bits 4:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// First block of the detail texture, 9 bits in the diagnostic's mask. (inferred)
pub mod txdetail {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf192;
    pub mod block { // bits 8:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Border block of each level, streamed through the level table with the index register. The diagnostic's mask is 9 bits. (inferred)
pub mod txborder {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf193;
    pub mod block { // bits 7:0, inferred
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
/// Detail weight by level of detail: a 32-entry table of 6-bit values, filled through the indexed-write token. The client's default fills the table with  (inferred)
pub mod detailscale {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf194;
    pub mod value { // bits 5:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Texture engine revision, 29 bits in the diagnostic's mask. The client does not write it. The diagnostic identifies revisions by a render checksum inst (inferred)
pub mod tevers {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf196;
}
/// Texture loader write-buffer select, one bit. The client writes it with the complement of the read-buffer bit. (inferred)
pub mod tl_wbuffer {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a0;
    pub mod buffer { // bits 0:0, inferred
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
/// Level being loaded: its number and its log2 width and height. The client sends the level's own size here, not the destination corners of the transfer. (established)
pub mod tl_spec {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a2;
    pub mod log2_height { // bits 11:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod log2_width { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod level { // bits 3:0, established
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
/// (inferred)
pub mod tl_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a3;
    pub mod index { // bits 3:0, inferred
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
/// First block of a level, with a per-image flag bit. The diagnostic's mask is 9 bits. The client's copy path sends it; an ordinary load does not. (inferred)
pub mod tl_mipmap {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a4;
    pub mod flag { // bits 8:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod block { // bits 7:0, inferred
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
/// Border block of a level, 9 bits in the diagnostic's mask. (inferred)
pub mod tl_border {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a5;
    pub mod block { // bits 7:0, inferred
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
/// Video-to-texture capture start, one bit. The client does not write it; the kernel's video path does. (inferred)
pub mod tl_vidcntrl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a6;
}
/// Base block of the texture being loaded, 8 bits in the diagnostic's mask. (inferred)
pub mod tl_base {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a7;
    pub mod base_block { // bits 7:0, inferred
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
/// Copy rectangle width for a framebuffer copy, 14 bits in the diagnostic's mask. (inferred)
pub mod tl_s_size {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1a9;
}
/// Copy rectangle height for a framebuffer copy, 14 bits in the diagnostic's mask. (inferred)
pub mod tl_t_size {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1aa;
}
/// Copy rectangle left edge for a framebuffer copy, 14 bits in the diagnostic's mask. (inferred)
pub mod tl_s_left {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1ab;
}
/// Copy rectangle bottom edge for a framebuffer copy, 14 bits in the diagnostic's mask. (inferred)
pub mod tl_t_bottom {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xf1ac;
}
pub const TE_REV_B_1TRAM_CHECKSUM: u32 = 0xbdf48fc; // inferred
pub const TE_REV_B_4TRAM_CHECKSUM: u64 = 0x236379000; // inferred
pub const TE_REV_D_CHECKSUM: u64 = 0x2aa70d210; // inferred
pub const TRAM_BLOCKS_PER_PATH: u32 = 0x100; // established
pub const TRAM_BLOCK_SIZE_SHIFT: u32 = 0xc; // established
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
