// generated from gr4 7fc7b2b630eb HQ3_DECODE.h - do not edit, regenerate in gr4
//!
//! Host interface and command processor registers of the Impact graphics subsystem.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// inferred.
pub const CFIFO_HIWATER_DEFAULT: u32 = 40;
/// inferred.
pub const CFIFO_LOWATER_DEFAULT: u32 = 20;
/// inferred.
pub const BFIFO_MAX: u32 = 16;
/// established.
pub const TLB_ENTRIES: u32 = 32;

/// Host interface register `pc`: read/write, 32-bit; reset unknown; inferred.
pub const REG_PC: u32 = 0x1800;
pub const REG_PC_WIDTH: u32 = 32;
/// Host interface register `cp_data`: read/write, 32-bit; reset unknown; inferred.
pub const REG_CP_DATA: u32 = 0x1c00;
pub const REG_CP_DATA_WIDTH: u32 = 32;
/// Host interface register `rss_diag`: read/write, 32-bit; reset unknown; inferred.
pub const REG_RSS_DIAG: u32 = 0x3000;
pub const REG_RSS_DIAG_WIDTH: u32 = 32;
/// Host interface register `config`: read/write, 32-bit; reset unknown; inferred.
pub const REG_CONFIG: u32 = 0x4000;
pub const REG_CONFIG_WIDTH: u32 = 32;
/// Host interface register `flag_ctx`: read/write, 32-bit; reset unknown; inferred.
pub const REG_FLAG_CTX: u32 = 0x4001;
pub const REG_FLAG_CTX_WIDTH: u32 = 32;
/// Host interface register `flag_set_priv`: write, 32-bit; reset unknown; inferred.
pub const REG_FLAG_SET_PRIV: u32 = 0x4002;
pub const REG_FLAG_SET_PRIV_WIDTH: u32 = 32;
/// Host interface register `flag_clr_priv`: write, 32-bit; reset unknown; inferred.
pub const REG_FLAG_CLR_PRIV: u32 = 0x4003;
pub const REG_FLAG_CLR_PRIV_WIDTH: u32 = 32;
/// Host interface register `flag_enab_set`: write, 32-bit; reset unknown; inferred.
pub const REG_FLAG_ENAB_SET: u32 = 0x4004;
pub const REG_FLAG_ENAB_SET_WIDTH: u32 = 32;
/// Host interface register `flag_enab_clr`: write, 32-bit; reset unknown; inferred.
pub const REG_FLAG_ENAB_CLR: u32 = 0x4005;
pub const REG_FLAG_ENAB_CLR_WIDTH: u32 = 32;
/// Host interface register `intr_enab_set`: write, 32-bit; reset unknown; inferred.
pub const REG_INTR_ENAB_SET: u32 = 0x4006;
pub const REG_INTR_ENAB_SET_WIDTH: u32 = 32;
/// Host interface register `intr_enab_clr`: write, 32-bit; reset unknown; inferred.
pub const REG_INTR_ENAB_CLR: u32 = 0x4007;
pub const REG_INTR_ENAB_CLR_WIDTH: u32 = 32;
/// Host interface register `cfifo_hiwater`: read/write, 32-bit; reset unknown; inferred.
pub const REG_CFIFO_HIWATER: u32 = 0x4008;
pub const REG_CFIFO_HIWATER_WIDTH: u32 = 32;
/// Host interface register `cfifo_lowater`: read/write, 32-bit; reset unknown; inferred.
pub const REG_CFIFO_LOWATER: u32 = 0x4009;
pub const REG_CFIFO_LOWATER_WIDTH: u32 = 32;
/// Host interface register `cfifo_delay`: read/write, 32-bit; reset unknown; inferred.
pub const REG_CFIFO_DELAY: u32 = 0x400a;
pub const REG_CFIFO_DELAY_WIDTH: u32 = 32;
/// Host interface register `dfifo_hiwater`: read/write, 32-bit; reset unknown; inferred.
pub const REG_DFIFO_HIWATER: u32 = 0x400b;
pub const REG_DFIFO_HIWATER_WIDTH: u32 = 32;
/// Host interface register `dfifo_lowater`: read/write, 32-bit; reset unknown; inferred.
pub const REG_DFIFO_LOWATER: u32 = 0x400c;
pub const REG_DFIFO_LOWATER_WIDTH: u32 = 32;
/// Host interface register `dfifo_delay`: read/write, 32-bit; reset unknown; inferred.
pub const REG_DFIFO_DELAY: u32 = 0x400d;
pub const REG_DFIFO_DELAY_WIDTH: u32 = 32;
/// Host interface register `ge0_diag_data`: read/write, 32-bit; reset unknown; inferred.
pub const REG_GE0_DIAG_DATA: u32 = 0x4010;
pub const REG_GE0_DIAG_DATA_WIDTH: u32 = 32;
/// Host interface register `ge0_diag_index`: read/write, 32-bit; reset unknown; inferred.
pub const REG_GE0_DIAG_INDEX: u32 = 0x4011;
pub const REG_GE0_DIAG_INDEX_WIDTH: u32 = 32;
/// Host interface register `ge1_diag_data`: read/write, 32-bit; reset unknown; inferred.
pub const REG_GE1_DIAG_DATA: u32 = 0x4012;
pub const REG_GE1_DIAG_DATA_WIDTH: u32 = 32;
/// Host interface register `ge1_diag_index`: read/write, 32-bit; reset unknown; inferred.
pub const REG_GE1_DIAG_INDEX: u32 = 0x4013;
pub const REG_GE1_DIAG_INDEX_WIDTH: u32 = 32;
/// Host interface register `ctx_switch`: write, 32-bit; reset unknown; inferred.
pub const REG_CTX_SWITCH: u32 = 0x4014;
pub const REG_CTX_SWITCH_WIDTH: u32 = 32;
/// Host interface register `cfifo_priv`: write, 64-bit; reset unknown; inferred.
pub const REG_CFIFO_PRIV: u32 = 0x4020;
pub const REG_CFIFO_PRIV_WIDTH: u32 = 64;
/// Host interface register `ctx_data`: read/write, 32-bit; reset unknown; inferred.
pub const REG_CTX_DATA: u32 = 0x4040;
pub const REG_CTX_DATA_WIDTH: u32 = 32;
/// Host interface register `bfifo_hiwater`: read/write, 32-bit; reset unknown; inferred.
pub const REG_BFIFO_HIWATER: u32 = 0x4042;
pub const REG_BFIFO_HIWATER_WIDTH: u32 = 32;
/// Host interface register `bfifo_lowater`: read/write, 32-bit; reset unknown; inferred.
pub const REG_BFIFO_LOWATER: u32 = 0x4043;
pub const REG_BFIFO_LOWATER_WIDTH: u32 = 32;
/// Host interface register `bfifo_delay`: read/write, 32-bit; reset unknown; inferred.
pub const REG_BFIFO_DELAY: u32 = 0x4044;
pub const REG_BFIFO_DELAY_WIDTH: u32 = 32;
/// Host interface register `gio_config`: read/write, 32-bit; reset unknown; inferred.
pub const REG_GIO_CONFIG: u32 = 0x4045;
pub const REG_GIO_CONFIG_WIDTH: u32 = 32;
/// Host interface register `reif_ctx`: read/write, 32-bit, 64 consecutive registers; reset unknown; inferred.
pub const REG_REIF_CTX: u32 = 0x4080;
pub const REG_REIF_CTX_WIDTH: u32 = 32;
pub const REG_REIF_CTX_COUNT: u32 = 64;
/// Host interface register `hag_ctx`: read/write, 32-bit, 128 consecutive registers; reset unknown; inferred.
pub const REG_HAG_CTX: u32 = 0x40c0;
pub const REG_HAG_CTX_WIDTH: u32 = 32;
pub const REG_HAG_CTX_COUNT: u32 = 128;
/// Host interface register `hif_ctx`: read/write, 32-bit, 64 consecutive registers; reset unknown; inferred.
pub const REG_HIF_CTX: u32 = 0x4140;
pub const REG_HIF_CTX_WIDTH: u32 = 32;
pub const REG_HIF_CTX_COUNT: u32 = 64;
/// Host interface register `gio_ctx`: read/write, 32-bit, 64 consecutive registers; reset unknown; inferred.
pub const REG_GIO_CTX: u32 = 0x4180;
pub const REG_GIO_CTX_WIDTH: u32 = 32;
pub const REG_GIO_CTX_COUNT: u32 = 64;
/// Host interface register `tlb_entries`: read/write, 32-bit, 32 consecutive registers; reset unknown; inferred.
pub const REG_TLB_ENTRIES: u32 = 0x4200;
pub const REG_TLB_ENTRIES_WIDTH: u32 = 32;
pub const REG_TLB_ENTRIES_COUNT: u32 = 32;
/// Host interface register `tlb_fault_page`: read, 32-bit; reset unknown; inferred.
pub const REG_TLB_FAULT_PAGE: u32 = 0x4220;
pub const REG_TLB_FAULT_PAGE_WIDTH: u32 = 32;
/// Host interface register `tlb_valid`: read/write, 32-bit; reset unknown; inferred.
pub const REG_TLB_VALID: u32 = 0x4240;
pub const REG_TLB_VALID_WIDTH: u32 = 32;
/// Host interface register `status`: read, 32-bit; reset unknown; inferred.
pub const REG_STATUS: u32 = 0xc000;
pub const REG_STATUS_WIDTH: u32 = 32;
/// Host interface register `fifo_status`: read, 32-bit; reset unknown; inferred.
pub const REG_FIFO_STATUS: u32 = 0xc001;
pub const REG_FIFO_STATUS_WIDTH: u32 = 32;
/// Host interface register `flag_set`: write, 32-bit; reset unknown; inferred.
pub const REG_FLAG_SET: u32 = 0xc002;
pub const REG_FLAG_SET_WIDTH: u32 = 32;
/// Host interface register `flag_clr`: write, 32-bit; reset unknown; inferred.
pub const REG_FLAG_CLR: u32 = 0xc003;
pub const REG_FLAG_CLR_WIDTH: u32 = 32;
/// Host interface register `rebus_read_hi`: read, 32-bit; reset unknown; inferred.
pub const REG_REBUS_READ_HI: u32 = 0xc004;
pub const REG_REBUS_READ_HI_WIDTH: u32 = 32;
/// Host interface register `rebus_read_lo`: read, 32-bit; reset unknown; inferred.
pub const REG_REBUS_READ_LO: u32 = 0xc005;
pub const REG_REBUS_READ_LO_WIDTH: u32 = 32;
/// Host interface register `cfifo_user`: write, 64-bit; reset unknown; inferred.
pub const REG_CFIFO_USER: u32 = 0xc020;
pub const REG_CFIFO_USER_WIDTH: u32 = 64;
/// Host interface register `gio_status`: read, 32-bit; reset unknown; inferred.
pub const REG_GIO_STATUS: u32 = 0xc040;
pub const REG_GIO_STATUS_WIDTH: u32 = 32;
/// Host interface register `dma_busy`: read, 32-bit; reset unknown; inferred.
pub const REG_DMA_BUSY: u32 = 0xc041;
pub const REG_DMA_BUSY_WIDTH: u32 = 32;
/// Host interface register `cfifo_gl`: write, 64-bit; reset unknown; inferred.
pub const REG_CFIFO_GL: u32 = 0xd020;
pub const REG_CFIFO_GL_WIDTH: u32 = 64;

/// Values of `diag_route` in `Config` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ConfigDiagRoute {
    /// inferred.
    Ge0,
    /// inferred.
    Ge1,
    /// A value the notes do not name.
    Other(u8),
}

impl ConfigDiagRoute {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x2 => Self::Ge0,
            0x3 => Self::Ge1,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Ge0 => 0x2,
            Self::Ge1 => 0x3,
            Self::Other(v) => v as u32,
        }
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

    /// Bit 2, inferred.
    pub const fn big_endian(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, inferred.
    pub const fn ucode_stall(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bits 5:4, inferred.
    pub const fn diag_route(self) -> ConfigDiagRoute {
        ConfigDiagRoute::from_bits((self.0 >> 4) & 0x3)
    }

    /// Bit 7, inferred.
    pub const fn diag_loopback(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }
}

/// The `gio_config` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GioConfig(u32);

impl GioConfig {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn host_big_endian(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, inferred.
    pub const fn display_bus_big_endian(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, inferred.
    pub const fn ext_pipe_register(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, inferred.
    pub const fn tlb_update(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 6, inferred.
    pub const fn bus_bypass(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 12, inferred.
    pub const fn fifo_high_water(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }
}

/// The `flag_set` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FlagSet(u32);

impl FlagSet {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn retrace(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, inferred.
    pub const fn cfifo_lowater(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, inferred.
    pub const fn cfifo_hiwater(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, inferred.
    pub const fn dfifo_lowater(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, inferred.
    pub const fn dma_done(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 6, inferred.
    pub const fn context_loaded(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, inferred.
    pub const fn tlb_miss(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, inferred.
    pub const fn error(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 10, inferred.
    pub const fn buffer_swap(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bit 16, inferred.
    pub const fn done(self) -> bool {
        (self.0 >> 16) & 1 != 0
    }

    /// Bit 17, inferred.
    pub const fn ge_data(self) -> bool {
        (self.0 >> 17) & 1 != 0
    }

    /// Bit 18, inferred.
    pub const fn ge_diag(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bit 19, inferred.
    pub const fn context_saved(self) -> bool {
        (self.0 >> 19) & 1 != 0
    }
}

/// The `fifo_status` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FifoStatus(u32);

impl FifoStatus {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 6:0, inferred.
    pub const fn cfifo_depth(self) -> u32 {
        self.0 & 0x7f
    }

    /// Bits 14:7, inferred.
    pub const fn cfifo_valid(self) -> u32 {
        (self.0 >> 7) & 0xff
    }

    /// Bits 21:15, inferred.
    pub const fn dfifo_depth(self) -> u32 {
        (self.0 >> 15) & 0x7f
    }

    /// Bits 28:22, inferred.
    pub const fn cfifo_hiwater_mark(self) -> u32 {
        (self.0 >> 22) & 0x7f
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

    /// Bit 0, inferred.
    pub const fn commands_done(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, inferred.
    pub const fn pipe_idle(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 3, inferred.
    pub const fn cfifo_above_high(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, inferred.
    pub const fn cfifo_below_low(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 7, inferred.
    pub const fn dfifo_above_high(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, inferred.
    pub const fn dfifo_below_low(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }
}

/// The `gio_status` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GioStatus(u32);

impl GioStatus {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 4:0, inferred.
    pub const fn bfifo_depth(self) -> u32 {
        self.0 & 0x1f
    }

    /// Bit 5, inferred.
    pub const fn display_bus_busy(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }
}

/// The `dma_busy` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DmaBusy(u32);

impl DmaBusy {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn sync(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, inferred.
    pub const fn host_if(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, inferred.
    pub const fn cfifo(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, inferred.
    pub const fn cd(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, inferred.
    pub const fn raster_if(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 9, inferred.
    pub const fn master_dma(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 11, inferred.
    pub const fn raster_dma(self) -> bool {
        (self.0 >> 11) & 1 != 0
    }

    /// Bit 12, inferred.
    pub const fn address_gen_dma(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_hq_config_8e() {
        let w = Config::new(0x8e);
        assert_eq!(w.big_endian() as u32, 1, "big_endian");
        assert_eq!(w.ucode_stall() as u32, 1, "ucode_stall");
        assert_eq!(w.diag_route().bits(), 0, "diag_route");
        assert_eq!(w.diag_loopback() as u32, 1, "diag_loopback");
    }

    #[test]
    fn testvec_hq_gio_config_f() {
        let w = GioConfig::new(0xf);
        assert_eq!(w.host_big_endian() as u32, 1, "host_big_endian");
        assert_eq!(w.display_bus_big_endian() as u32, 1, "display_bus_big_endian");
        assert_eq!(w.ext_pipe_register() as u32, 1, "ext_pipe_register");
        assert_eq!(w.tlb_update() as u32, 1, "tlb_update");
        assert_eq!(w.bus_bypass() as u32, 0, "bus_bypass");
        assert_eq!(w.fifo_high_water() as u32, 0, "fifo_high_water");
    }
}
