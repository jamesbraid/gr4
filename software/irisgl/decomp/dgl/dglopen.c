? XCloseDisplay(u8 *);                              /* extern */
? XFree(s32);                                       /* extern */
u8 *XOpenDisplay(u8 *);                             /* extern */
s32 XSGIMiscQueryExtension(u8 *, ? *, ? *);         /* extern */
? _XSGIRetreiveAuthInfo(s32 *, s32 *, s32 *, u8 *); /* extern */
? _XSGISaveAuthInfo();                              /* extern */
s32 atoi(u8 *, ?, ?);                               /* extern */
? bcopy(s32, s32 *, s32);                           /* extern */
u8 *cuserid(?);                                     /* extern */
? exit(?);                                          /* extern */
u8 **gethostbyaddr(s32 *, ?, ?);                    /* extern */
u8 **gethostbyname(u8 *);                           /* extern */
? gethostname(u8 *, ?);                             /* extern */
s32 open(void *, ?, ?);                             /* extern */
? sprintf(u8 *, void *, u8 *, u8 *);                /* extern */
? strcat(u8 *, s8 *);                               /* extern */
u8 *strchr(u8 *, ?);                                /* extern */
s32 strcmp(u8 *, u8 *);                             /* extern */
? strcpy(u8 *, u8 *);                               /* extern */
s32 strncmp(s8 *, void *, ?);                       /* extern */
? strncpy(u8 *, u8 *, s64);                         /* extern */
extern s32 authdata;
extern u8 authdatalen;
extern s32 authname;
extern s32 authnamelen;
extern void *comm_curgfile;
extern ? comm_gfiles;
extern s32 gl_connection_inited;
extern u8 gl_curdname;
extern u8 gl_dname;
extern ? gl_selected_scrn;
extern ? sub_0f020000;

void gl_shlib_version(void) {

}

void __GLdglopen(u8 *arg0, s64 arg1) {
    s64 sp4F0;
    s64 sp4B0;
    s8 sp4A4;
    u8 sp4A0;
    u8 sp420;
    ? sp41C;
    u8 *sp418;
    u8 *sp414;
    u8 *sp410;
    u8 sp310;
    u8 sp208;
    u8 sp108;
    u8 sp8;
    s32 sp4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0_10;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 var_s0;
    s64 var_s6;
    u8 **temp_v0_2;
    u8 **temp_v0_3;
    u8 **temp_v0_4;
    u8 *temp_v0_5;
    u8 *temp_v0_6;
    u8 *temp_v0_7;
    u8 *temp_v0_8;
    u8 *temp_v0_9;
    u8 *var_s3;
    u8 *var_s5;
    void *temp_v0;
    void *var_s2;

    var_s6 = saved_reg_s6;
    var_s5 = NULL;
    sp208 = 0;
    sp108 = 0;
    sp8 = 0;
    var_s0 = arg1;
    sp4B0 = arg1;
    sp4 = -1;
    temp_v0 = gl_comm_new_gfile();
    if (temp_v0 != NULL) {
        gl_util_init();
        gl_dgl_default_display(arg0, &sp310, &sp108, 0);
        if (sp108 != 0) {
            var_s2 = &sub_0f020000 + 0x7A00;
        } else {
            var_s2 = &sub_0f020000 + 0x7A00;
            strcpy(&sp108, var_s2 + 0x100);
        }
        if (var_s0 == 4) {
            if ((strcmp(&sp108, var_s2 + 0x110) != 0) && (strcmp(&sp108, saved_reg_gp - 0x3B40) != 0) && (strcmp(&sp108, saved_reg_gp - 0x3B40 + 8) != 0)) {
                gethostname(&sp8, 0x100);
                temp_v0_2 = gethostbyname(&sp8);
                saved_reg_gp->unk-5154 = temp_v0_2;
                if (temp_v0_2 != NULL) {
                    strcpy(&sp8, *temp_v0_2);
                }
                temp_v0_3 = gethostbyname(&sp108);
                saved_reg_gp->unk-5154 = temp_v0_3;
                if (temp_v0_3 != NULL) {
                    strcpy(&sp108, *temp_v0_3);
                }
                var_s6 = sp4F0;
                if (strcmp(&sp8, &sp108) != 0) {
                    var_s0 = 2;
                    gl_dgl_info(1, var_s2 + 0x140);
                } else {
                    var_s0 = 1;
                    temp_v0->unk4 = 1;
                    gl_dgl_info(1, var_s2 + 0x158);
                }
            } else {
                var_s0 = 1;
                temp_v0->unk4 = 1;
                gl_dgl_info(1, var_s2 + 0x120);
            }
        }
        if (var_s0 != 2) {
            if (var_s0 != 3) {
                goto block_6;
            }
            goto block_9;
        }
block_9:
        gethostname(&sp8, 0x100);
        sp4F0 = var_s6;
        temp_v0_4 = gethostbyname(&sp8);
        saved_reg_gp->unk-5154 = temp_v0_4;
        if (temp_v0_4 != NULL) {
            strcpy(&sp8, *temp_v0_4);
        }
        temp_v0_5 = cuserid(0);
        var_s5 = temp_v0_5;
        if (temp_v0_5 == NULL) {
            gl_dgl_error(saved_reg_gp - 0x3B40 + 0x10, var_s2 + 0x178);
            var_s5 = saved_reg_gp - 0x3B40 + 0x18;
        }
        gl_util_lowcase(var_s5);
        if (sp310 == 0) {
            strcpy(&sp310, var_s5);
        }
        temp_v0_6 = strchr(&sp310, 0x20);
        if (temp_v0_6 != NULL) {
            *temp_v0_6 = 0;
            sp418 = temp_v0_6 + 1;
            var_s6 = sp4F0;
            if (var_s5 == NULL) {

            }
        } else {
            sp418 = temp_v0_6;
            var_s6 = sp4F0;
block_6:
            if (var_s5 != NULL) {

            }
        }
        gl_dgl_info(1, var_s2 + 0x1A8, &sp310, &sp108);
        strcpy(temp_v0 + 0xC8, &sp108);
        if ((var_s0 != 0) && (var_s0 != 1)) {
            if (strchr(arg0, 0x3A) == NULL) {
                sprintf(&sp208, var_s2 + 0x1D8, arg0, sp410);
                var_s3 = &sp208;
            } else {
                var_s3 = arg0;
            }
            sp4F0 = var_s6;
            temp_v0_7 = strchr(var_s3, 0x40);
            if (temp_v0_7 != NULL) {
                var_s3 = temp_v0_7 + 1;
            }
            temp_v0_8 = strchr(var_s3, 0x23);
            if (temp_v0_8 != NULL) {
                *temp_v0_8 = 0;
            }
            gl_dgl_info(1, var_s2 + 0x1E8, var_s3);
            _XSGISaveAuthInfo();
            temp_v0_9 = XOpenDisplay(var_s3);
            if (temp_v0_9 == NULL) {
                gl_dgl_info(1, var_s2 + 0x210, var_s3);
                gl_dgl_error(saved_reg_gp - 0x3B40 + 0x28, var_s2 + 0x230, var_s3);
                goto block_37;
            }
            _XSGIRetreiveAuthInfo(&authname, &authnamelen, &authdata, &authdatalen);
            gl_dgl_info(1, var_s2 + 0x250, var_s3, temp_v0_9);
            if (XSGIMiscQueryExtension(temp_v0_9, &sp41C, &sp41C) != 0) {
                XCloseDisplay(temp_v0_9);
                gl_dgl_info(1, var_s2 + 0x2E8, temp_v0_9);
                goto block_29;
            }
            XCloseDisplay(temp_v0_9);
            gl_dgl_info(1, var_s2 + 0x288);
            gl_dgl_error(var_s2 + 0x2B0, var_s2 + 0x2C0, var_s3);
            goto block_37;
        }
block_29:
        switch (var_s0) {                           /* irregular */
        default:
            gl_dgl_error(saved_reg_gp - 0x3B40 + 0x38, var_s2 + 0x378, (u8 *) var_s0);
            break;
        case 3:
            gl_decnet_init(temp_v0, &sp108, &sp310, sp418);
            break;
        case 0:
            temp_v0_10 = open(var_s2 + 0x308, 2, 0x1A4);
            temp_v0->unkC = temp_v0_10;
            if (temp_v0_10 >= 0) {
                gl_dgl_info(1, var_s2 + 0x330);
                temp_v0->unk10 = (s32) temp_v0->unkC;
            } else {
                gl_dgl_perror(var_s2 + 0x318);
            }
            break;
        case 5:
            temp_v0->unk4 = 1;
            var_s0 = 1;
            gl_dgl_info(1, var_s2 + 0x348, &authdatalen);
            break;
        case 1:
            temp_v0->unk4 = 1;
            gl_dgl_info(1, var_s2 + 0x368, &authdatalen);
            break;
        case 2:
            gl_socket_init(temp_v0, &sp108, sp4, saved_reg_gp - 0x3B40 + 0x30);
            break;
        }
        if (saved_reg_gp->unk-5150 == 0) {
            gl_util_timer(0);
            saved_reg_gp->unk-5150 = 1;
        }
        if (subroutine_arg0 != 0) {
            goto block_37;
        }
        if (comm_curgfile != NULL) {
            gl_comm_flush();
        }
        comm_curgfile = temp_v0;
        gl_load_dgl_table((u8 *) var_s0);
        gl_connection_inited = 1;
        if (var_s0 != 1) {
            gl_comm_get_bufsize();
        }
        if (var_s0 != 0) {
            if (var_s0 != 1) {
                gl_comm_pushbuffer();
                gl_data_check_xdr();
                gl_comm_popbuffer();
                if (subroutine_arg0 == 0) {
                    gl_comm_pushbuffer();
                    gl_d_dglloginX(&sp8, var_s5, &sp310, 0x80);
                    gl_comm_popbuffer();
                    if (subroutine_arg0 != 0) {
                        gl_dgl_error(saved_reg_gp - 0x3B40 + 0x40, var_s2 + 0x388, &sp420);
                        goto block_37;
                    }
                    gl_comm_pushbuffer();
                    gl_d_dglversion(2);
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                        gl_d_dglversion(1);
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            goto block_108;
                        }
                        goto block_67;
                    }
                    gl_d_dglxauthority(authnamelen, authname, authdatalen, authdata);
                    if (authname != 0) {
                        XFree(authname);
                    }
                    if (authdata != 0) {
                        XFree(authdata);
                    }
                    if (subroutine_arg0 == 0) {
block_67:
                        gl_dgl_info(1, var_s2 + 0x3D0, NULL);
                        goto block_68;
                    }
block_108:
                    gl_dgl_error(var_s2 + 0x3A8, var_s2 + 0x3B8);
                    goto block_37;
                }
                goto block_37;
            }
block_68:
            if (var_s0 != 0) {
                sprintf(&gl_dname, saved_reg_gp - 0x3B40 + 0x48, sp410, sp414);
                gl_dgl_info(1, var_s2 + 0x3E8, &gl_dname);
                if (var_s0 != 1) {
                    var_v0 = gl_d_gl_setdisplay(&gl_dname);
                } else {
                    var_v0 = __GLgl_setdisplay(&gl_dname);
                }
                if (var_v0 < 0) {
                    exit(1);
                }
                if ((var_s0 != 0) && (var_s0 != 1)) {
                    if (subroutine_arg0 == 0) {
                        gl_dgl_default_display();
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                            if (sp4B0 != 5) {
                                gl_dgl_error(saved_reg_gp - 0x3B40 + 0x58, var_s2 + 0x418);
                            } else {
                                gl_dgl_error(saved_reg_gp - 0x3B40 + 0x50, var_s2 + 0x400);
                            }
                        }
                    }
                    gl_d_gversion(&sp4A0);
                    if (strncmp(&sp4A4, saved_reg_gp - 0x3B40 + 0x60, 1) != 0) {
                        var_v0_2 = 0;
                        if (strncmp(&sp4A4, saved_reg_gp - 0x3B40 + 0x68, 2) != 0) {
                            var_v0_2 = 1;
                        }
                    } else {
                        var_v0_2 = 0;
                    }
                    temp_v0->unk190 = var_v0_2;
                    gl_strstr(&sp4A0, saved_reg_gp - 0x3B40 + 0x70);
                    var_v0_3 = 1;
                    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                        var_v0_3 = 0;
                    }
                    temp_v0->unk198 = var_v0_3;
                    gl_comm_popbuffer();
                    if (subroutine_arg0 == 0) {

                    } else {
block_37:
                        temp_a0 = temp_v0->unkC;
                        if (temp_a0 >= 0) {
                            temp_v0->unk20(temp_a0);
                        }
                        temp_a0_2 = temp_v0->unk10;
                        if (temp_a0_2 >= 0) {
                            temp_v0->unk20(temp_a0_2);
                        }
                        gl_comm_free_gfile(temp_v0);
                    }
                }
            }
        }
    }
}

void gl_strstr(u8 *arg0, void *arg1) {
    u8 *var_a0;
    u8 *var_v0_2;
    u8 var_a4;
    u8 var_a6;
    u8 var_v0;
    void *var_a5;

    var_a0 = arg0;
    if ((var_a0 != NULL) && (arg1 != NULL)) {
        var_v0 = *var_a0;
        if (var_v0 != 0) {
loop_5:
            if (var_v0 != arg1->unk0) {
                var_a0 += 1;
                goto block_4;
            }
            var_a5 = arg1 + 1;
            var_v0_2 = var_a0 + 1;
            if (arg1->unk1 != 0) {
                if (var_a0->unk1 != 0) {
                    var_a4 = arg1->unk1;
                    var_a6 = var_a0->unk1;
loop_11:
                    if (var_a6 == var_a4) {
                        var_a4 = var_a5->unk1;
                        var_v0_2 += 1;
                        var_a5 += 1;
                        if (var_a4 != 0) {
                            var_a6 = *var_v0_2;
                            if (var_a6 == 0) {
                                goto block_14;
                            }
                            goto loop_11;
                        }
                    } else {
                        goto block_14;
                    }
                } else {
                    var_a4 = arg1->unk1;
                    goto block_14;
                }
            } else {
                var_a4 = arg1->unk1;
block_14:
                if (var_a4 != 0) {
                    var_a0 += 1;
block_4:
                    var_v0 = *var_a0;
                    if (var_v0 != 0) {
                        goto loop_5;
                    }
                }
            }
        }
    }
}

void __GLdglope(u8 *arg0, s64 arg1, s64 arg2) {
    s64 sp218;

    sp218 = arg2;
    strncpy(sp, arg0, arg1);
    sp[arg1] = 0;
    __GLdglopen(sp, sp218);
}

void __GLdglclose(s32 arg0) {
    s32 temp_a0;
    void *temp_a0_2;

    if (arg0 >= 0) {
        if (arg0 < 0x101) {
            temp_a0 = *((arg0 * 4) + &comm_gfiles);
            if (temp_a0 == 0) {
                goto block_3;
            }
            gl_comm_close_gfile(temp_a0, 1, arg0);
        } else {
block_3:
            temp_a0_2 = &sub_0f020000 + 0x7A00;
            gl_dgl_error(temp_a0_2 + 0x438, temp_a0_2 + 0x448, (u8 *) arg0);
        }
    } else {
        gl_comm_flush(arg0);
        gl_comm_close(1);
    }
}

void gl_g_gl_setdisplay(u8 *arg0) {
    strcpy(&gl_curdname, arg0);
    gl_parse_hostname(&gl_curdname, sp, &gl_selected_scrn);
}

void gl_dgl_default_display(u8 *arg0) {
    s32 temp_gp;
    s8 *temp_v0;
    s8 *temp_v0_2;
    s8 *temp_v0_3;
    s8 *temp_v0_4;
    s8 *var_s0;

    *arg0 = 0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF77024;
    temp_v0 = getenv(temp_gp - 0x3B40 + 0x78);
    var_s0 = temp_v0;
    if (temp_v0 == NULL) {
        temp_v0_2 = getenv(&sub_0f020000 + 0x7A00 + 0x468);
        var_s0 = temp_v0_2;
        if (temp_v0_2 == NULL) {
            temp_v0_3 = getenv(&sub_0f020000 + 0x7A00 + 0x478);
            var_s0 = temp_v0_3;
            if (temp_v0_3 != NULL) {
                temp_v0_4 = getenv(&sub_0f020000 + 0x7A00 + 0x488);
                if (temp_v0_4 != NULL) {
                    strcat(arg0, temp_v0_4);
                    strcat(arg0, temp_gp - 0x3B40 + 0x80);
                }
                goto block_6;
            }
            goto block_7;
        }
        goto block_8;
    }
    if (strncmp(temp_v0, temp_gp - 0x3B40 + 0x88, 4) == 0) {
        var_s0 += 3;
    }
block_6:
    if (var_s0 == NULL) {
block_7:
        gethostname(arg0, 0x100);
    } else {
block_8:
        strcat(arg0, var_s0);
    }
    gl_util_lowcase(arg0);
}

void parse_display(u8 *arg0, s64 arg1, u8 *arg2, s32 *arg3) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 *temp_s3;
    s32 *var_s4;
    s64 temp_a2;
    u8 **temp_v0_8;
    u8 **temp_v0_9;
    u8 *temp_s2;
    u8 *temp_v0;
    u8 *temp_v0_5;
    u8 *temp_v0_6;
    u8 *var_a0;
    u8 *var_s0;
    u8 temp_v0_2;
    u8 temp_v0_3;
    u8 temp_v0_4;
    u8 temp_v0_7;

    *arg2 = 0;
    var_s0 = arg0;
    sp20 = arg1;
    var_s4 = arg3;
    sp18 = M2C_ERROR(/* Read from unset register $a4 */);
    sp10 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_s3 = M2C_ERROR(/* Read from unset register $a6 */);
    *arg1 = 0;
    if (M2C_ERROR(/* Read from unset register $a5 */) != 0) {
        *sp10 = 0;
    }
    if (temp_s3 != NULL) {
        *temp_s3 = 0;
    }
    temp_v0 = strchr(var_s0, 0x40);
    if (temp_v0 != NULL) {
        temp_a2 = temp_v0 - var_s0;
        sp8 = temp_a2;
        strncpy((u8 *) sp20, var_s0, temp_a2);
        var_s0 = temp_v0 + 1;
        *(sp8 + sp20) = 0;
    }
    if (strcmp(var_s0, saved_reg_gp - 0x3AB0) == 0) {
        var_s0 += 3;
    }
    temp_v0_2 = *var_s0;
    var_a0 = arg2;
    if ((temp_v0_2 != 0) && (temp_v0_2 != 0x3A) && (temp_v0_2 != 0x3B)) {
loop_9:
        *var_a0 = var_s0->unk0;
        temp_v0_3 = var_s0->unk1;
        var_a0 += 1;
        var_s0 += 1;
        if ((temp_v0_3 != 0) && (temp_v0_3 != 0x3A) && (temp_v0_3 != 0x3B)) {
            *var_a0 = var_s0->unk0;
            temp_v0_4 = var_s0->unk1;
            var_a0 += 1;
            var_s0 += 1;
            if ((temp_v0_4 != 0) && (temp_v0_4 != 0x3A)) {
                if (temp_v0_4 != 0x3B) {
                    goto loop_9;
                }
            }
        }
    }
    *var_a0 = 0;
    if (*var_s0 != 0x3A) {

    } else {
        temp_s2 = var_s0 + 1;
        if (sp10 != 0) {
            *sp10 = atoi(temp_s2, 0x3A, 0x3B);
        }
        temp_v0_5 = strchr(temp_s2, 0x2E);
        if (temp_v0_5 != NULL) {
            if (temp_s3 != NULL) {
                *temp_s3 = atoi(temp_v0_5 + 1);
            }
        }
    }
    temp_v0_6 = strchr(var_s0, 0x23);
    if (temp_v0_6 != NULL) {
        *temp_v0_6 = 0;
        if (sp18 != 0) {
            *sp18 = atoi(temp_v0_6 + 1);
        }
    }
    temp_v0_7 = *arg2;
    if ((temp_v0_7 >= 0x30U) && (temp_v0_7 < 0x3AU)) {
        if (var_s4 == NULL) {
            var_s4 = sp;
        }
        *var_s4 = gl_inet_addr(arg2);
        temp_v0_8 = gethostbyaddr(var_s4, 4, 2);
        saved_reg_gp->unk-5154 = temp_v0_8;
        if (temp_v0_8 == NULL) {
            return;
        }
        strcpy(arg2, *temp_v0_8);
    } else if (var_s4 != NULL) {
        temp_v0_9 = gethostbyname(arg2);
        saved_reg_gp->unk-5154 = temp_v0_9;
        if (temp_v0_9 == NULL) {
            return;
        }
        bcopy(*temp_v0_9->unk10, var_s4, temp_v0_9->unkC);
    }
}

void win_sys_running(void) {
    gl_d_ismex();
}
