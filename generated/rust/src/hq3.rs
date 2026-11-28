// @generated from devices/hq3/registers.toml by defs-gen - do not edit, change the source
// SPDX-License-Identifier: BSD-3-Clause
// defs-gen 4
// input sha256 3465678c224d844941a482f4b8ee2a06a5950f4d61f2a88408337bb52a820fd8
// host interface and command processor registers for the Impact graphics subsystem
#![allow(dead_code)]
#![allow(clippy::doc_markdown)]
#![cfg_attr(rustfmt, rustfmt_skip)]

/// (inferred)
pub mod pc {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x1800;
}
/// (inferred)
pub mod cp_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x1c00;
}
/// (inferred)
pub mod rss_diag {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x3000;
}
/// (inferred)
pub mod config {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4000;
    pub mod diag_loopback { // bits 7:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod diag_route { // bits 5:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const GE0: u32 = 2; // inferred
        pub const GE1: u32 = 3; // inferred
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
    pub mod ucode_stall { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod big_endian { // bits 2:2, inferred
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
/// (inferred)
pub mod flag_ctx {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4001;
}
/// (established)
pub mod flag_set_priv {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4002;
}
/// (inferred)
pub mod flag_clr_priv {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4003;
}
/// (established)
pub mod flag_enab_set {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4004;
}
/// (inferred)
pub mod flag_enab_clr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4005;
}
/// (established)
pub mod intr_enab_set {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4006;
    pub mod dfifo_below_low { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dfifo_above_high { // bits 30:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cfifo_below_low { // bits 27:27, established
        pub const SHIFT: u32 = 27;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cfifo_above_high { // bits 26:26, established
        pub const SHIFT: u32 = 26;
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
pub mod intr_enab_clr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4007;
}
/// (inferred)
pub mod cfifo_hiwater {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4008;
}
/// (inferred)
pub mod cfifo_lowater {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4009;
}
/// (inferred)
pub mod cfifo_delay {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x400a;
}
/// (inferred)
pub mod dfifo_hiwater {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x400b;
}
/// (inferred)
pub mod dfifo_lowater {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x400c;
}
/// (inferred)
pub mod dfifo_delay {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x400d;
}
/// (inferred)
pub mod ge0_diag_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4010;
}
/// (inferred)
pub mod ge0_diag_index {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4011;
}
/// (inferred)
pub mod ge1_diag_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4012;
}
/// (inferred)
pub mod ge1_diag_index {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4013;
}
/// (inferred)
pub mod ctx_switch {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4014;
}
/// (inferred)
pub mod cfifo_priv {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x4020;
}
/// (inferred)
pub mod ctx_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4040;
}
/// (inferred)
pub mod bfifo_hiwater {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4042;
}
/// (inferred)
pub mod bfifo_lowater {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4043;
}
/// (inferred)
pub mod bfifo_delay {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4044;
}
/// (inferred)
pub mod gio_config {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4045;
    pub mod fifo_high_water { // bits 12:12, inferred
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bus_bypass { // bits 6:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod tlb_update { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod ext_pipe_register { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod display_bus_big_endian { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod host_big_endian { // bits 0:0, inferred
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
/// Formerly reif_ctx. (inferred)
pub mod reg_4080 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4080;
    pub const COUNT: u32 = 64;
    pub const STRIDE: u64 = 1;
}
/// Formerly hag_ctx. (inferred)
pub mod reg_40c0 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x40c0;
    pub const COUNT: u32 = 128;
    pub const STRIDE: u64 = 1;
}
/// Formerly hif_ctx. (inferred)
pub mod reg_4140 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4140;
    pub const COUNT: u32 = 64;
    pub const STRIDE: u64 = 1;
}
/// (inferred)
pub mod gio_ctx {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4180;
    pub const COUNT: u32 = 64;
    pub const STRIDE: u64 = 1;
}
/// (inferred)
pub mod tlb_entries {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4200;
    pub const COUNT: u32 = 32;
    pub const STRIDE: u64 = 1;
}
/// (inferred)
pub mod tlb_fault_page {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4220;
}
/// (inferred)
pub mod tlb_valid {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x4240;
}
/// (inferred)
pub mod status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xc000;
    pub mod dma_busy { // bits 12:12, inferred
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dfifo_below_low { // bits 8:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dfifo_above_high { // bits 7:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cfifo_below_low { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cfifo_above_high { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pipe_idle { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod commands_done { // bits 0:0, inferred
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
pub mod fifo_status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xc001;
    pub mod cfifo_hiwater_mark { // bits 28:22, inferred
        pub const SHIFT: u32 = 22;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dfifo_depth { // bits 21:15, inferred
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cfifo_valid { // bits 14:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cfifo_depth { // bits 6:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod flag_set {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xc002;
    pub mod context_saved { // bits 19:19, inferred
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod ge_diag { // bits 18:18, inferred
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod ge_data { // bits 17:17, inferred
        pub const SHIFT: u32 = 17;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod done { // bits 16:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_access_or_stack_overflow { // bits 15:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cfifo_privilege_violation { // bits 14:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_address_error { // bits 13:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod buffer_swap { // bits 10:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod ucode_error { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod tlb_miss { // bits 7:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod context_loaded { // bits 6:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma_done { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dfifo_lowater { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cfifo_hiwater { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cfifo_lowater { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod retrace { // bits 0:0, inferred
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
pub mod flag_clr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xc003;
}
/// Formerly rebus_read_hi. (inferred)
pub mod reg_c004 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xc004;
}
/// Formerly rebus_read_lo. (inferred)
pub mod reg_c005 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xc005;
}
/// (inferred)
pub mod cfifo_user {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0xc020;
}
/// (inferred)
pub mod gio_status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xc040;
    pub mod display_bus_busy { // bits 5:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bfifo_depth { // bits 4:0, inferred
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
/// (inferred)
pub mod dma_busy {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xc041;
    pub mod address_gen_dma { // bits 12:12, inferred
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod raster_dma { // bits 11:11, inferred
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod master_dma { // bits 9:9, inferred
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod raster_if { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_3 { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cfifo { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod host_if { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod sync { // bits 0:0, inferred
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
pub mod cfifo_gl {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0xd020;
}
/// Command-FIFO control word (bit 31 clear). The word every OpenGL library entry point stores first; the data words follow. (inferred)
pub mod cfifo_ctl {
    pub const WIDTH: u32 = 32;
    pub mod pixel { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pad_flag { // bits 30:30, inferred
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod convert { // bits 29:23, established
        pub const SHIFT: u32 = 23;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod kernel { // bits 22:22, established
        pub const SHIFT: u32 = 22;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod sync { // bits 21:21, established
        pub const SHIFT: u32 = 21;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod command { // bits 20:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bytes { // bits 7:0, established
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
/// Command-FIFO header of an inline data block (bit 31 set). The GL client sends pixel rows, bitmap images and geometry-engine tables this way. The byte  (inferred)
pub mod cfifo_inline {
    pub const WIDTH: u32 = 32;
    pub mod inline { // bits 31:31, inferred
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod first_offset { // bits 23:22, inferred
        pub const SHIFT: u32 = 22;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod length { // bits 19:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Context image, word 1 (the flags word of the host-memory image the kernel keeps per context). Bits 26 and 27 are read from the kernel's code that writ (unknown)
pub mod ctx_flags_word {
    pub const WIDTH: u32 = 32;
    pub mod first_load { // bits 31:31, inferred
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod nothing_saved { // bits 30:30, inferred
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod window_changed { // bits 29:29, inferred
        pub const SHIFT: u32 = 29;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_28 { // bits 28:28, unknown
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod xserver_shadow { // bits 27:27, established
        pub const SHIFT: u32 = 27;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod banks_changed { // bits 26:26, established
        pub const SHIFT: u32 = 26;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
pub const BFIFO_DELAY_DEFAULT: u32 = 0x64; // established
pub const BFIFO_HIWATER_DEFAULT: u32 = 0x8; // established
pub const BFIFO_LOWATER_DEFAULT: u32 = 0x2; // established
pub const BFIFO_MAX: u32 = 0x10; // inferred
pub const CFIFO_CLASS_DMA_BANK_HOST: u32 = 0x8; // inferred
pub const CFIFO_CLASS_DMA_BANK_SECOND: u32 = 0xa; // inferred
pub const CFIFO_CLASS_SYNC: u32 = 0xe; // inferred
pub const CFIFO_CMD_BITMAP: u32 = 0x94; // inferred
pub const CFIFO_CMD_CLEAN_UP_1D: u32 = 0xb0; // inferred
pub const CFIFO_CMD_CLEAN_UP_2D: u32 = 0xb1; // inferred
pub const CFIFO_CMD_CLEAR_COLOUR: u32 = 0x15; // inferred
pub const CFIFO_CMD_CLEAR_DEPTH: u32 = 0x4a; // inferred
pub const CFIFO_CMD_CLEAR_STENCIL: u32 = 0x4c; // inferred
pub const CFIFO_CMD_CONTEXT_CONFIG: u32 = 0x8c; // inferred
pub const CFIFO_CMD_CONTEXT_OPEN: u32 = 0x6; // inferred
pub const CFIFO_CMD_COPY_TILE: u32 = 0x8e; // inferred
pub const CFIFO_CMD_DETAIL_TEXTURE_FUNC: u32 = 0xec; // inferred
pub const CFIFO_CMD_DRAW_POINT_SIMPLE: u32 = 0xe0; // inferred
pub const CFIFO_CMD_END_GENERIC: u32 = 0xcc; // inferred
pub const CFIFO_CMD_EVAL_COORD_1D: u32 = 0xab; // inferred
pub const CFIFO_CMD_EVAL_COORD_2D: u32 = 0xac; // inferred
pub const CFIFO_CMD_EVAL_MESH_1D: u32 = 0xa9; // inferred
pub const CFIFO_CMD_EVAL_MESH_2D: u32 = 0xaa; // inferred
pub const CFIFO_CMD_FAST_COPY_PIXELS: u32 = 0x86; // inferred
pub const CFIFO_CMD_FILLER: u32 = 0xe1; // inferred
pub const CFIFO_CMD_FLUSH: u32 = 0x36; // inferred
pub const CFIFO_CMD_GENERAL_BITMAP: u32 = 0x91; // inferred
pub const CFIFO_CMD_GET_PIXELS: u32 = 0xdb; // inferred
pub const CFIFO_CMD_GE_MEMORY_READ: u32 = 0xfc; // inferred
pub const CFIFO_CMD_GE_MEMORY_WRITE_ADDR: u32 = 0xfb; // inferred
pub const CFIFO_CMD_GE_MEMORY_WRITE_CHUNK: u32 = 0xfd; // inferred
pub const CFIFO_CMD_GE_MEMORY_WRITE_END: u32 = 0xfa; // inferred
pub const CFIFO_CMD_GE_STATE_BLOCK: u32 = 0x80; // inferred
pub const CFIFO_CMD_GE_TABLE_LOAD: u32 = 0x82; // inferred
pub const CFIFO_CMD_INIT_COLOR_INDEX_CONTEXT: u32 = 0xa; // inferred
pub const CFIFO_CMD_INIT_COLOR_TABLE: u32 = 0x89; // inferred
pub const CFIFO_CMD_INIT_CONVOLVE_2D_STATE: u32 = 0x85; // inferred
pub const CFIFO_CMD_INIT_FAST_PATH: u32 = 0x88; // inferred
pub const CFIFO_CMD_INIT_FORMAT_VALUES: u32 = 0x9a; // inferred
pub const CFIFO_CMD_INIT_PIXEL_STATE_BLOCK: u32 = 0xcd; // inferred
pub const CFIFO_CMD_INIT_RGB_CONTEXT: u32 = 0x9; // inferred
pub const CFIFO_CMD_LOAD_RASTER_POS_INFO: u32 = 0xd7; // inferred
pub const CFIFO_CMD_NORMAL_3F: u32 = 0xdf; // inferred
pub const CFIFO_CMD_QUERY: u32 = 0xa2; // inferred
pub const CFIFO_CMD_RASTER_PAIRS: u32 = 0x7f; // inferred
pub const CFIFO_CMD_RASTER_TRIPLES: u32 = 0x7c; // inferred
pub const CFIFO_CMD_READ_TEXTURE: u32 = 0xf0; // inferred
pub const CFIFO_CMD_RESET_HISTOGRAM_MEMORY: u32 = 0x83; // inferred
pub const CFIFO_CMD_RESTORE_RASTER_STATE: u32 = 0xd3; // inferred
pub const CFIFO_CMD_RESTORE_TEXTURE_MODE: u32 = 0xea; // inferred
pub const CFIFO_CMD_RESULT_BEGIN: u32 = 0x61; // inferred
pub const CFIFO_CMD_RESULT_END: u32 = 0x62; // inferred
pub const CFIFO_CMD_RETURN_HISTOGRAM_PIO: u32 = 0x8b; // inferred
pub const CFIFO_CMD_SAVE_RASTER_STATE: u32 = 0xd2; // inferred
pub const CFIFO_CMD_SAVE_TEXTURE_MODE: u32 = 0xe9; // inferred
pub const CFIFO_CMD_SCHEDULE_SWAP: u32 = 0x37; // inferred
pub const CFIFO_CMD_SCISSOR: u32 = 0x39; // inferred
pub const CFIFO_CMD_SCISSOR_TEST_ENABLE: u32 = 0x6e; // inferred
pub const CFIFO_CMD_SELECTION_NAME_POP: u32 = 0xc6; // inferred
pub const CFIFO_CMD_SELECTION_NAME_PUSH: u32 = 0xc7; // inferred
pub const CFIFO_CMD_SELECTION_NAME_REPLACE: u32 = 0xc5; // inferred
pub const CFIFO_CMD_SELECTION_NAME_STACK_INIT: u32 = 0xc4; // inferred
pub const CFIFO_CMD_SELECT_ENTER: u32 = 0xcb; // inferred
pub const CFIFO_CMD_SELECT_EXIT: u32 = 0xc9; // inferred
pub const CFIFO_CMD_SEND_HISTOGRAM_FILLS: u32 = 0xd4; // inferred
pub const CFIFO_CMD_SEND_MAP_DATA_1D: u32 = 0xb2; // inferred
pub const CFIFO_CMD_SEND_MAP_DATA_2D: u32 = 0xb3; // inferred
pub const CFIFO_CMD_SEND_MINMAX_FILLS: u32 = 0xd5; // inferred
pub const CFIFO_CMD_SEND_PIXELS: u32 = 0x8d; // inferred
pub const CFIFO_CMD_SPIN_AND_RETURN: u32 = 0xa1; // inferred
pub const CFIFO_CMD_SWAP_TMESH: u32 = 0xdc; // inferred
pub const CFIFO_CMD_TEXTURE_LOAD: u32 = 0x9b; // inferred
pub const CFIFO_CMD_TEXTURE_LOAD_END: u32 = 0x9c; // inferred
pub const CFIFO_CMD_TEXTURE_OFF: u32 = 0xc; // inferred
pub const CFIFO_CMD_UPDATE_RASTER_POS: u32 = 0xd6; // inferred
pub const CFIFO_CMD_VALIDATE_BANKS: u32 = 0x98; // inferred
pub const CFIFO_CMD_VIEWPORT: u32 = 0x33; // inferred
pub const CFIFO_CMD_WINDOW_CLIP_PACKET: u32 = 0xe4; // inferred
pub const CFIFO_DELAY_DEFAULT: u32 = 0x64; // established
pub const CFIFO_HIWATER_DEFAULT: u32 = 0x28; // established
pub const CFIFO_LOWATER_DEFAULT: u32 = 0x14; // established
pub const CTX_BANK_WORD_FIRST: u32 = 0x10; // established
pub const CTX_BANK_WORD_SECOND: u32 = 0x11; // established
pub const CTX_XSERVER_WORD_FIRST: u32 = 0x12; // inferred
pub const CTX_XSERVER_WORD_LAST: u32 = 0x27; // inferred
pub const DFIFO_DELAY_DEFAULT: u32 = 0x64; // established
pub const DFIFO_HIWATER_DEFAULT: u32 = 0x28; // established
pub const DFIFO_LOWATER_DEFAULT: u32 = 0x14; // established
pub const INIT_BFIFO_DELAY: u32 = 0x8c; // established
pub const INIT_BFIFO_HIWATER: u32 = 0x6; // established
pub const INIT_BFIFO_LOWATER: u32 = 0x2; // established
pub const INIT_CFIFO_DELAY: u32 = 0x64; // established
pub const INIT_CFIFO_HIWATER: u32 = 0x20; // established
pub const INIT_CFIFO_LOWATER: u32 = 0x14; // established
pub const INIT_CONFIG: u32 = 0x7e8c; // established
pub const INIT_DFIFO_DELAY: u32 = 0xfff; // established
pub const INIT_DFIFO_HIWATER: u32 = 0x28; // established
pub const INIT_DFIFO_LOWATER: u32 = 0x14; // established
pub const INIT_FLAG_ENABLE: u32 = 0x11000f; // established
pub const INIT_GIO_CONFIG: u32 = 0x765b900f; // established
pub const INIT_INTR_ENABLE: u32 = 0x4400e200; // established
pub const TLB_ENTRIES: u32 = 0x20; // established
pub const TLB_PAGE_SHIFT: u32 = 0xc; // established
pub const TOKEN_CLIENT_GE_DMA_SETUP: u32 = 0x9d; // established
pub const TOKEN_CLIENT_POLYGON_STIPPLE_LOAD: u32 = 0x4e; // inferred
pub const TOKEN_READBACK_BEGIN: u32 = 0x96; // established
pub const TOKEN_READBACK_END: u32 = 0x97; // established
pub const TOKEN_SECOND_TEXMODE: u32 = 0x5f; // established
pub const TOKEN_TEX_BASE_WRITE: u32 = 0xeb; // established
pub const TOKEN_TEX_READ_SETUP: u32 = 0xe5; // established
pub const TOKEN_TEX_RESTORE_PREP: u32 = 0xe3; // established
pub const TOKEN_TEX_WRITE_SETUP: u32 = 0xd8; // established
pub const TOKEN_TRANSFER_DONE: u32 = 0xda; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn config_8e() {
        assert_eq!(config::big_endian::get(0x8e), 1);
        assert_eq!(config::ucode_stall::get(0x8e), 1);
        assert_eq!(config::diag_route::get(0x8e), 0);
        assert_eq!(config::diag_loopback::get(0x8e), 1);
    }

    #[test]
    fn config_7e8c() {
        assert_eq!(config::big_endian::get(0x7e8c), 1);
        assert_eq!(config::ucode_stall::get(0x7e8c), 1);
        assert_eq!(config::diag_route::get(0x7e8c), 0);
        assert_eq!(config::diag_loopback::get(0x7e8c), 1);
    }

    #[test]
    fn intr_enab_set_4400e200() {
        assert_eq!(intr_enab_set::cfifo_above_high::get(0x4400e200), 1);
        assert_eq!(intr_enab_set::cfifo_below_low::get(0x4400e200), 0);
        assert_eq!(intr_enab_set::dfifo_above_high::get(0x4400e200), 1);
        assert_eq!(intr_enab_set::dfifo_below_low::get(0x4400e200), 0);
    }

    #[test]
    fn gio_config_f() {
        assert_eq!(gio_config::host_big_endian::get(0xf), 1);
        assert_eq!(gio_config::display_bus_big_endian::get(0xf), 1);
        assert_eq!(gio_config::ext_pipe_register::get(0xf), 1);
        assert_eq!(gio_config::tlb_update::get(0xf), 1);
        assert_eq!(gio_config::bus_bypass::get(0xf), 0);
        assert_eq!(gio_config::fifo_high_water::get(0xf), 0);
    }

    #[test]
    fn gio_config_765b900f() {
        assert_eq!(gio_config::host_big_endian::get(0x765b900f), 1);
        assert_eq!(gio_config::display_bus_big_endian::get(0x765b900f), 1);
        assert_eq!(gio_config::ext_pipe_register::get(0x765b900f), 1);
        assert_eq!(gio_config::tlb_update::get(0x765b900f), 1);
        assert_eq!(gio_config::bus_bypass::get(0x765b900f), 0);
        assert_eq!(gio_config::fifo_high_water::get(0x765b900f), 1);
    }

    #[test]
    fn flag_set_e200() {
        assert_eq!(flag_set::ucode_error::get(0xe200), 1);
        assert_eq!(flag_set::dma_address_error::get(0xe200), 1);
        assert_eq!(flag_set::cfifo_privilege_violation::get(0xe200), 1);
        assert_eq!(flag_set::dma_access_or_stack_overflow::get(0xe200), 1);
    }

    #[test]
    fn cfifo_ctl_39000006() {
        assert_eq!(cfifo_ctl::bytes::get(0x39000006), 6);
        assert_eq!(cfifo_ctl::command::get(0x39000006), 0);
        assert_eq!(cfifo_ctl::sync::get(0x39000006), 0);
        assert_eq!(cfifo_ctl::kernel::get(0x39000006), 0);
        assert_eq!(cfifo_ctl::convert::get(0x39000006), 114);
        assert_eq!(cfifo_ctl::pad_flag::get(0x39000006), 0);
        assert_eq!(cfifo_ctl::pixel::get(0x39000006), 0);
    }

    #[test]
    fn cfifo_ctl_59000004() {
        assert_eq!(cfifo_ctl::bytes::get(0x59000004), 4);
        assert_eq!(cfifo_ctl::command::get(0x59000004), 0);
        assert_eq!(cfifo_ctl::sync::get(0x59000004), 0);
        assert_eq!(cfifo_ctl::kernel::get(0x59000004), 0);
        assert_eq!(cfifo_ctl::convert::get(0x59000004), 50);
        assert_eq!(cfifo_ctl::pad_flag::get(0x59000004), 1);
        assert_eq!(cfifo_ctl::pixel::get(0x59000004), 0);
    }

    #[test]
    fn ctx_flags_word_c000000() {
        assert_eq!(ctx_flags_word::banks_changed::get(0xc000000), 1);
        assert_eq!(ctx_flags_word::xserver_shadow::get(0xc000000), 1);
        assert_eq!(ctx_flags_word::field_28::get(0xc000000), 0);
        assert_eq!(ctx_flags_word::first_load::get(0xc000000), 0);
    }
}
