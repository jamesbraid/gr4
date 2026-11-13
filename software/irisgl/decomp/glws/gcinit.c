Error occurred while processing instruction: sdc1 $f1, 0xb88($s0)

Error occurred while processing instruction: sdc1 $f1, 0xb88($s0)

Tried to use a double-precision instruction with odd-numbered float register $f1
Tried to use a double-precision instruction with odd-numbered float register $f1
extern s32 __iglooNoReleaseContext;
extern s32 gl_DisplayListCharStr;
extern ? sub_0f020000;

void gl_init_wstate(void *arg0) {
    s32 temp_v0;
    void *temp_a2;
    void *temp_a3;

    temp_v0 = __iglooGetGraphicsType();
    if (temp_v0 != 2) {
        if (temp_v0 != 8) {
            gl_iglooGouraudCIDepthCue = 1;
        } else {
            gl_iglooGouraudCIDepthCue = 0;
        }
    } else {
        gl_iglooGouraudCIDepthCue = 0;
    }
    gl_iglooUseTexObj = 1;
    if ((temp_v0 != 3) && (temp_v0 != 4)) {

    } else {
        uname(sp);
        if ((sp202 == 0x35) && (sp204 == 0x33)) {
            gl_iglooUseTexObj = 0;
        }
    }
    if (getenv(&sub_0f020000 + 0x2EC0) != NULL) {
        gl_iglooUseTexObj = 1;
    }
    if (getenv(&sub_0f020000 + 0x2ED8) != NULL) {
        gl_iglooUseTexObj = 0;
    }
    if (getenv(&sub_0f020000 + 0x2EF0) != NULL) {
        gl_DisplayListCharStr = 0;
    } else {
        gl_DisplayListCharStr = 1;
    }
    if (getenv(&sub_0f020000 + 0x2F10) != NULL) {
        __iglooNoReleaseContext = 1;
    }
    // Error: Tried to use a double-precision instruction with odd-numbered float register $f1
    // At instruction: sdc1 $f1, 0xb88($s0)
}
