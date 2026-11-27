// @generated from devices/ge11/registers.toml by defs-gen - do not edit, change the source
// SPDX-License-Identifier: BSD-3-Clause
// defs-gen 4
// input sha256 817914a4ae5a04440d0c6b7b9face4bb4b60c4761b20164000e4f1fc915ec240
// geometry engine control registers for the Impact graphics subsystem
#![allow(dead_code)]
#![allow(clippy::doc_markdown)]
#![cfg_attr(rustfmt, rustfmt_skip)]

/// (inferred)
pub mod exec_control {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd000;
    pub mod reset { // bits 7:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod single_step { // bits 6:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod breakpoint_enable { // bits 5:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod latency3 { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod go { // bits 0:0, inferred
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
pub mod breakpoint_pc {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd001;
}
/// (inferred)
pub mod ramscan_control {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd002;
    pub mod scan_mode { // bits 18:18, inferred
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod fast_mode { // bits 17:17, inferred
        pub const SHIFT: u32 = 17;
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
pub mod wsync_fifo_control {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd003;
    pub mod watermark { // bits 7:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod disable { // bits 0:0, inferred
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
pub mod diag_select {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd004;
    pub mod read_enable { // bits 18:18, inferred
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod input_select { // bits 8:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod breakpoint_stall { // bits 5:5, inferred
        pub const SHIFT: u32 = 5;
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
pub mod enable_mask {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd005;
}
/// (inferred)
pub mod ofifo_tag_config {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd006;
}
/// (inferred)
pub mod ucode_error {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd007;
}
/// (inferred)
pub mod ofifo0_a_status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd008;
}
/// (inferred)
pub mod ofifo0_b_status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd009;
}
/// (inferred)
pub mod ofifo1_a_status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd00a;
}
/// (inferred)
pub mod ofifo1_b_status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd00b;
}
/// (inferred)
pub mod ofifo2_a_status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd00c;
}
/// (inferred)
pub mod ofifo2_b_status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd00d;
}
/// (inferred)
pub mod ofifo_control {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0xd00e;
    pub mod route_to_host_if { // bits 8:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod watermark { // bits 7:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod diag_mode { // bits 0:0, inferred
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
pub const OFIFO_WATERMARK_DEFAULT: u32 = 0x38; // inferred
