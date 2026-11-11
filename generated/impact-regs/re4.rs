// generated from gr4 136a8bc692fd RE4_DECODE.h - do not edit, regenerate in gr4
//!
//! Raster engine registers of the Impact graphics subsystem.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// Raster engine register `tri_x_major`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_X_MAJOR: u32 = 0xe000;
pub const REG_TRI_X_MAJOR_WIDTH: u32 = 32;
/// Raster engine register `tri_x_upper`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_X_UPPER: u32 = 0xe001;
pub const REG_TRI_X_UPPER_WIDTH: u32 = 32;
/// Raster engine register `tri_x_lower`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_X_LOWER: u32 = 0xe002;
pub const REG_TRI_X_LOWER_WIDTH: u32 = 32;
/// Raster engine register `tri_y_top`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_Y_TOP: u32 = 0xe003;
pub const REG_TRI_Y_TOP_WIDTH: u32 = 32;
/// Raster engine register `tri_y_mid`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_Y_MID: u32 = 0xe004;
pub const REG_TRI_Y_MID_WIDTH: u32 = 32;
/// Raster engine register `tri_y_bottom`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_Y_BOTTOM: u32 = 0xe005;
pub const REG_TRI_Y_BOTTOM_WIDTH: u32 = 32;
/// Raster engine register `tri_slope_major_hi`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_SLOPE_MAJOR_HI: u32 = 0xe006;
pub const REG_TRI_SLOPE_MAJOR_HI_WIDTH: u32 = 32;
/// Raster engine register `tri_slope_major_lo`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_SLOPE_MAJOR_LO: u32 = 0xe007;
pub const REG_TRI_SLOPE_MAJOR_LO_WIDTH: u32 = 32;
/// Raster engine register `tri_slope_upper_hi`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_SLOPE_UPPER_HI: u32 = 0xe008;
pub const REG_TRI_SLOPE_UPPER_HI_WIDTH: u32 = 32;
/// Raster engine register `tri_slope_upper_lo`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_SLOPE_UPPER_LO: u32 = 0xe009;
pub const REG_TRI_SLOPE_UPPER_LO_WIDTH: u32 = 32;
/// Raster engine register `tri_slope_lower_hi`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_SLOPE_LOWER_HI: u32 = 0xe00a;
pub const REG_TRI_SLOPE_LOWER_HI_WIDTH: u32 = 32;
/// Raster engine register `tri_slope_lower_lo`: write, 32-bit; reset unknown; inferred.
pub const REG_TRI_SLOPE_LOWER_LO: u32 = 0xe00b;
pub const REG_TRI_SLOPE_LOWER_LO_WIDTH: u32 = 32;
/// Raster engine register `aaline_x_start`: write, 32-bit; reset unknown; inferred.
pub const REG_AALINE_X_START: u32 = 0xe00c;
pub const REG_AALINE_X_START_WIDTH: u32 = 32;
/// Raster engine register `aaline_y_start`: write, 32-bit; reset unknown; inferred.
pub const REG_AALINE_Y_START: u32 = 0xe00d;
pub const REG_AALINE_Y_START_WIDTH: u32 = 32;
/// Raster engine register `aaline_x_end`: write, 32-bit; reset unknown; inferred.
pub const REG_AALINE_X_END: u32 = 0xe00e;
pub const REG_AALINE_X_END_WIDTH: u32 = 32;
/// Raster engine register `aaline_y_end`: write, 32-bit; reset unknown; inferred.
pub const REG_AALINE_Y_END: u32 = 0xe00f;
pub const REG_AALINE_Y_END_WIDTH: u32 = 32;
/// Raster engine register `aaline_dx`: write, 32-bit; reset unknown; inferred.
pub const REG_AALINE_DX: u32 = 0xe010;
pub const REG_AALINE_DX_WIDTH: u32 = 32;
/// Raster engine register `aaline_dy`: write, 32-bit; reset unknown; inferred.
pub const REG_AALINE_DY: u32 = 0xe011;
pub const REG_AALINE_DY_WIDTH: u32 = 32;
/// Raster engine register `aaline_adjust`: write, 32-bit; reset unknown; inferred.
pub const REG_AALINE_ADJUST: u32 = 0xe012;
pub const REG_AALINE_ADJUST_WIDTH: u32 = 32;
/// Raster engine register `instr`: write, 32-bit; reset unknown; established.
pub const REG_INSTR: u32 = 0xe013;
pub const REG_INSTR_WIDTH: u32 = 32;
/// Raster engine register `line_xy_start`: write, 32-bit; reset unknown; inferred.
pub const REG_LINE_XY_START: u32 = 0xe040;
pub const REG_LINE_XY_START_WIDTH: u32 = 32;
/// Raster engine register `line_xy_end`: write, 32-bit; reset unknown; inferred.
pub const REG_LINE_XY_END: u32 = 0xe041;
pub const REG_LINE_XY_END_WIDTH: u32 = 32;
/// Raster engine register `line_step_a`: write, 32-bit; reset unknown; inferred.
pub const REG_LINE_STEP_A: u32 = 0xe042;
pub const REG_LINE_STEP_A_WIDTH: u32 = 32;
/// Raster engine register `line_step_b`: write, 32-bit; reset unknown; inferred.
pub const REG_LINE_STEP_B: u32 = 0xe043;
pub const REG_LINE_STEP_B_WIDTH: u32 = 32;
/// Raster engine register `line_error_octant`: write, 32-bit; reset unknown; inferred.
pub const REG_LINE_ERROR_OCTANT: u32 = 0xe044;
pub const REG_LINE_ERROR_OCTANT_WIDTH: u32 = 32;
/// Raster engine register `instr_alias`: write, 32-bit; reset unknown; established.
pub const REG_INSTR_ALIAS: u32 = 0xe045;
pub const REG_INSTR_ALIAS_WIDTH: u32 = 32;
/// Raster engine register `block_xy_start`: write, 32-bit; reset unknown; inferred.
pub const REG_BLOCK_XY_START: u32 = 0xe046;
pub const REG_BLOCK_XY_START_WIDTH: u32 = 32;
/// Raster engine register `block_xy_end`: write, 32-bit; reset unknown; inferred.
pub const REG_BLOCK_XY_END: u32 = 0xe047;
pub const REG_BLOCK_XY_END_WIDTH: u32 = 32;
/// Raster engine register `block_xy_move`: write, 32-bit; reset unknown; inferred.
pub const REG_BLOCK_XY_MOVE: u32 = 0xe048;
pub const REG_BLOCK_XY_MOVE_WIDTH: u32 = 32;
/// Raster engine register `block_saved_octant`: write, 32-bit; reset unknown; inferred.
pub const REG_BLOCK_SAVED_OCTANT: u32 = 0xe049;
pub const REG_BLOCK_SAVED_OCTANT_WIDTH: u32 = 32;
/// Raster engine register `color_packed`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_PACKED: u32 = 0xe05b;
pub const REG_COLOR_PACKED_WIDTH: u32 = 32;
/// Raster engine register `color_red`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_RED: u32 = 0xe05c;
pub const REG_COLOR_RED_WIDTH: u32 = 32;
/// Raster engine register `color_green`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_GREEN: u32 = 0xe05d;
pub const REG_COLOR_GREEN_WIDTH: u32 = 32;
/// Raster engine register `color_blue`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_BLUE: u32 = 0xe05e;
pub const REG_COLOR_BLUE_WIDTH: u32 = 32;
/// Raster engine register `color_alpha`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_ALPHA: u32 = 0xe05f;
pub const REG_COLOR_ALPHA_WIDTH: u32 = 32;
/// Raster engine register `color_red_edge`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_RED_EDGE: u32 = 0xe060;
pub const REG_COLOR_RED_EDGE_WIDTH: u32 = 32;
/// Raster engine register `color_red_span`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_RED_SPAN: u32 = 0xe061;
pub const REG_COLOR_RED_SPAN_WIDTH: u32 = 32;
/// Raster engine register `color_green_edge`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_GREEN_EDGE: u32 = 0xe062;
pub const REG_COLOR_GREEN_EDGE_WIDTH: u32 = 32;
/// Raster engine register `color_green_span`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_GREEN_SPAN: u32 = 0xe063;
pub const REG_COLOR_GREEN_SPAN_WIDTH: u32 = 32;
/// Raster engine register `color_blue_edge`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_BLUE_EDGE: u32 = 0xe064;
pub const REG_COLOR_BLUE_EDGE_WIDTH: u32 = 32;
/// Raster engine register `color_blue_span`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_BLUE_SPAN: u32 = 0xe065;
pub const REG_COLOR_BLUE_SPAN_WIDTH: u32 = 32;
/// Raster engine register `color_alpha_edge`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_ALPHA_EDGE: u32 = 0xe066;
pub const REG_COLOR_ALPHA_EDGE_WIDTH: u32 = 32;
/// Raster engine register `color_alpha_span`: write, 32-bit; reset unknown; inferred.
pub const REG_COLOR_ALPHA_SPAN: u32 = 0xe067;
pub const REG_COLOR_ALPHA_SPAN_WIDTH: u32 = 32;
/// Raster engine register `depth_hi`: write, 32-bit; reset unknown; inferred.
pub const REG_DEPTH_HI: u32 = 0xe068;
pub const REG_DEPTH_HI_WIDTH: u32 = 32;
/// Raster engine register `depth_lo`: write, 32-bit; reset unknown; inferred.
pub const REG_DEPTH_LO: u32 = 0xe069;
pub const REG_DEPTH_LO_WIDTH: u32 = 32;
/// Raster engine register `depth_span_hi`: write, 32-bit; reset unknown; inferred.
pub const REG_DEPTH_SPAN_HI: u32 = 0xe06a;
pub const REG_DEPTH_SPAN_HI_WIDTH: u32 = 32;
/// Raster engine register `depth_span_lo`: write, 32-bit; reset unknown; inferred.
pub const REG_DEPTH_SPAN_LO: u32 = 0xe06b;
pub const REG_DEPTH_SPAN_LO_WIDTH: u32 = 32;
/// Raster engine register `depth_edge_hi`: write, 32-bit; reset unknown; inferred.
pub const REG_DEPTH_EDGE_HI: u32 = 0xe06c;
pub const REG_DEPTH_EDGE_HI_WIDTH: u32 = 32;
/// Raster engine register `depth_edge_lo`: write, 32-bit; reset unknown; inferred.
pub const REG_DEPTH_EDGE_LO: u32 = 0xe06d;
pub const REG_DEPTH_EDGE_LO_WIDTH: u32 = 32;
/// Raster engine register `glyph_hi`: write, 32-bit; reset unknown; inferred.
pub const REG_GLYPH_HI: u32 = 0xe070;
pub const REG_GLYPH_HI_WIDTH: u32 = 32;
/// Raster engine register `glyph_lo`: write, 32-bit; reset unknown; inferred.
pub const REG_GLYPH_LO: u32 = 0xe071;
pub const REG_GLYPH_LO_WIDTH: u32 = 32;
/// Raster engine register `xfer_abort`: write, 32-bit; reset unknown; inferred.
pub const REG_XFER_ABORT: u32 = 0xe100;
pub const REG_XFER_ABORT_WIDTH: u32 = 32;
/// Raster engine register `xfer_control`: read/write, 32-bit; reset unknown; inferred.
pub const REG_XFER_CONTROL: u32 = 0xe102;
pub const REG_XFER_CONTROL_WIDTH: u32 = 32;
/// Raster engine register `fill_mode`: read/write, 32-bit; reset unknown; inferred.
pub const REG_FILL_MODE: u32 = 0xe110;
pub const REG_FILL_MODE_WIDTH: u32 = 32;
/// Raster engine register `texmode1`: read/write, 32-bit; reset unknown; inferred.
pub const REG_TEXMODE1: u32 = 0xe111;
pub const REG_TEXMODE1_WIDTH: u32 = 32;
/// Raster engine register `config`: read/write, 32-bit; reset unknown; inferred.
pub const REG_CONFIG: u32 = 0xe112;
pub const REG_CONFIG_WIDTH: u32 = 32;
/// Raster engine register `scissor_x`: read/write, 32-bit; reset unknown; inferred.
pub const REG_SCISSOR_X: u32 = 0xe113;
pub const REG_SCISSOR_X_WIDTH: u32 = 32;
/// Raster engine register `scissor_y`: read/write, 32-bit; reset unknown; inferred.
pub const REG_SCISSOR_Y: u32 = 0xe114;
pub const REG_SCISSOR_Y_WIDTH: u32 = 32;
/// Raster engine register `window_origin`: read/write, 32-bit; reset unknown; inferred.
pub const REG_WINDOW_ORIGIN: u32 = 0xe115;
pub const REG_WINDOW_ORIGIN_WIDTH: u32 = 32;
/// Raster engine register `background_rg`: read/write, 32-bit; reset unknown; inferred.
pub const REG_BACKGROUND_RG: u32 = 0xe140;
pub const REG_BACKGROUND_RG_WIDTH: u32 = 32;
/// Raster engine register `background_ba`: read/write, 32-bit; reset unknown; inferred.
pub const REG_BACKGROUND_BA: u32 = 0xe141;
pub const REG_BACKGROUND_BA_WIDTH: u32 = 32;
/// Raster engine register `texenv_rg`: read/write, 32-bit; reset unknown; inferred.
pub const REG_TEXENV_RG: u32 = 0xe142;
pub const REG_TEXENV_RG_WIDTH: u32 = 32;
/// Raster engine register `texenv_b`: read/write, 32-bit; reset unknown; inferred.
pub const REG_TEXENV_B: u32 = 0xe143;
pub const REG_TEXENV_B_WIDTH: u32 = 32;
/// Raster engine register `fog_rg`: read/write, 32-bit; reset unknown; inferred.
pub const REG_FOG_RG: u32 = 0xe144;
pub const REG_FOG_RG_WIDTH: u32 = 32;
/// Raster engine register `fog_b`: read/write, 32-bit; reset unknown; inferred.
pub const REG_FOG_B: u32 = 0xe145;
pub const REG_FOG_B_WIDTH: u32 = 32;
/// Raster engine register `aaline_config`: read/write, 32-bit; reset unknown; inferred.
pub const REG_AALINE_CONFIG: u32 = 0xe146;
pub const REG_AALINE_CONFIG_WIDTH: u32 = 32;
/// Raster engine register `screen_mask1_x`: read/write, 32-bit; reset unknown; inferred.
pub const REG_SCREEN_MASK1_X: u32 = 0xe147;
pub const REG_SCREEN_MASK1_X_WIDTH: u32 = 32;
/// Raster engine register `screen_mask1_y`: read/write, 32-bit; reset unknown; inferred.
pub const REG_SCREEN_MASK1_Y: u32 = 0xe148;
pub const REG_SCREEN_MASK1_Y_WIDTH: u32 = 32;
/// Raster engine register `screen_mask2_x`: read/write, 32-bit; reset unknown; inferred.
pub const REG_SCREEN_MASK2_X: u32 = 0xe149;
pub const REG_SCREEN_MASK2_X_WIDTH: u32 = 32;
/// Raster engine register `screen_mask2_y`: read/write, 32-bit; reset unknown; inferred.
pub const REG_SCREEN_MASK2_Y: u32 = 0xe14a;
pub const REG_SCREEN_MASK2_Y_WIDTH: u32 = 32;
/// Raster engine register `screen_mask3_x`: read/write, 32-bit; reset unknown; inferred.
pub const REG_SCREEN_MASK3_X: u32 = 0xe14b;
pub const REG_SCREEN_MASK3_X_WIDTH: u32 = 32;
/// Raster engine register `screen_mask3_y`: read/write, 32-bit; reset unknown; inferred.
pub const REG_SCREEN_MASK3_Y: u32 = 0xe14c;
pub const REG_SCREEN_MASK3_Y_WIDTH: u32 = 32;
/// Raster engine register `screen_mask4_x`: read/write, 32-bit; reset unknown; inferred.
pub const REG_SCREEN_MASK4_X: u32 = 0xe14d;
pub const REG_SCREEN_MASK4_X_WIDTH: u32 = 32;
/// Raster engine register `screen_mask4_y`: read/write, 32-bit; reset unknown; inferred.
pub const REG_SCREEN_MASK4_Y: u32 = 0xe14e;
pub const REG_SCREEN_MASK4_Y_WIDTH: u32 = 32;
/// Raster engine register `window_mode`: read/write, 32-bit; reset unknown; inferred.
pub const REG_WINDOW_MODE: u32 = 0xe14f;
pub const REG_WINDOW_MODE_WIDTH: u32 = 32;
/// Raster engine register `xfer_size`: read/write, 32-bit; reset unknown; inferred.
pub const REG_XFER_SIZE: u32 = 0xe153;
pub const REG_XFER_SIZE_WIDTH: u32 = 32;
/// Raster engine register `xfer_zoom_init`: read/write, 32-bit; reset unknown; inferred.
pub const REG_XFER_ZOOM_INIT: u32 = 0xe154;
pub const REG_XFER_ZOOM_INIT_WIDTH: u32 = 32;
/// Raster engine register `xfer_zoom_step`: read/write, 32-bit; reset unknown; inferred.
pub const REG_XFER_ZOOM_STEP: u32 = 0xe155;
pub const REG_XFER_ZOOM_STEP_WIDTH: u32 = 32;
/// Raster engine register `xfer_mask_lo`: read/write, 32-bit; reset unknown; inferred.
pub const REG_XFER_MASK_LO: u32 = 0xe156;
pub const REG_XFER_MASK_LO_WIDTH: u32 = 32;
/// Raster engine register `xfer_mask_hi`: read/write, 32-bit; reset unknown; inferred.
pub const REG_XFER_MASK_HI: u32 = 0xe157;
pub const REG_XFER_MASK_HI_WIDTH: u32 = 32;
/// Raster engine register `xfer_counters`: read, 32-bit; reset unknown; inferred.
pub const REG_XFER_COUNTERS: u32 = 0xe158;
pub const REG_XFER_COUNTERS_WIDTH: u32 = 32;
/// Raster engine register `xfer_mode`: read/write, 32-bit; reset unknown; inferred.
pub const REG_XFER_MODE: u32 = 0xe159;
pub const REG_XFER_MODE_WIDTH: u32 = 32;
/// Raster engine register `line_stipple_pattern`: read/write, 32-bit; reset unknown; inferred.
pub const REG_LINE_STIPPLE_PATTERN: u32 = 0xe15a;
pub const REG_LINE_STIPPLE_PATTERN_WIDTH: u32 = 32;
/// Raster engine register `line_stipple_repeat`: read/write, 32-bit; reset unknown; inferred.
pub const REG_LINE_STIPPLE_REPEAT: u32 = 0xe15b;
pub const REG_LINE_STIPPLE_REPEAT_WIDTH: u32 = 32;
/// Raster engine register `device_addr`: read/write, 32-bit; reset unknown; inferred.
pub const REG_DEVICE_ADDR: u32 = 0xe15c;
pub const REG_DEVICE_ADDR_WIDTH: u32 = 32;
/// Raster engine register `device_data`: read/write, 32-bit; reset unknown; inferred.
pub const REG_DEVICE_DATA: u32 = 0xe15d;
pub const REG_DEVICE_DATA_WIDTH: u32 = 32;
/// Raster engine register `status`: read, 32-bit; reset unknown; inferred.
pub const REG_STATUS: u32 = 0xe15e;
pub const REG_STATUS_WIDTH: u32 = 32;
/// Raster engine register `toggle_context`: write, 32-bit; reset unknown; inferred.
pub const REG_TOGGLE_CONTEXT: u32 = 0xe15f;
pub const REG_TOGGLE_CONTEXT_WIDTH: u32 = 32;

/// Values of `opcode` in `Instr` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum InstrOpcode {
    /// established.
    AreaLeftToRight,
    /// established.
    AreaRightToLeft,
    /// established.
    Aaline,
    /// established.
    Point,
    /// established.
    Line,
    /// established.
    Block,
    /// A value the notes do not name.
    Other(u8),
}

impl InstrOpcode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::AreaLeftToRight,
            0x1 => Self::AreaRightToLeft,
            0x2 => Self::Aaline,
            0x4 => Self::Point,
            0x5 => Self::Line,
            0x8 => Self::Block,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::AreaLeftToRight => 0x0,
            Self::AreaRightToLeft => 0x1,
            Self::Aaline => 0x2,
            Self::Point => 0x4,
            Self::Line => 0x5,
            Self::Block => 0x8,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `device` in `XferControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum XferControlDevice {
    /// inferred.
    Framebuffer,
    /// inferred.
    TextureMemory,
    /// A value the notes do not name.
    Other(u8),
}

impl XferControlDevice {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Framebuffer,
            0x1 => Self::TextureMemory,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Framebuffer => 0x0,
            Self::TextureMemory => 0x1,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `block_type` in `FillMode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum FillModeBlockType {
    /// inferred.
    GlyphData,
    /// inferred.
    StippledBlock,
    /// inferred.
    PioRead,
    /// inferred.
    PioWrite,
    /// inferred.
    DmaRead,
    /// inferred.
    DmaWrite,
    /// A value the notes do not name.
    Other(u8),
}

impl FillModeBlockType {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::GlyphData,
            0x1 => Self::StippledBlock,
            0x2 => Self::PioRead,
            0x3 => Self::PioWrite,
            0x4 => Self::DmaRead,
            0x5 => Self::DmaWrite,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::GlyphData => 0x0,
            Self::StippledBlock => 0x1,
            Self::PioRead => 0x2,
            Self::PioWrite => 0x3,
            Self::DmaRead => 0x4,
            Self::DmaWrite => 0x5,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `format` in `XferMode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum XferModeFormat {
    /// inferred.
    ColorIndex,
    /// inferred.
    Stencil,
    /// inferred.
    Depth,
    /// inferred.
    Rgb,
    /// inferred.
    Rgba,
    /// A value the notes do not name.
    Other(u8),
}

impl XferModeFormat {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::ColorIndex,
            0x1 => Self::Stencil,
            0x2 => Self::Depth,
            0x7 => Self::Rgb,
            0x8 => Self::Rgba,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::ColorIndex => 0x0,
            Self::Stencil => 0x1,
            Self::Depth => 0x2,
            Self::Rgb => 0x7,
            Self::Rgba => 0x8,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `instr` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Instr(u32);

impl Instr {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn opcode(self) -> InstrOpcode {
        InstrOpcode::from_bits(self.0 & 0xf)
    }

    /// Bit 4, established.
    pub const fn setup(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }
}

/// The `xfer_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct XferControl(u32);

impl XferControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn dma_start(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, inferred.
    pub const fn pio_start(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, inferred.
    pub const fn device(self) -> XferControlDevice {
        XferControlDevice::from_bits((self.0 >> 2) & 0x1)
    }

    /// Bit 3, inferred.
    pub const fn read(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, inferred.
    pub const fn busy(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }
}

/// The `fill_mode` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FillMode(u32);

impl FillMode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn poly_stipple(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 3, inferred.
    pub const fn glyph_stipple(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, inferred.
    pub const fn glyph_opaque(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, inferred.
    pub const fn line_stipple(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, inferred.
    pub const fn line_opaque(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, inferred.
    pub const fn line_advance(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 10, inferred.
    pub const fn skip_last_pixel(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bit 20, inferred.
    pub const fn fast_fill(self) -> bool {
        (self.0 >> 20) & 1 != 0
    }

    /// Bits 24:22, inferred.
    pub const fn block_type(self) -> FillModeBlockType {
        FillModeBlockType::from_bits((self.0 >> 22) & 0x7)
    }
}

/// The `config` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Config(u32);

impl Config {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn target_raster(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 3, inferred.
    pub const fn y_flip(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, inferred.
    pub const fn line_round(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }
}

/// The `aaline_config` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct AalineConfig(u32);

impl AalineConfig {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn smooth(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bits 7:1, inferred.
    pub const fn width(self) -> u32 {
        (self.0 >> 1) & 0x7f
    }
}

/// The `window_mode` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct WindowMode(u32);

impl WindowMode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn enable1(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, inferred.
    pub const fn enable2(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, inferred.
    pub const fn enable3(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, inferred.
    pub const fn enable4(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, inferred.
    pub const fn inside1(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, inferred.
    pub const fn inside2(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, inferred.
    pub const fn inside3(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, inferred.
    pub const fn inside4(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }
}

/// The `xfer_size` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct XferSize(u32);

impl XferSize {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, inferred.
    pub const fn width(self) -> u32 {
        self.0 & 0xffff
    }

    /// Bits 31:16, inferred.
    pub const fn lines(self) -> u32 {
        self.0 >> 16
    }
}

/// The `xfer_mode` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct XferMode(u32);

impl XferMode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, inferred.
    pub const fn comp_type(self) -> u32 {
        self.0 & 0xf
    }

    /// Bits 7:4, inferred.
    pub const fn format(self) -> XferModeFormat {
        XferModeFormat::from_bits((self.0 >> 4) & 0xf)
    }

    /// Bits 10:8, inferred.
    pub const fn begin_skip_bytes(self) -> u32 {
        (self.0 >> 8) & 0x7
    }

    /// Bits 13:11, inferred.
    pub const fn begin_skip_bits(self) -> u32 {
        (self.0 >> 11) & 0x7
    }

    /// Bits 16:14, inferred.
    pub const fn stride_skip_bytes(self) -> u32 {
        (self.0 >> 14) & 0x7
    }

    /// Bit 17, inferred.
    pub const fn flag17(self) -> bool {
        (self.0 >> 17) & 1 != 0
    }

    /// Bit 18, inferred.
    pub const fn flag18(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bit 19, inferred.
    pub const fn zoom(self) -> bool {
        (self.0 >> 19) & 1 != 0
    }

    /// Bit 20, inferred.
    pub const fn decimate(self) -> bool {
        (self.0 >> 20) & 1 != 0
    }

    /// Bit 22, inferred.
    pub const fn rgb_order(self) -> bool {
        (self.0 >> 22) & 1 != 0
    }

    /// Bit 23, inferred.
    pub const fn opaque(self) -> bool {
        (self.0 >> 23) & 1 != 0
    }
}

/// The `status` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Status(u32);

impl Status {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, inferred.
    pub const fn chip_count(self) -> u32 {
        self.0 & 0x3
    }

    /// Bits 3:2, inferred.
    pub const fn board_index(self) -> u32 {
        (self.0 >> 2) & 0x3
    }

    /// Bits 7:4, inferred.
    pub const fn revision(self) -> u32 {
        (self.0 >> 4) & 0xf
    }

    /// Bit 8, inferred.
    pub const fn fifo_empty(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, inferred.
    pub const fn raster_busy(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 10, inferred.
    pub const fn pixel_busy(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_re_instr_15() {
        let w = Instr::new(0x15);
        assert_eq!(w.opcode().bits(), 5, "opcode");
        assert_eq!(w.setup() as u32, 1, "setup");
    }

    #[test]
    fn testvec_re_instr_18() {
        let w = Instr::new(0x18);
        assert_eq!(w.opcode().bits(), 8, "opcode");
        assert_eq!(w.setup() as u32, 1, "setup");
    }

    #[test]
    fn testvec_re_fill_mode_418008() {
        let w = FillMode::new(0x418008);
        assert_eq!(w.glyph_stipple() as u32, 1, "glyph_stipple");
        assert_eq!(w.block_type().bits(), 1, "block_type");
    }

    #[test]
    fn testvec_re_xfer_mode_40080() {
        let w = XferMode::new(0x40080);
        assert_eq!(w.comp_type(), 0, "comp_type");
        assert_eq!(w.format().bits(), 8, "format");
        assert_eq!(w.flag18() as u32, 1, "flag18");
        assert_eq!(w.stride_skip_bytes(), 0, "stride_skip_bytes");
    }
}
