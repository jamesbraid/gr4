typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x3BC];                 /* maybe part of gcState[0xF0]? */
    /* 0x0454 */ ? unk454;                          /* inferred */
    /* 0x0454 */ char pad454[0x7BC];
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[0x20BF];               /* maybe part of yInverted[0x20C0]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x4A74];              /* maybe part of procs[0x17]? */
    /* 0x7B94 */ __GLcolorBuffer *front;
    /* 0x7B98 */ __GLcolorBuffer *back;
    /* 0x7B9C */ __GLcolorBuffer frontBuffer;
    /* 0x7C78 */ __GLcolorBuffer backBuffer;
    /* 0x7D54 */ __GLcolorBuffer *auxBuffer;
    /* 0x7D58 */ __GLstencilBuffer stencilBuffer;
    /* 0x7DD0 */ __GLdepthBuffer depthBuffer;
    /* 0x7E54 */ __GLaccumBuffer accumBuffer;
    /* 0x7EC4 */ char pad7EC4[0x1C];
    /* 0x7EE0 */ s32 fd;
    /* 0x7EE4 */ s32 boardIndex;
    /* 0x7EE8 */ s32 zDepth;
    /* 0x7EEC */ s32 stencilDepth;
    /* 0x7EF0 */ s8 rendererString[0x28];
    /* 0x7F18 */ u32 swapInterval;
    /* 0x7F1C */ u8 hwFlags;
    /* 0x7F1D */ u8 haveZ;
    /* 0x7F1E */ u8 haveStencil;
    /* 0x7F1F */ u8 fastMode;
    /* 0x7F20 */ void (*primitiveProcs[0xA])(__GLcontext *);
} __GLcontext;                                      /* size = 0x7F48 */

extern ? __glMgr_InternalUnpack;

void __glMgr_InterpretDL(__GLcontext *gc, ...) {
    s64 sp0;
    s32 temp_v0;
    s32 var_s2;
    void *(**temp_a1)(__GLcontext *, u32, u32);
    void *(**var_s0)(__GLcontext *, u32, u32);
    void *(*temp_a0)(__GLcontext *, u32, u32);
    void *(*var_s1)(__GLcontext *, u32);
    void *temp_s7;

    var_s0 = &gc->imports.calloc;
    var_s1 = gc->imports.malloc;
    sp0 = (s64) __glCurrentContext;
    temp_s7 = ((s32) var_s1 * 4) + gc + 4;
    if ((s32) var_s1 > 0) {
loop_4:
        temp_a0 = *var_s0;
        temp_a1 = var_s0 + 4;
        if (!((s32) temp_a0 & 0x80000000)) {
            temp_v0 = (s32) ((s32) temp_a0 & 0x1FFFFF) >> 8;
            var_s2 = (s32) (((s32) temp_a0 & 0xFF) + 3) >> 2;
            switch (temp_v0) {                      /* irregular */
            default:
                __glMgr_InterpretDL((__GLcontext *) temp_a0, temp_a0, temp_a1, 7, 8);
                break;
            case 0x38:
                __glMgr_InterpretDL((__GLcontext *) temp_a0, temp_a0, temp_a1, 7, 8);
                break;
            case 0x2:
                if (sp0->unkC20 != 0) {
                    __glMgr_InterpretDL((__GLcontext *) temp_a0, temp_a0, temp_a1, 7);
                } else {
                    __glMgr_InterpretDL((__GLcontext *) temp_a0, temp_a0, temp_a1, 7);
                }
                break;
            case 0x0:
                __glMgr_InterpretDL((__GLcontext *) temp_a0, temp_a0, temp_a1, 7);
                break;
            case 0x7:
                __glMgr_InterpretDL((__GLcontext *) temp_a0, temp_a0, temp_a1, 7, 8);
                break;
            case 0x8:
                __glMgr_InterpretDL((__GLcontext *) temp_a0, temp_a0, temp_a1, 7, 8);
                break;
            }
        } else {
            var_s2 = ((s32) (((s32) temp_a0 & 0xFFFFF) + 7) >> 3) * 2;
        }
        var_s1 = (var_s1 - var_s2) - 1;
        var_s0 = &var_s0[var_s2] + 4;
        if ((s32) var_s1 > 0) {
            goto loop_4;
        }
    }
}

void InterpretVertex(s32 arg0, s16 *arg1) {
    if (arg0 >= 0x3800000C) {
        if (arg0 > 0x3800000C) {
            if (arg0 >= 0x58000008) {
                if (arg0 > 0x58000008) {
                    if (arg0 == 0x59000004) {
                        glVertex2sv(arg1);
                    }
                } else {
                    glVertex2iv((s32 *) arg1);
                }
            } else if (arg0 >= 0x40000008) {
                if (arg0 <= 0x40000008) {
                    glVertex2fv((f32 *) arg1);
                }
            } else if (arg0 == 0x39000006) {
                glVertex3sv(arg1);
            }
        } else {
            glVertex3iv((s32 *) arg1);
        }
    } else if (arg0 >= 0x19000008) {
        if (arg0 > 0x19000008) {
            if (arg0 == 0x2000000C) {
                M2C_ERROR(/* Read from unset register $t9 */)(arg1, 0x19000008);
            }
        } else {
            glVertex4sv(arg1);
        }
    } else if (arg0 >= 0x18000010) {
        if (arg0 <= 0x18000010) {
            glVertex4iv((s32 *) arg1);
        }
    } else if (arg0 == 0x10) {
        glVertex4fv((f32 *) arg1);
    }
}

void InterpretColor(s32 arg0, s16 *arg1) {
    if (arg0 >= 0x2000020C) {
        if (arg0 > 0x2000020C) {
            if (arg0 >= 0x3C00020C) {
                if (arg0 > 0x3C00020C) {
                    if (arg0 >= 0x3D000206) {
                        if (arg0 <= 0x3D000206) {
                            glColor3sv(arg1);
                        }
                    } else if (arg0 == 0x3C800203) {
                        glColor3bv((s8 *) arg1);
                    }
                } else {
                    glColor3iv((s32 *) arg1);
                }
            } else {
                switch (arg0) {                     /* switch 2; irregular */
                case 0x35000206:                    /* switch 2 */
                    glColor3usv((u16 *) arg1);
                    break;
                case 0x3400020C:                    /* switch 2 */
                    glColor3uiv((u32 *) arg1);
                    break;
                default:                            /* switch 2 */
                    glColor3ubv((u8 *) arg1);
                    break;
                }
            }
        } else {
            glColor3fv((f32 *) arg1);
        }
    } else if (arg0 >= 0x15000208) {
        if (arg0 > 0x15000208) {
            if (arg0 >= 0x1C800204) {
                if (arg0 > 0x1C800204) {
                    if (arg0 == 0x1D000208) {
                        glColor4sv(arg1);
                    }
                } else {
                    glColor4bv((s8 *) arg1);
                }
            } else if (arg0 == 0x1C000210) {
                glColor4iv((s32 *) arg1);
            }
        } else {
            glColor4usv((u16 *) arg1);
        }
    } else {
        switch (arg0) {                             /* switch 1; irregular */
        case 0x14800204:                            /* switch 1 */
            glColor4ubv((u8 *) arg1);
            break;
        case 0x210:                                 /* switch 1 */
            glColor4fv((f32 *) arg1);
            break;
        default:                                    /* switch 1 */
            glColor4uiv((u32 *) arg1);
            break;
        }
    }
}

void InterpretIndex(s32 arg0, u8 *arg1) {
    switch (arg0) {                                 /* irregular */
    case 0x10800201:
        glIndexubv(arg1);
        break;
    case 0x18000204:
        glIndexiv((s32 *) arg1);
        break;
    case 0x19000202:
        glIndexsv((s16 *) arg1);
        break;
    case 0x204:
        glIndexfv((f32 *) arg1);
        break;
    }
}

void InterpretNormal(s32 arg0, s16 *arg1) {
    switch (arg0) {                                 /* irregular */
    case 0x1D000706:
        glNormal3sv(arg1);
        break;
    case 0x1C800703:
        glNormal3bv((s8 *) arg1);
        break;
    case 0x1C00070C:
        glNormal3iv((s32 *) arg1);
        break;
    case 0x70C:
        glNormal3fv((f32 *) arg1);
        break;
    }
}

void InterpretTexCoord(s32 arg0, s16 *arg1) {
    if (arg0 >= 0x40000808) {
        if (arg0 > 0x40000808) {
            if (arg0 >= 0x60000804) {
                if (arg0 > 0x60000804) {
                    if (arg0 >= 0x79000802) {
                        if (arg0 <= 0x79000802) {
                            glTexCoord1sv(arg1);
                        }
                    } else if (arg0 == 0x78000804) {
                        glTexCoord1iv((s32 *) arg1);
                    }
                } else {
                    glTexCoord1fv((f32 *) arg1);
                }
            } else if (arg0 >= 0x59000804) {
                if (arg0 <= 0x59000804) {
                    glTexCoord2sv(arg1);
                }
            } else if (arg0 == 0x58000808) {
                glTexCoord2iv((s32 *) arg1);
            }
        } else {
            glTexCoord2fv((f32 *) arg1);
        }
    } else if (arg0 >= 0x2000080C) {
        if (arg0 > 0x2000080C) {
            if (arg0 >= 0x39000806) {
                if (arg0 <= 0x39000806) {
                    glTexCoord3sv(arg1);
                }
            } else if (arg0 == 0x3800080C) {
                glTexCoord3iv((s32 *) arg1);
            }
        } else {
            glTexCoord3fv((f32 *) arg1);
        }
    } else {
        switch (arg0) {                             /* irregular */
        case 0x19000808:
            glTexCoord4sv(arg1);
            break;
        case 0x810:
            glTexCoord4fv((f32 *) arg1);
            break;
        default:
            glTexCoord4iv((s32 *) arg1);
            break;
        }
    }
}

void InterpretRasterPos(s32 arg0, s16 *arg1) {
    if (arg0 >= 0x3800380C) {
        if (arg0 > 0x3800380C) {
            if (arg0 >= 0x58003808) {
                if (arg0 > 0x58003808) {
                    if (arg0 == 0x59003804) {
                        glRasterPos2sv(arg1);
                    }
                } else {
                    glRasterPos2iv((s32 *) arg1);
                }
            } else if (arg0 >= 0x40003808) {
                if (arg0 <= 0x40003808) {
                    glRasterPos2fv((f32 *) arg1);
                }
            } else if (arg0 == 0x39003806) {
                glRasterPos3sv(arg1);
            }
        } else {
            glRasterPos3iv((s32 *) arg1);
        }
    } else if (arg0 >= 0x19003808) {
        if (arg0 > 0x19003808) {
            if (arg0 == 0x2000380C) {
                M2C_ERROR(/* Read from unset register $t9 */)(arg1, 0x19003808);
            }
        } else {
            glRasterPos4sv(arg1);
        }
    } else if (arg0 >= 0x18003810) {
        if (arg0 <= 0x18003810) {
            glRasterPos4iv((s32 *) arg1);
        }
    } else if (arg0 == 0x3810) {
        glRasterPos4fv((f32 *) arg1);
    }
}

void InterpretOthers(s32 arg0, enum GLenum *arg1) {
    s64 sp58;
    ? sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    enum GLenum temp_a2_2;
    enum GLenum var_a0_5;
    enum GLenum var_a1_5;
    enum GLenum var_a2_2;
    f32 temp_a2_3;
    f32 temp_a2_4;
    s32 *temp_a3;
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 temp_a0;
    s32 temp_at_4;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    u16 var_a1_4;
    u16 var_a2;
    u32 temp_a2;

    if (arg0 >= 0x3F08) {
        if (arg0 >= 0x3F09) {
            if (arg0 >= 0x7404) {
                if (arg0 >= 0x7405) {
                    if (arg0 >= 0xBC04) {
                        if (arg0 > 0xBC04) {
                            if (arg0 >= 0xC104) {
                                if (arg0 > 0xC104) {
                                    if (arg0 >= 0xE70C) {
                                        if (arg0 > 0xE70C) {
                                            if (arg0 == 0x12C0C) {
                                                glPolygonOffset(arg1->unk0, arg1->unk4);
                                            }
                                        } else {
                                            glPolygonOffsetEXT(arg1->unk0, arg1->unk4);
                                        }
                                    } else if (arg0 >= 0xD910) {
                                        if (arg0 <= 0xD910) {
                                            glBlendColorEXT(arg1->unk0, arg1->unk4, arg1->unk8, arg1->unkC);
                                        }
                                    } else if (arg0 == 0xCC00) {
                                        goto block_28;
                                    }
                                } else {
                                    glColorMaterial(GL_FRONT_AND_BACK, (bitwise enum GLenum) arg1->unk0);
                                }
                            } else if (arg0 >= 0xBF04) {
                                if (arg0 > 0xBF04) {
                                    if (arg0 == 0xC004) {
                                        glColorMaterial(GL_BACK, (bitwise enum GLenum) arg1->unk0);
                                    }
                                } else {
                                    glColorMaterial(GL_FRONT, (bitwise enum GLenum) arg1->unk0);
                                }
                            } else if (arg0 >= 0xBE04) {
                                if (arg0 <= 0xBE04) {
                                    glClearStencil((bitwise s32) arg1->unk0);
                                }
                            } else if (arg0 == 0xBD04) {
                                glClearIndex(arg1->unk0);
                            }
                        } else {
                            glClearDepth((second half of f64) / 16777215.0);
                        }
                    } else if (arg0 >= 0xB604) {
                        if (arg0 > 0xB604) {
                            if (arg0 >= 0xB904) {
                                if (arg0 > 0xB904) {
                                    if (arg0 == 0xBA10) {
                                        glClearColor(arg1->unk0, arg1->unk4, arg1->unk8, arg1->unkC);
                                    }
                                } else {
                                    glFogiv(GL_FOG_MODE, arg1);
                                }
                            } else if (arg0 >= 0xB804) {
                                if (arg0 <= 0xB804) {
                                    glFogiv(GL_FOG_INDEX, arg1);
                                }
                            } else if (arg0 == 0xB704) {
                                glFogfv(GL_FOG_DENSITY, (f32 *) arg1);
                            }
                        } else {
                            glFogfv(GL_FOG_END, (f32 *) arg1);
                        }
                    } else if (arg0 >= 0xA808) {
                        if (arg0 > 0xA808) {
                            if (arg0 >= 0xB504) {
                                if (arg0 <= 0xB504) {
                                    glFogfv(GL_FOG_START, (f32 *) arg1);
                                }
                            } else if (arg0 == 0xB410) {
                                glFogfv(GL_FOG_COLOR, (f32 *) arg1);
                            }
                        } else {
                            glPolygonMode(arg1->unk0, (bitwise enum GLenum) arg1->unk4);
                        }
                    } else if (arg0 >= 0xA514) {
                        if (arg0 <= 0xA514) {
                            sp10 = (f64) arg1->unk4;
                            sp18 = (f64) arg1->unk8;
                            sp20 = (f64) arg1->unkC;
                            sp28 = (f64) arg1->unk10;
                            glClipPlane(arg1->unk0, &sp10);
                        }
                    } else {
                        var_a0 = 9;
                        if (arg0 == 0x9420) {
                            var_a1 = 0;
                            sp58 = (s64) __glCurrentContext;
                            do {
                                temp_at = var_a1 + &__glCurrentContext->unk454;
                                temp_v0 = var_a1 + &sp30;
                                var_a1 += 4;
                                var_a0 -= 1;
                                *temp_v0 = *temp_at;
                            } while (var_a0 > 0);
                            var_a0_2 = 9;
                            var_a1_2 = 0;
                            do {
                                temp_at_2 = var_a1_2 + (sp58 + 0x454);
                                temp_a3 = var_a1_2 + &__glMgr_InternalUnpack;
                                var_a1_2 += 4;
                                var_a0_2 -= 1;
                                *temp_at_2 = *temp_a3;
                            } while (var_a0_2 > 0);
                            glBitmap((bitwise s32) arg1->unk4, (bitwise s32) arg1->unk8, arg1->unkC, arg1->unk10, arg1->unk14, arg1->unk18, (u8 *) (arg1 + 0x24));
                            var_a1_3 = 9;
                            var_a0_3 = 0;
                            do {
                                temp_at_3 = var_a0_3 + &sp30;
                                temp_v0_2 = var_a0_3 + (sp58 + 0x454);
                                var_a0_3 += 4;
                                var_a1_3 -= 1;
                                *temp_v0_2 = *temp_at_3;
                            } while (var_a1_3 > 0);
                        }
                    }
                } else {
                    glCullFace(arg1->unk0);
                }
            } else if (arg0 >= 0x5010) {
                if (arg0 >= 0x5011) {
                    if (arg0 >= 0x5604) {
                        if (arg0 >= 0x5605) {
                            if (arg0 >= 0x5904) {
                                if (arg0 >= 0x5905) {
                                    if (arg0 == 0x6004) {
                                        glBlendEquationEXT(arg1->unk0);
                                    }
                                } else {
                                    glLightModelfv(GL_LIGHT_MODEL_TWO_SIDE, (f32 *) arg1);
                                }
                            } else if (arg0 >= 0x5804) {
                                if (arg0 < 0x5805) {
                                    glLightModelfv(GL_LIGHT_MODEL_LOCAL_VIEWER, (f32 *) arg1);
                                }
                            } else if (arg0 == 0x570C) {
                                glLightModelfv(GL_LIGHT_MODEL_AMBIENT, (f32 *) arg1);
                            }
                        } else {
                            glFrontFace(arg1->unk0);
                        }
                    } else if (arg0 >= 0x5308) {
                        if (arg0 >= 0x5309) {
                            if (arg0 >= 0x5508) {
                                if (arg0 < 0x5509) {
                                    glLightfv(arg1->unk0 + 0x4000, GL_QUADRATIC_ATTENUATION, (f32 *) (arg1 + 4));
                                }
                            } else if (arg0 == 0x5408) {
                                glLightfv(arg1->unk0 + 0x4000, GL_LINEAR_ATTENUATION, (f32 *) (arg1 + 4));
                            }
                        } else {
                            glLightfv(arg1->unk0 + 0x4000, GL_CONSTANT_ATTENUATION, (f32 *) (arg1 + 4));
                        }
                    } else if (arg0 >= 0x5208) {
                        if (arg0 < 0x5209) {
                            glLightfv(arg1->unk0 + 0x4000, GL_SPOT_CUTOFF, (f32 *) (arg1 + 4));
                        }
                    } else if (arg0 == 0x5108) {
                        glLightfv(arg1->unk0 + 0x4000, GL_SPOT_EXPONENT, (f32 *) (arg1 + 4));
                    }
                } else {
                    glLightfv(arg1->unk0 + 0x4000, GL_SPOT_DIRECTION, (f32 *) (arg1 + 4));
                }
            } else if (arg0 >= 0x4608) {
                if (arg0 >= 0x4609) {
                    if (arg0 >= 0x4D04) {
                        if (arg0 >= 0x4D05) {
                            if (arg0 == 0x4F14) {
                                glLightfv(arg1->unk0 + 0x4000, GL_POSITION, (f32 *) (arg1 + 4));
                            }
                        } else {
                            glPointSize((bitwise f32) arg1->unk0);
                        }
                    } else if (arg0 >= 0x4808) {
                        if (arg0 < 0x4809) {
                            glDepthRange((f64) (second half of f64), second half of f64);
                        }
                    } else if (arg0 == 0x4704) {
                        glShadeModel(arg1->unk0);
                    }
                } else {
                    var_a0_4 = 0xF;
                    var_a1_4 = 0;
                    var_a2 = arg1->unk6;
loop_120:
                    temp_a2 = var_a2 >> 1;
                    if (var_a2 & 1) {
                        var_a1_4 = ((1 << var_a0_4) | var_a1_4) & 0xFFFF;
                    }
                    temp_at_4 = temp_a2 & 1;
                    var_a2 = (u16) (temp_a2 >> 1);
                    temp_a0 = var_a0_4 - 1;
                    if (temp_at_4 != 0) {
                        var_a1_4 = ((1 << temp_a0) | var_a1_4) & 0xFFFF;
                    }
                    var_a0_4 = temp_a0 - 1;
                    if (var_a0_4 != -1) {
                        goto loop_120;
                    }
                    glLineStipple(arg1->unk0 + 1, var_a1_4);
                }
            } else if (arg0 >= 0x420C) {
                if (arg0 >= 0x420D) {
                    if (arg0 >= 0x4504) {
                        if (arg0 < 0x4505) {
                            glLineWidth((bitwise f32) arg1->unk0);
                        }
                    } else if (arg0 == 0x4304) {
                        glDepthFunc(arg1->unk0 + 0x200);
                    }
                } else {
                    temp_a2_2 = arg1->unk0;
                    switch (temp_a2_2) {            /* switch 3; irregular */
                    default:                        /* switch 3 */
                        var_a0_5 = sp0;
                        if (temp_a2_2 == GL_TRIANGLE_STRIP) {
                            var_a0_5 = GL_INVERT;
                        }
                        break;
                    case GL_ZERO:                   /* switch 3 */
                        var_a0_5 = GL_KEEP;
                        break;
                    case GL_ONE:                    /* switch 3 */
                        var_a0_5 = GL_ZERO;
                        break;
                    case GL_LINE_LOOP:              /* switch 3 */
                        var_a0_5 = GL_REPLACE;
                        break;
                    case GL_LINE_STRIP:             /* switch 3 */
                        var_a0_5 = GL_INCR;
                        break;
                    case GL_TRIANGLES:              /* switch 3 */
                        var_a0_5 = GL_DECR;
                        break;
                    }
                    temp_a2_3 = arg1->unk4;
                    switch ((bitwise s32) temp_a2_3) { /* switch 4; irregular */
                    default:                        /* switch 4 */
                        var_a1_5 = sp4;
                        if ((bitwise s32) temp_a2_3 == 5) {
                            var_a1_5 = GL_INVERT;
                        }
                        break;
                    case 0:                         /* switch 4 */
                        var_a1_5 = GL_KEEP;
                        break;
                    case 1:                         /* switch 4 */
                        var_a1_5 = GL_ZERO;
                        break;
                    case 2:                         /* switch 4 */
                        var_a1_5 = GL_REPLACE;
                        break;
                    case 3:                         /* switch 4 */
                        var_a1_5 = GL_INCR;
                        break;
                    case 4:                         /* switch 4 */
                        var_a1_5 = GL_DECR;
                        break;
                    }
                    temp_a2_4 = arg1->unk8;
                    if ((bitwise s32) temp_a2_4 != 0) {
                        if ((bitwise s32) temp_a2_4 != 1) {
                            if ((bitwise s32) temp_a2_4 != 2) {
                                if ((bitwise s32) temp_a2_4 != 3) {
                                    if ((bitwise s32) temp_a2_4 != 4) {
                                        if ((bitwise s32) temp_a2_4 == 5) {
                                            var_a2_2 = GL_INVERT;
                                        } else {
                                            var_a2_2 = sp8;
                                        }
                                    } else {
                                        var_a2_2 = GL_DECR;
                                    }
                                } else {
                                    var_a2_2 = GL_INCR;
                                }
                            } else {
                                var_a2_2 = GL_REPLACE;
                            }
                        } else {
                            var_a2_2 = GL_ZERO;
                        }
                    } else {
                        var_a2_2 = GL_KEEP;
                    }
                    glStencilOp(var_a0_5, var_a1_5, var_a2_2);
                }
            } else if (arg0 >= 0x410C) {
                if (arg0 < 0x410D) {
                    glStencilFunc(arg1->unk0 + 0x200, (bitwise s32) arg1->unk4, (bitwise u32) arg1->unk8);
                }
            } else if (arg0 == 0x4004) {
                glLogicOp(arg1->unk0 + 0x1500);
            }
        } else {
            glBlendFunc(arg1->unk0, (bitwise enum GLenum) arg1->unk4);
        }
    } else if (arg0 >= 0x2500) {
        if (arg0 >= 0x2501) {
            if (arg0 >= 0x3010) {
                if (arg0 >= 0x3011) {
                    if (arg0 >= 0x3A04) {
                        if (arg0 >= 0x3A05) {
                            if (arg0 >= 0x3D04) {
                                if (arg0 >= 0x3D05) {
                                    if (arg0 == 0x3E08) {
                                        glAlphaFunc(arg1->unk0 + 0x200, (f32) arg1->unk4 / 4095.0f);
                                    }
                                } else {
                                    glIndexMask((u32) arg1->unk0);
                                }
                            } else if (arg0 >= 0x3C04) {
                                if (arg0 < 0x3C05) {
                                    glDepthMask(arg1->unk3);
                                }
                            } else if (arg0 == 0x3B04) {
                                glColorMask(arg1->unk0 != GL_ZERO, (bitwise s32) arg1->unk4 != 0, (bitwise s32) arg1->unk8 != 0, (bitwise s32) arg1->unkC != 0);
                            }
                        } else {
                            glStencilMask((u32) arg1->unk0);
                        }
                    } else if (arg0 >= 0x3310) {
                        if (arg0 >= 0x3311) {
                            if (arg0 >= 0x3518) {
                                if (arg0 < 0x3519) {
                                    glOrtho((f64) (second half of f64), second half of f64, (f64) (second half of f64), second half of f64, (f64) (second half of f64), second half of f64);
                                }
                            } else if (arg0 == 0x3418) {
                                glFrustum((f64) (second half of f64), second half of f64, (f64) (second half of f64), second half of f64, (f64) (second half of f64), second half of f64);
                            }
                        } else {
                            glViewport(arg1->unk0, (bitwise s32) arg1->unk4, (bitwise s32) arg1->unk8, (bitwise s32) arg1->unkC);
                        }
                    } else if (arg0 >= 0x320C) {
                        if (arg0 < 0x320D) {
                            glTranslatef((bitwise f32) arg1->unk0, arg1->unk4, arg1->unk8);
                        }
                    } else if (arg0 == 0x310C) {
                        glScalef((bitwise f32) arg1->unk0, arg1->unk4, arg1->unk8);
                    }
                } else {
                    glRotatef((bitwise f32) arg1->unk0, arg1->unk4, arg1->unk8, arg1->unkC);
                }
            } else if (arg0 >= 0x2B40) {
                if (arg0 >= 0x2B41) {
                    if (arg0 >= 0x2E00) {
                        if (arg0 >= 0x2E01) {
                            if (arg0 == 0x2F00) {
                                glPushMatrix();
                            }
                        } else {
                            glPopMatrix();
                        }
                    } else if (arg0 >= 0x2D40) {
                        if (arg0 < 0x2D41) {
                            glMultMatrixf((f32 *) arg1);
                        }
                    } else if (arg0 == 0x2C00) {
                        glLoadIdentity();
                    }
                } else {
                    glLoadMatrixf((f32 *) arg1);
                }
            } else {
                switch (arg0) {                     /* switch 2; irregular */
                default:                            /* switch 2 */
                    glMatrixMode(arg1->unk0);
                    break;
                case 0x2600:                        /* switch 2 */
                    goto block_28;
                case 0x2900:                        /* switch 2 */
                    goto block_28;
                }
            }
        } else {
            goto block_28;
        }
    } else if (arg0 >= 0x1A00) {
        if (arg0 >= 0x1A01) {
            if (arg0 >= 0x2000) {
                switch (arg0) {                     /* switch 1; irregular */
                case 0x2100:                        /* switch 1 */
block_28:
                    glEnd();
                    break;
                case 0x2400:                        /* switch 1 */
                    goto block_28;
                }
            } else if (arg0 >= 0x1D00) {
                if (arg0 >= 0x1D01) {
                    if (arg0 >= 0x1F00) {
                        if (arg0 < 0x1F01) {
                            glBegin(GL_POLYGON);
                        }
                    } else if (arg0 == 0x1E00) {
                        glBegin(GL_QUAD_STRIP);
                    }
                } else {
                    glBegin(GL_QUADS);
                }
            } else if (arg0 >= 0x1C00) {
                if (arg0 < 0x1C01) {
                    glBegin(GL_TRIANGLE_FAN);
                }
            } else if (arg0 == 0x1B00) {
                glBegin(GL_TRIANGLE_STRIP);
            }
        } else {
            glBegin(GL_TRIANGLES);
        }
    } else if (arg0 >= 0x1414) {
        if (arg0 >= 0x1415) {
            if (arg0 >= 0x1800) {
                if (arg0 >= 0x1801) {
                    if (arg0 == 0x1900) {
                        glBegin(GL_LINE_LOOP);
                    }
                } else {
                    glBegin(GL_LINE_STRIP);
                }
            } else if (arg0 >= 0x1700) {
                if (arg0 < 0x1701) {
                    glBegin(GL_ONE);
                }
            } else if (arg0 == 0x1600) {
                glBegin(GL_ZERO);
            }
        } else {
            glLightfv(arg1->unk0 + 0x4000, GL_SPECULAR, (f32 *) (arg1 + 4));
        }
    } else if (arg0 >= 0x1118) {
        if (arg0 >= 0x1119) {
            if (arg0 >= 0x1314) {
                if (arg0 < 0x1315) {
                    glLightfv(arg1->unk0 + 0x4000, GL_DIFFUSE, (f32 *) (arg1 + 4));
                }
            } else if (arg0 == 0x1214) {
                glLightfv(arg1->unk0 + 0x4000, GL_AMBIENT, (f32 *) (arg1 + 4));
            }
        } else {
            glMaterialfv(arg1->unk0, (bitwise enum GLenum) arg1->unk4, (f32 *) (arg1 + 8));
        }
    } else if (arg0 >= 0x1000) {
        if (arg0 < 0x1001) {
            glEdgeFlag(0U);
        }
    } else if (arg0 == 0xF00) {
        glEdgeFlag(1U);
    }
}
