// generated from gr4 7fc7b2b630eb GE11_DECODE.h - do not edit, regenerate in gr4
//!
//! Geometry engine control registers of the Impact graphics subsystem.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// inferred.
pub const OFIFO_WATERMARK_DEFAULT: u32 = 56;

/// Geometry engine control register `exec_control`: read/write, 32-bit; reset unknown; inferred.
pub const REG_EXEC_CONTROL: u32 = 0xd000;
pub const REG_EXEC_CONTROL_WIDTH: u32 = 32;
/// Geometry engine control register `breakpoint_pc`: read/write, 32-bit; reset unknown; inferred.
pub const REG_BREAKPOINT_PC: u32 = 0xd001;
pub const REG_BREAKPOINT_PC_WIDTH: u32 = 32;
/// Geometry engine control register `ramscan_control`: read/write, 32-bit; reset unknown; inferred.
pub const REG_RAMSCAN_CONTROL: u32 = 0xd002;
pub const REG_RAMSCAN_CONTROL_WIDTH: u32 = 32;
/// Geometry engine control register `wsync_fifo_control`: read/write, 32-bit; reset unknown; inferred.
pub const REG_WSYNC_FIFO_CONTROL: u32 = 0xd003;
pub const REG_WSYNC_FIFO_CONTROL_WIDTH: u32 = 32;
/// Geometry engine control register `diag_select`: read/write, 32-bit; reset unknown; inferred.
pub const REG_DIAG_SELECT: u32 = 0xd004;
pub const REG_DIAG_SELECT_WIDTH: u32 = 32;
/// Geometry engine control register `enable_mask`: read/write, 32-bit; reset unknown; inferred.
pub const REG_ENABLE_MASK: u32 = 0xd005;
pub const REG_ENABLE_MASK_WIDTH: u32 = 32;
/// Geometry engine control register `ofifo_tag_config`: read/write, 32-bit; reset unknown; inferred.
pub const REG_OFIFO_TAG_CONFIG: u32 = 0xd006;
pub const REG_OFIFO_TAG_CONFIG_WIDTH: u32 = 32;
/// Geometry engine control register `ucode_error`: read/write, 32-bit; reset unknown; inferred.
pub const REG_UCODE_ERROR: u32 = 0xd007;
pub const REG_UCODE_ERROR_WIDTH: u32 = 32;
/// Geometry engine control register `ofifo0_a_status`: read, 32-bit; reset unknown; inferred.
pub const REG_OFIFO0_A_STATUS: u32 = 0xd008;
pub const REG_OFIFO0_A_STATUS_WIDTH: u32 = 32;
/// Geometry engine control register `ofifo0_b_status`: read, 32-bit; reset unknown; inferred.
pub const REG_OFIFO0_B_STATUS: u32 = 0xd009;
pub const REG_OFIFO0_B_STATUS_WIDTH: u32 = 32;
/// Geometry engine control register `ofifo1_a_status`: read, 32-bit; reset unknown; inferred.
pub const REG_OFIFO1_A_STATUS: u32 = 0xd00a;
pub const REG_OFIFO1_A_STATUS_WIDTH: u32 = 32;
/// Geometry engine control register `ofifo1_b_status`: read, 32-bit; reset unknown; inferred.
pub const REG_OFIFO1_B_STATUS: u32 = 0xd00b;
pub const REG_OFIFO1_B_STATUS_WIDTH: u32 = 32;
/// Geometry engine control register `ofifo2_a_status`: read, 32-bit; reset unknown; inferred.
pub const REG_OFIFO2_A_STATUS: u32 = 0xd00c;
pub const REG_OFIFO2_A_STATUS_WIDTH: u32 = 32;
/// Geometry engine control register `ofifo2_b_status`: read, 32-bit; reset unknown; inferred.
pub const REG_OFIFO2_B_STATUS: u32 = 0xd00d;
pub const REG_OFIFO2_B_STATUS_WIDTH: u32 = 32;
/// Geometry engine control register `ofifo_control`: read/write, 32-bit; reset unknown; inferred.
pub const REG_OFIFO_CONTROL: u32 = 0xd00e;
pub const REG_OFIFO_CONTROL_WIDTH: u32 = 32;

/// The `exec_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ExecControl(u32);

impl ExecControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn go(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 4, inferred.
    pub const fn latency3(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, inferred.
    pub const fn breakpoint_enable(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, inferred.
    pub const fn single_step(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, inferred.
    pub const fn reset(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }
}

/// The `ramscan_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct RamscanControl(u32);

impl RamscanControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 17, inferred.
    pub const fn fast_mode(self) -> bool {
        (self.0 >> 17) & 1 != 0
    }

    /// Bit 18, inferred.
    pub const fn scan_mode(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }
}

/// The `wsync_fifo_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct WsyncFifoControl(u32);

impl WsyncFifoControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn disable(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bits 7:4, inferred.
    pub const fn watermark(self) -> u32 {
        (self.0 >> 4) & 0xf
    }
}

/// The `diag_select` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DiagSelect(u32);

impl DiagSelect {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 5, inferred.
    pub const fn breakpoint_stall(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 8, inferred.
    pub const fn input_select(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 18, inferred.
    pub const fn read_enable(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }
}

/// The `ofifo_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct OfifoControl(u32);

impl OfifoControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn diag_mode(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bits 7:1, inferred.
    pub const fn watermark(self) -> u32 {
        (self.0 >> 1) & 0x7f
    }

    /// Bit 8, inferred.
    pub const fn route_to_host_if(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }
}
