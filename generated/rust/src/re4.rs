// generated from devices/re4/registers.toml by defs-gen - do not edit, change the source
// raster engine register contract for the Impact graphics
#![allow(dead_code)]

/// (inferred)
pub mod tri_x_major {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe000;
}
/// (inferred)
pub mod tri_x_upper {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe001;
}
/// (inferred)
pub mod tri_x_lower {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe002;
}
/// (inferred)
pub mod tri_y_top {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe003;
}
/// (inferred)
pub mod tri_y_mid {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe004;
}
/// (inferred)
pub mod tri_y_bottom {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe005;
}
/// (inferred)
pub mod tri_slope_major_hi {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe006;
}
/// (inferred)
pub mod tri_slope_major_lo {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe007;
}
/// (inferred)
pub mod tri_slope_upper_hi {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe008;
}
/// (inferred)
pub mod tri_slope_upper_lo {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe009;
}
/// (inferred)
pub mod tri_slope_lower_hi {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe00a;
}
/// (inferred)
pub mod tri_slope_lower_lo {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe00b;
}
/// (inferred)
pub mod aaline_x_start {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe00c;
}
/// (inferred)
pub mod aaline_y_start {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe00d;
}
/// (inferred)
pub mod aaline_x_end {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe00e;
}
/// (inferred)
pub mod aaline_y_end {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe00f;
}
/// (inferred)
pub mod aaline_dx {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe010;
}
/// (inferred)
pub mod aaline_dy {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe011;
}
/// (inferred)
pub mod aaline_adjust {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe012;
}
/// Instruction register. A write that asks for execution runs the primitive it selects after the value lands. A second number reaches the same register f (established)
pub mod instr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe013;
    pub mod setup { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod opcode { // bits 3:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const AREA_LEFT_TO_RIGHT: u32 = 0; // established
        pub const AREA_RIGHT_TO_LEFT: u32 = 1; // established
        pub const AALINE: u32 = 2; // established
        pub const POINT: u32 = 4; // established
        pub const LINE: u32 = 5; // established
        pub const BLOCK: u32 = 8; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            AreaLeftToRight,
            AreaRightToLeft,
            Aaline,
            Point,
            Line,
            Block,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::AreaLeftToRight,
                    1 => Self::AreaRightToLeft,
                    2 => Self::Aaline,
                    4 => Self::Point,
                    5 => Self::Line,
                    8 => Self::Block,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::AreaLeftToRight => 0,
                    Self::AreaRightToLeft => 1,
                    Self::Aaline => 2,
                    Self::Point => 4,
                    Self::Line => 5,
                    Self::Block => 8,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (inferred)
pub mod line_xy_start {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe040;
}
/// (inferred)
pub mod line_xy_end {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe041;
}
/// (inferred)
pub mod line_step_a {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe042;
}
/// (inferred)
pub mod line_step_b {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe043;
}
/// (inferred)
pub mod line_error_octant {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe044;
}
/// The public driver writes 0x18 here with the execute mark to start a rectangle fill or to arm a glyph rectangle, which is the block primitive above. So (established)
pub mod instr_alias {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe045;
}
/// Start corner of a 2D block as the public driver packs it: x in bits 31:16 and y in bits 15:0. Software expectation. (inferred)
pub mod block_xy_start {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe046;
    pub mod x { // bits 31:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod y { // bits 15:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Inclusive end corner of a 2D block, x in bits 31:16 and y in bits 15:0. The public driver sends the last column and row the block covers, so a block o (inferred)
pub mod block_xy_end {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe047;
    pub mod x { // bits 31:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod y { // bits 15:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod block_xy_move {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe048;
}
/// (inferred)
pub mod block_saved_octant {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe049;
}
/// Packed colour the public driver uses for rectangle fills and glyph foreground. Software expectation. (inferred)
pub mod color_packed {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe05b;
    pub mod blue { // bits 23:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod green { // bits 15:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod red { // bits 7:0, inferred
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
/// (inferred)
pub mod color_red {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe05c;
}
/// (inferred)
pub mod color_green {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe05d;
}
/// (inferred)
pub mod color_blue {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe05e;
}
/// (inferred)
pub mod color_alpha {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe05f;
}
/// (inferred)
pub mod color_red_edge {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe060;
}
/// (inferred)
pub mod color_red_span {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe061;
}
/// (inferred)
pub mod color_green_edge {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe062;
}
/// (inferred)
pub mod color_green_span {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe063;
}
/// (inferred)
pub mod color_blue_edge {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe064;
}
/// (inferred)
pub mod color_blue_span {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe065;
}
/// (inferred)
pub mod color_alpha_edge {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe066;
}
/// (inferred)
pub mod color_alpha_span {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe067;
}
/// (inferred)
pub mod depth_hi {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe068;
}
/// (inferred)
pub mod depth_lo {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe069;
}
/// (inferred)
pub mod depth_span_hi {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe06a;
}
/// (inferred)
pub mod depth_span_lo {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe06b;
}
/// (inferred)
pub mod depth_edge_hi {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe06c;
}
/// (inferred)
pub mod depth_edge_lo {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe06d;
}
/// Glyph row data for console bitmaps. For widths one through eight the driver arms one rectangle and executes this register once per row, with the row b (inferred)
pub mod glyph_hi {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe070;
}
/// Second glyph word. For widths nine through sixteen the driver writes the row shifted left 24 bits here and executes it to draw that one row, so the to (inferred)
pub mod glyph_lo {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe071;
}
/// (inferred)
pub mod xfer_abort {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe100;
}
/// (inferred)
pub mod xfer_control {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe102;
    pub mod busy { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod read { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod device { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const FRAMEBUFFER: u32 = 0; // inferred
        pub const TEXTURE_MEMORY: u32 = 1; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Framebuffer,
            TextureMemory,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Framebuffer,
                    1 => Self::TextureMemory,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Framebuffer => 0,
                    Self::TextureMemory => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod pio_start { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_start { // bits 0:0, inferred
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
/// Fill mode. Bits 3, 4, 5, 6, 7 and 10 and the block type are placed from the drivers; the enables for shading, rounding, depth iteration and the antial (inferred)
pub mod fill_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe110;
    pub mod block_type { // bits 24:22, inferred
        pub const SHIFT: u32 = 22;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const GLYPH_DATA: u32 = 0; // inferred
        pub const STIPPLED_BLOCK: u32 = 1; // inferred
        pub const PIO_READ: u32 = 2; // inferred
        pub const PIO_WRITE: u32 = 3; // inferred
        pub const DMA_READ: u32 = 4; // inferred
        pub const DMA_WRITE: u32 = 5; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            GlyphData,
            StippledBlock,
            PioRead,
            PioWrite,
            DmaRead,
            DmaWrite,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::GlyphData,
                    1 => Self::StippledBlock,
                    2 => Self::PioRead,
                    3 => Self::PioWrite,
                    4 => Self::DmaRead,
                    5 => Self::DmaWrite,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::GlyphData => 0,
                    Self::StippledBlock => 1,
                    Self::PioRead => 2,
                    Self::PioWrite => 3,
                    Self::DmaRead => 4,
                    Self::DmaWrite => 5,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod fast_fill { // bits 20:20, inferred
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod skip_last_pixel { // bits 10:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod line_advance { // bits 7:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod line_opaque { // bits 6:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod line_stipple { // bits 5:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod glyph_opaque { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod glyph_stipple { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod poly_stipple { // bits 0:0, inferred
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
/// Texture mode, first word. The client clears bits 15 to 12 before it chooses the colour table format. Its RGB-compatible table path then writes 0xe in  (inferred)
pub mod texmode1 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe111;
    pub mod depth_term { // bits 18:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod colour_table { // bits 15:12, inferred
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u32 = 0; // inferred
        pub const ALPHA: u32 = 1; // inferred
        pub const INTENSITY_OR_LUMINANCE_ALPHA: u32 = 9; // inferred
        pub const RGB_LOOKUP: u32 = 14; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            Alpha,
            IntensityOrLuminanceAlpha,
            RgbLookup,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::None,
                    1 => Self::Alpha,
                    9 => Self::IntensityOrLuminanceAlpha,
                    14 => Self::RgbLookup,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::None => 0,
                    Self::Alpha => 1,
                    Self::IntensityOrLuminanceAlpha => 9,
                    Self::RgbLookup => 14,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod texel_class { // bits 11:9, inferred
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const ALPHA: u32 = 1; // inferred
        pub const LUMINANCE: u32 = 2; // inferred
        pub const INTENSITY: u32 = 3; // inferred
        pub const COLOUR: u32 = 4; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Alpha,
            Luminance,
            Intensity,
            Colour,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    1 => Self::Alpha,
                    2 => Self::Luminance,
                    3 => Self::Intensity,
                    4 => Self::Colour,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Alpha => 1,
                    Self::Luminance => 2,
                    Self::Intensity => 3,
                    Self::Colour => 4,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod tram_select { // bits 8:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod tram_size_code { // bits 6:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod layout { // bits 4:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const ONE_COMPONENT: u32 = 0; // inferred
        pub const TWO_COMPONENT: u32 = 1; // inferred
        pub const RGB: u32 = 2; // inferred
        pub const RGBA: u32 = 3; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            OneComponent,
            TwoComponent,
            Rgb,
            Rgba,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::OneComponent,
                    1 => Self::TwoComponent,
                    2 => Self::Rgb,
                    3 => Self::Rgba,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::OneComponent => 0,
                    Self::TwoComponent => 1,
                    Self::Rgb => 2,
                    Self::Rgba => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod environment { // bits 2:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const MODULATE: u32 = 0; // inferred
        pub const DECAL: u32 = 1; // inferred
        pub const BLEND: u32 = 2; // inferred
        pub const ALPHA_ONLY: u32 = 3; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Modulate,
            Decal,
            Blend,
            AlphaOnly,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Modulate,
                    1 => Self::Decal,
                    2 => Self::Blend,
                    3 => Self::AlphaOnly,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Modulate => 0,
                    Self::Decal => 1,
                    Self::Blend => 2,
                    Self::AlphaOnly => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod texture_enable { // bits 0:0, inferred
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
/// (inferred)
pub mod config {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe112;
    pub mod line_round { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod y_flip { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod target_raster { // bits 0:0, inferred
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
/// (inferred)
pub mod scissor_x {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe113;
}
/// (inferred)
pub mod scissor_y {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe114;
}
/// Window origin (XYWIN). OpenBSD's impact(4) header packs it as (y << 16) | x, so x is the low half and y the high half. That is a software expectation  (inferred)
pub mod window_origin {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe115;
    pub mod y { // bits 31:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod x { // bits 15:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Colours shared with the texture engine and double buffered. Opaque stipples draw their zero bits in the background colour: in RGB modes it is twelve b (inferred)
pub mod background_rg {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe140;
}
/// (inferred)
pub mod background_ba {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe141;
}
/// (inferred)
pub mod texenv_rg {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe142;
}
/// (inferred)
pub mod texenv_b {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe143;
}
/// (inferred)
pub mod fog_rg {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe144;
}
/// (inferred)
pub mod fog_b {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe145;
}
/// (inferred)
pub mod aaline_config {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe146;
    pub mod width { // bits 7:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod smooth { // bits 0:0, inferred
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
/// Screen mask 1, x range, written as x1 << 16 | (x2 - 1): x1 is the first column and x2 the column past the last. The IRIX kernel writes this word for e (inferred)
pub mod screen_mask1_x {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe147;
}
/// Screen mask 1, y range, written as (H - y2) << 16 | (H - 1 - y1): H is the screen height (1024 in the X server's listing), y1 the first row and y2 the (inferred)
pub mod screen_mask1_y {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe148;
}
/// Screen mask 2, x range, same encoding as screen_mask1_x. The kernel writes masks 1 to 4 with this encoding (established as its words); the X server's  (inferred)
pub mod screen_mask2_x {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe149;
}
/// Screen mask 2, y range, same encoding as screen_mask1_y. Established for masks 1 to 4 as the kernel's words, as for the x range. (inferred)
pub mod screen_mask2_y {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe14a;
}
/// Screen mask 3, x range, same encoding as screen_mask1_x. Established as the kernel's words for mask 3. (inferred)
pub mod screen_mask3_x {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe14b;
}
/// Screen mask 3, y range, same encoding as screen_mask1_y. Established as the kernel's words for mask 3. (inferred)
pub mod screen_mask3_y {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe14c;
}
/// Screen mask 4, x range, same encoding as screen_mask1_x. The kernel's register shadow holds mask 4 at 0x14d and 0x14e. Established as the kernel's wor (inferred)
pub mod screen_mask4_x {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe14d;
}
/// Screen mask 4, y range, same encoding as screen_mask1_y. Established as the kernel's words for mask 4. (inferred)
pub mod screen_mask4_y {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe14e;
}
/// Window mode. Bits 3:0 enable masks 1 to 4, mask n at bit n-1. The kernel's clip validation writes 0x11, 0x13, 0x17 or 0x1f for one to four visible rec (inferred)
pub mod window_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe14f;
    pub mod inside4 { // bits 7:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod inside3 { // bits 6:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod inside2 { // bits 5:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod inside1 { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod enable4 { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod enable3 { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod enable2 { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod enable1 { // bits 0:0, inferred
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
/// (inferred)
pub mod xfer_size {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe153;
    pub mod lines { // bits 31:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod width { // bits 15:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod xfer_zoom_init {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe154;
}
/// (inferred)
pub mod xfer_zoom_step {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe155;
}
/// Zoom encoding: both registers hold 8.8 fixed point, 0x100 meaning a factor of 1.0 (no zoom). Established: the library's host-to-raster setup routines  (inferred)
pub mod xfer_mask_lo {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe156;
}
/// (inferred)
pub mod xfer_mask_hi {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe157;
}
/// (inferred)
pub mod xfer_counters {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe158;
}
/// Transfer mode. Placed from what the drivers write: component type in 3:0, pixel format in 7:4, begin skip bytes in 10:8, begin skip bits in 13:11, str (inferred)
pub mod xfer_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe159;
    pub mod opaque { // bits 23:23, inferred
        pub const SHIFT: u32 = 23;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod rgb_order { // bits 22:22, inferred
        pub const SHIFT: u32 = 22;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod decimate { // bits 20:20, inferred
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod zoom { // bits 19:19, inferred
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod flag18 { // bits 18:18, inferred
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod flag17 { // bits 17:17, inferred
        pub const SHIFT: u32 = 17;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod stride_skip_bytes { // bits 16:14, inferred
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod begin_skip_bits { // bits 13:11, inferred
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod begin_skip_bytes { // bits 10:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod format { // bits 7:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const COLOR_INDEX: u32 = 0; // inferred
        pub const STENCIL: u32 = 1; // inferred
        pub const DEPTH: u32 = 2; // inferred
        pub const RGB: u32 = 7; // inferred
        pub const RGBA: u32 = 8; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            ColorIndex,
            Stencil,
            Depth,
            Rgb,
            Rgba,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::ColorIndex,
                    1 => Self::Stencil,
                    2 => Self::Depth,
                    7 => Self::Rgb,
                    8 => Self::Rgba,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::ColorIndex => 0,
                    Self::Stencil => 1,
                    Self::Depth => 2,
                    Self::Rgb => 7,
                    Self::Rgba => 8,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod comp_type { // bits 3:0, inferred
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
pub mod line_stipple_pattern {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe15a;
}
/// (inferred)
pub mod line_stipple_repeat {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe15b;
}
/// (inferred)
pub mod device_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe15c;
}
/// (inferred)
pub mod device_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe15d;
}
/// (inferred)
pub mod status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe15e;
    pub mod pixel_busy { // bits 10:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod raster_busy { // bits 9:9, inferred
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod fifo_empty { // bits 8:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
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
    pub mod board_index { // bits 3:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod chip_count { // bits 1:0, inferred
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
/// (inferred)
pub mod toggle_context {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe15f;
}
/// Pixel-processor fill mode, written through the normal command FIFO under its own selector. The public driver writes 0x0c006300 for a copy fill and 0x1 (inferred)
pub mod pp1_fill_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xe161;
}
pub const XFER_ZOOM_UNITY: u32 = 0x100; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn instr_15() {
        assert_eq!(instr::opcode::get(0x15), 5);
        assert_eq!(instr::setup::get(0x15), 1);
    }

    #[test]
    fn instr_18() {
        assert_eq!(instr::opcode::get(0x18), 8);
        assert_eq!(instr::setup::get(0x18), 1);
    }

    #[test]
    fn fill_mode_418008() {
        assert_eq!(fill_mode::glyph_stipple::get(0x418008), 1);
        assert_eq!(fill_mode::block_type::get(0x418008), 1);
    }

    #[test]
    fn xfer_mode_40080() {
        assert_eq!(xfer_mode::comp_type::get(0x40080), 0);
        assert_eq!(xfer_mode::format::get(0x40080), 8);
        assert_eq!(xfer_mode::flag18::get(0x40080), 1);
        assert_eq!(xfer_mode::stride_skip_bytes::get(0x40080), 0);
    }

    #[test]
    fn xfer_mode_c00080() {
        assert_eq!(xfer_mode::comp_type::get(0xc00080), 0);
        assert_eq!(xfer_mode::format::get(0xc00080), 8);
        assert_eq!(xfer_mode::begin_skip_bytes::get(0xc00080), 0);
        assert_eq!(xfer_mode::stride_skip_bytes::get(0xc00080), 0);
        assert_eq!(xfer_mode::flag18::get(0xc00080), 0);
        assert_eq!(xfer_mode::rgb_order::get(0xc00080), 1);
        assert_eq!(xfer_mode::opaque::get(0xc00080), 1);
    }

    #[test]
    fn xfer_mode_c10080() {
        assert_eq!(xfer_mode::comp_type::get(0xc10080), 0);
        assert_eq!(xfer_mode::format::get(0xc10080), 8);
        assert_eq!(xfer_mode::begin_skip_bytes::get(0xc10080), 0);
        assert_eq!(xfer_mode::stride_skip_bytes::get(0xc10080), 4);
        assert_eq!(xfer_mode::flag18::get(0xc10080), 0);
        assert_eq!(xfer_mode::rgb_order::get(0xc10080), 1);
        assert_eq!(xfer_mode::opaque::get(0xc10080), 1);
    }

    #[test]
    fn xfer_mode_c10480() {
        assert_eq!(xfer_mode::comp_type::get(0xc10480), 0);
        assert_eq!(xfer_mode::format::get(0xc10480), 8);
        assert_eq!(xfer_mode::begin_skip_bytes::get(0xc10480), 4);
        assert_eq!(xfer_mode::stride_skip_bytes::get(0xc10480), 4);
        assert_eq!(xfer_mode::flag18::get(0xc10480), 0);
        assert_eq!(xfer_mode::rgb_order::get(0xc10480), 1);
        assert_eq!(xfer_mode::opaque::get(0xc10480), 1);
    }
}
