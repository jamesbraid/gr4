void __glMgrim_Rectd(f64 x1, f64 y1, f64 x2, f64 y2) {
    if (__glBeginMode != 1) {
        __glMgrim_Begin(GL_POLYGON);
        __glMgrim_Vertex2d(second half of f64, y1);
        __glMgrim_Vertex2d(second half of f64, y1);
        __glMgrim_Vertex2d(second half of f64, y2);
        __glMgrim_Vertex2d(second half of f64, y2);
        __glMgrim_End();
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Rectdv(f64 *v1, f64 *v2) {
    if (__glBeginMode != 1) {
        __glMgrim_Begin(GL_POLYGON);
        __glMgrim_Vertex2d(v1->unk0, second half of f64);
        __glMgrim_Vertex2d(v2->unk0, second half of f64);
        __glMgrim_Vertex2d(v2->unk0, second half of f64);
        __glMgrim_Vertex2d(v1->unk0, second half of f64);
        __glMgrim_End();
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Rectf(f32 x1, f32 y1, f32 x2, f32 y2) {
    if (__glBeginMode != 1) {
        __glMgrim_Begin(GL_POLYGON);
        __glMgrim_Vertex2f(x1, y1);
        __glMgrim_Vertex2f(x2, y1);
        __glMgrim_Vertex2f(x2, y2);
        __glMgrim_Vertex2f(x1, y2);
        __glMgrim_End();
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Rectfv(f32 *v1, f32 *v2) {
    if (__glBeginMode != 1) {
        __glMgrim_Begin(GL_POLYGON);
        __glMgrim_Vertex2f(v1->unk0, v1->unk4);
        __glMgrim_Vertex2f(v2->unk0, v1->unk4);
        __glMgrim_Vertex2f(v2->unk0, v2->unk4);
        __glMgrim_Vertex2f(v1->unk0, v2->unk4);
        __glMgrim_End();
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Recti(s32 x1, s32 y1, s32 x2, s32 y2) {
    if (__glBeginMode != 1) {
        __glMgrim_Begin(GL_POLYGON);
        __glMgrim_Vertex2i(x1, y1);
        __glMgrim_Vertex2i(x2, y1);
        __glMgrim_Vertex2i(x2, y2);
        __glMgrim_Vertex2i(x1, y2);
        __glMgrim_End();
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Rectiv(s32 *v1, s32 *v2) {
    if (__glBeginMode != 1) {
        __glMgrim_Begin(GL_POLYGON);
        __glMgrim_Vertex2i(v1->unk0, v1->unk4);
        __glMgrim_Vertex2i(v2->unk0, v1->unk4);
        __glMgrim_Vertex2i(v2->unk0, v2->unk4);
        __glMgrim_Vertex2i(v1->unk0, v2->unk4);
        __glMgrim_End();
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Rects(s16 x1, s16 y1, s16 x2, s16 y2) {
    if (__glBeginMode != 1) {
        __glMgrim_Begin(GL_POLYGON);
        __glMgrim_Vertex2s(x1, y1);
        __glMgrim_Vertex2s(x2, y1);
        __glMgrim_Vertex2s(x2, y2);
        __glMgrim_Vertex2s(x1, y2);
        __glMgrim_End();
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Rectsv(s16 *v1, s16 *v2) {
    if (__glBeginMode != 1) {
        __glMgrim_Begin(GL_POLYGON);
        __glMgrim_Vertex2s(v1->unk0, v1->unk2);
        __glMgrim_Vertex2s(v2->unk0, v1->unk2);
        __glMgrim_Vertex2s(v2->unk0, v2->unk2);
        __glMgrim_Vertex2s(v1->unk0, v2->unk2);
        __glMgrim_End();
        return;
    }
    __glSetError(0x502);
}
