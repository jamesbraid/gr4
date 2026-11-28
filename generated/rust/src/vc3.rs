// @generated from devices/vc3/registers.toml by defs-gen - do not edit, change the source
// SPDX-License-Identifier: BSD-3-Clause
// defs-gen 4
// input sha256 9374ab79c9a0a7b287f1a095365143c0192d4b6111d7b3907264f2a6cfe684e3
// VC3 video controller registers of the Impact graphics subsystem
#![allow(dead_code)]
#![allow(clippy::doc_markdown)]
#![cfg_attr(rustfmt, rustfmt_skip)]

/// Port: selects the numbered register that the data port reads or writes (a one-byte access at the start of the window). (established)
pub mod index {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x8;
}
/// Port: a three-byte write sets a numbered register in one store, the register number in bits 31:24 and the 16-bit value in bits 23:8. The kernel and th (established)
pub mod index_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x38;
    pub mod register { // bits 31:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod value { // bits 23:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Port: reads or writes the numbered register that the index port last selected, 16 bits at a time. The diagnostic reads a register back by writing its  (established)
pub mod data {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0xb0;
}
/// Port: SRAM access four bytes wide per bus transfer, written as a 64-bit store. The software defines it next to the 16-bit port and uses the same SRAM  (established)
pub mod ram64 {
    pub const WIDTH: u32 = 64;
    pub const OFFSET: u64 = 0x180;
}
/// Port: reads or writes the SRAM word addressed by ram_addr, 16 bits at a time (the kernel and the diagnostic load the timing tables, the cursor glyph a (established)
pub mod ram {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x190;
}
/// Video timing entry point, the main display frame table pointer. The diagnostic's register test writes walking patterns and expects them back unchanged (established)
pub mod vid_ep {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x0;
}
/// Cursor entry point. Walking-pattern read-back is expected. (established)
pub mod curs_ep {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1;
}
/// Hardware cursor x position. Walking-pattern read-back is expected. (established)
pub mod curs_x {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x2;
}
/// Hardware cursor y position. Walking-pattern read-back is expected. (established)
pub mod curs_y {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x3;
}
/// First display-ID entry point, with its own frame and line tables. (established)
pub mod did_ep1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x4;
}
/// Second display-ID entry point. (established)
pub mod did_ep2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x5;
}
/// Scan line length. Walking-pattern read-back is expected; the unit (dot clocks) is the name's reading and is inferred. (established)
pub mod scan_length {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x6;
}
/// SRAM address register for the ram port. Reads back the address it was loaded with. (established)
pub mod ram_addr {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x7;
}
/// Video timing frame table pointer. Walking-pattern read-back is expected. (established)
pub mod vt_frame_tbl_ptr {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x8;
}
/// Video timing line sequence pointer. Walking-pattern read-back is expected. (established)
pub mod vt_line_seq_ptr {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x9;
}
/// Video timing run count of lines. Walking-pattern read-back is expected. (established)
pub mod vt_lines_run {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0xa;
}
/// Current vertical line. The kernel reads it (the only numbered register it reads); the diagnostic's register test also writes walking patterns here and (established)
pub mod vert_line_count {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0xb;
}
/// Cursor table pointer. Walking-pattern read-back is expected. (established)
pub mod curs_tbl_ptr {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0xc;
}
/// Working cursor y line. Walking-pattern read-back is expected. (established)
pub mod working_curs_y {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0xd;
}
/// Current cursor x. Walking-pattern read-back is expected. (established)
pub mod cur_cursor_x {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0xe;
}
/// Register number the diagnostic's register test writes and reads back under the name unused. Its role is unknown. (inferred)
pub mod unused {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0xf;
}
/// Frame table pointer of the first display-ID entry point. Walking-pattern read-back is expected. (established)
pub mod did_frametab1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x10;
}
/// Line table pointer of the first display-ID entry point. Walking-pattern read-back is expected. (established)
pub mod did_linetab1 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x11;
}
/// Frame table pointer of the second display-ID entry point. Walking-pattern read-back is expected. (established)
pub mod did_frametab2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x12;
}
/// Line table pointer of the second display-ID entry point. Walking-pattern read-back is expected. (established)
pub mod did_linetab2 {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x13;
}
/// Cursor control. The standalone initialisation sets the function and display bits to turn the cursor on; the hosted build of the same routine writes th (established)
pub mod curs_control {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1d;
    pub mod glyph_64 { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod crosshair { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod display_enable { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod function_enable { // bits 0:0, established
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
/// Display control. The kernel keeps a shadow of the value, never reads the register back and writes it through the index_data port for retrace enable, b (established)
pub mod display_control {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1e;
    pub mod odd_field_timing { // bits 10:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod odd_field { // bits 9:9, inferred
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_only { // bits 8:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod interlaced { // bits 7:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod genlock { // bits 6:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod gensync { // bits 5:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod did_enable2 { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod did_enable1 { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod video_enable { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blackout { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod retrace_interrupt { // bits 0:0, inferred
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
/// Master configuration. The diagnostic's PLL set-up writes 1 and prints that the register is set to 1; the kernel selects this register to read the chip (established)
pub mod config {
    pub const WIDTH: u32 = 16;
    pub const OFFSET: u64 = 0x1f;
    pub mod revision { // bits 7:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod timing_error { // bits 5:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod did_error2 { // bits 4:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod did_error1 { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod cursor_error { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod slow_clock { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod unreset { // bits 0:0, inferred
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
pub const CURS_HOTSPOT_OFFSET: u32 = 0x1f; // inferred
pub const DCB_DEVICE: u32 = 0x8; // established
pub const SRAM_CURS_GLYPH: u32 = 0x400; // established
pub const SRAM_DID_FRAMETAB1: u32 = 0x500; // established
pub const SRAM_DID_FRAME_MAX_WORDS: u32 = 0x43e; // established
pub const SRAM_END: u32 = 0x2000; // inferred
pub const SRAM_FRAMETAB: u32 = 0x380; // established
pub const SRAM_FRAMETAB_WORDS: u32 = 0x80; // established
pub const SRAM_LINETAB: u32 = 0x0; // established
pub const SRAM_LINETAB_WORDS: u32 = 0x300; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn index_data_1d000100() {
        assert_eq!(index_data::register::get(0x1d000100), 29);
        assert_eq!(index_data::value::get(0x1d000100), 1);
    }

    #[test]
    fn curs_control_3() {
        assert_eq!(curs_control::function_enable::get(0x3), 1);
        assert_eq!(curs_control::display_enable::get(0x3), 1);
        assert_eq!(curs_control::crosshair::get(0x3), 0);
        assert_eq!(curs_control::glyph_64::get(0x3), 0);
    }

    #[test]
    fn display_control_1e() {
        assert_eq!(display_control::retrace_interrupt::get(0x1e), 0);
        assert_eq!(display_control::blackout::get(0x1e), 1);
        assert_eq!(display_control::video_enable::get(0x1e), 1);
        assert_eq!(display_control::did_enable1::get(0x1e), 1);
        assert_eq!(display_control::did_enable2::get(0x1e), 1);
        assert_eq!(display_control::gensync::get(0x1e), 0);
        assert_eq!(display_control::genlock::get(0x1e), 0);
    }

    #[test]
    fn config_1() {
        assert_eq!(config::unreset::get(0x1), 1);
        assert_eq!(config::slow_clock::get(0x1), 0);
        assert_eq!(config::revision::get(0x1), 0);
    }
}
