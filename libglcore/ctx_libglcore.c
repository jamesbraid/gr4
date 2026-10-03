typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef float f32;
typedef double f64;
typedef unsigned int size_t;
typedef enum GLenum {
    GL_NONE = 0,
    GL_POINTS = 0x0000,
    GL_FALSE = 0,
    GL_NO_ERROR = 0,
    GL_ZERO = 0,
    GL_TRUE = 1,
    GL_LINES = 0x0001,
    GL_ONE = 1,
    GL_LINE_LOOP = 0x0002,
    GL_LINE_STRIP = 0x0003,
    GL_TRIANGLES = 0x0004,
    GL_TRIANGLE_STRIP = 0x0005,
    GL_TRIANGLE_FAN = 0x0006,
    GL_QUADS = 0x0007,
    GL_QUAD_STRIP = 0x0008,
    GL_POLYGON = 0x0009,
    GL_ACCUM = 0x0100,
    GL_LOAD = 0x0101,
    GL_RETURN = 0x0102,
    GL_MULT = 0x0103,
    GL_ADD = 0x0104,
    GL_NEVER = 0x0200,
    GL_LESS = 0x0201,
    GL_EQUAL = 0x0202,
    GL_LEQUAL = 0x0203,
    GL_GREATER = 0x0204,
    GL_NOTEQUAL = 0x0205,
    GL_GEQUAL = 0x0206,
    GL_ALWAYS = 0x0207,
    GL_SRC_COLOR = 0x0300,
    GL_ONE_MINUS_SRC_COLOR = 0x0301,
    GL_SRC_ALPHA = 0x0302,
    GL_ONE_MINUS_SRC_ALPHA = 0x0303,
    GL_DST_ALPHA = 0x0304,
    GL_ONE_MINUS_DST_ALPHA = 0x0305,
    GL_DST_COLOR = 0x0306,
    GL_ONE_MINUS_DST_COLOR = 0x0307,
    GL_SRC_ALPHA_SATURATE = 0x0308,
    GL_FRONT_LEFT = 0x0400,
    GL_FRONT_RIGHT = 0x0401,
    GL_BACK_LEFT = 0x0402,
    GL_BACK_RIGHT = 0x0403,
    GL_FRONT = 0x0404,
    GL_BACK = 0x0405,
    GL_LEFT = 0x0406,
    GL_RIGHT = 0x0407,
    GL_FRONT_AND_BACK = 0x0408,
    GL_AUX0 = 0x0409,
    GL_AUX1 = 0x040A,
    GL_AUX2 = 0x040B,
    GL_AUX3 = 0x040C,
    GL_INVALID_ENUM = 0x0500,
    GL_INVALID_VALUE = 0x0501,
    GL_INVALID_OPERATION = 0x0502,
    GL_STACK_OVERFLOW = 0x0503,
    GL_STACK_UNDERFLOW = 0x0504,
    GL_OUT_OF_MEMORY = 0x0505,
    GL_2D = 0x0600,
    GL_3D = 0x0601,
    GL_3D_COLOR = 0x0602,
    GL_3D_COLOR_TEXTURE = 0x0603,
    GL_4D_COLOR_TEXTURE = 0x0604,
    GL_PASS_THROUGH_TOKEN = 0x0700,
    GL_POINT_TOKEN = 0x0701,
    GL_LINE_TOKEN = 0x0702,
    GL_POLYGON_TOKEN = 0x0703,
    GL_BITMAP_TOKEN = 0x0704,
    GL_DRAW_PIXEL_TOKEN = 0x0705,
    GL_COPY_PIXEL_TOKEN = 0x0706,
    GL_LINE_RESET_TOKEN = 0x0707,
    GL_EXP = 0x0800,
    GL_EXP2 = 0x0801,
    GL_CW = 0x0900,
    GL_CCW = 0x0901,
    GL_COEFF = 0x0A00,
    GL_ORDER = 0x0A01,
    GL_DOMAIN = 0x0A02,
    GL_CURRENT_COLOR = 0x0B00,
    GL_CURRENT_INDEX = 0x0B01,
    GL_CURRENT_NORMAL = 0x0B02,
    GL_CURRENT_TEXTURE_COORDS = 0x0B03,
    GL_CURRENT_RASTER_COLOR = 0x0B04,
    GL_CURRENT_RASTER_INDEX = 0x0B05,
    GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06,
    GL_CURRENT_RASTER_POSITION = 0x0B07,
    GL_CURRENT_RASTER_POSITION_VALID = 0x0B08,
    GL_CURRENT_RASTER_DISTANCE = 0x0B09,
    GL_POINT_SMOOTH = 0x0B10,
    GL_POINT_SIZE = 0x0B11,
    GL_POINT_SIZE_RANGE = 0x0B12,
    GL_POINT_SIZE_GRANULARITY = 0x0B13,
    GL_LINE_SMOOTH = 0x0B20,
    GL_LINE_WIDTH = 0x0B21,
    GL_LINE_WIDTH_RANGE = 0x0B22,
    GL_LINE_WIDTH_GRANULARITY = 0x0B23,
    GL_LINE_STIPPLE = 0x0B24,
    GL_LINE_STIPPLE_PATTERN = 0x0B25,
    GL_LINE_STIPPLE_REPEAT = 0x0B26,
    GL_LIST_MODE = 0x0B30,
    GL_MAX_LIST_NESTING = 0x0B31,
    GL_LIST_BASE = 0x0B32,
    GL_LIST_INDEX = 0x0B33,
    GL_POLYGON_MODE = 0x0B40,
    GL_POLYGON_SMOOTH = 0x0B41,
    GL_POLYGON_STIPPLE = 0x0B42,
    GL_EDGE_FLAG = 0x0B43,
    GL_CULL_FACE = 0x0B44,
    GL_CULL_FACE_MODE = 0x0B45,
    GL_FRONT_FACE = 0x0B46,
    GL_LIGHTING = 0x0B50,
    GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51,
    GL_LIGHT_MODEL_TWO_SIDE = 0x0B52,
    GL_LIGHT_MODEL_AMBIENT = 0x0B53,
    GL_SHADE_MODEL = 0x0B54,
    GL_COLOR_MATERIAL_FACE = 0x0B55,
    GL_COLOR_MATERIAL_PARAMETER = 0x0B56,
    GL_COLOR_MATERIAL = 0x0B57,
    GL_FOG = 0x0B60,
    GL_FOG_INDEX = 0x0B61,
    GL_FOG_DENSITY = 0x0B62,
    GL_FOG_START = 0x0B63,
    GL_FOG_END = 0x0B64,
    GL_FOG_MODE = 0x0B65,
    GL_FOG_COLOR = 0x0B66,
    GL_DEPTH_RANGE = 0x0B70,
    GL_DEPTH_TEST = 0x0B71,
    GL_DEPTH_WRITEMASK = 0x0B72,
    GL_DEPTH_CLEAR_VALUE = 0x0B73,
    GL_DEPTH_FUNC = 0x0B74,
    GL_ACCUM_CLEAR_VALUE = 0x0B80,
    GL_STENCIL_TEST = 0x0B90,
    GL_STENCIL_CLEAR_VALUE = 0x0B91,
    GL_STENCIL_FUNC = 0x0B92,
    GL_STENCIL_VALUE_MASK = 0x0B93,
    GL_STENCIL_FAIL = 0x0B94,
    GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95,
    GL_STENCIL_PASS_DEPTH_PASS = 0x0B96,
    GL_STENCIL_REF = 0x0B97,
    GL_STENCIL_WRITEMASK = 0x0B98,
    GL_MATRIX_MODE = 0x0BA0,
    GL_NORMALIZE = 0x0BA1,
    GL_VIEWPORT = 0x0BA2,
    GL_MODELVIEW_STACK_DEPTH = 0x0BA3,
    GL_PROJECTION_STACK_DEPTH = 0x0BA4,
    GL_TEXTURE_STACK_DEPTH = 0x0BA5,
    GL_MODELVIEW_MATRIX = 0x0BA6,
    GL_PROJECTION_MATRIX = 0x0BA7,
    GL_TEXTURE_MATRIX = 0x0BA8,
    GL_ATTRIB_STACK_DEPTH = 0x0BB0,
    GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1,
    GL_ALPHA_TEST = 0x0BC0,
    GL_ALPHA_TEST_FUNC = 0x0BC1,
    GL_ALPHA_TEST_REF = 0x0BC2,
    GL_DITHER = 0x0BD0,
    GL_BLEND_DST = 0x0BE0,
    GL_BLEND_SRC = 0x0BE1,
    GL_BLEND = 0x0BE2,
    GL_LOGIC_OP_MODE = 0x0BF0,
    GL_INDEX_LOGIC_OP = 0x0BF1,
    GL_LOGIC_OP = 0x0BF1,
    GL_COLOR_LOGIC_OP = 0x0BF2,
    GL_AUX_BUFFERS = 0x0C00,
    GL_DRAW_BUFFER = 0x0C01,
    GL_READ_BUFFER = 0x0C02,
    GL_SCISSOR_BOX = 0x0C10,
    GL_SCISSOR_TEST = 0x0C11,
    GL_INDEX_CLEAR_VALUE = 0x0C20,
    GL_INDEX_WRITEMASK = 0x0C21,
    GL_COLOR_CLEAR_VALUE = 0x0C22,
    GL_COLOR_WRITEMASK = 0x0C23,
    GL_INDEX_MODE = 0x0C30,
    GL_RGBA_MODE = 0x0C31,
    GL_DOUBLEBUFFER = 0x0C32,
    GL_STEREO = 0x0C33,
    GL_RENDER_MODE = 0x0C40,
    GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50,
    GL_POINT_SMOOTH_HINT = 0x0C51,
    GL_LINE_SMOOTH_HINT = 0x0C52,
    GL_POLYGON_SMOOTH_HINT = 0x0C53,
    GL_FOG_HINT = 0x0C54,
    GL_TEXTURE_GEN_S = 0x0C60,
    GL_TEXTURE_GEN_T = 0x0C61,
    GL_TEXTURE_GEN_R = 0x0C62,
    GL_TEXTURE_GEN_Q = 0x0C63,
    GL_PIXEL_MAP_I_TO_I = 0x0C70,
    GL_PIXEL_MAP_S_TO_S = 0x0C71,
    GL_PIXEL_MAP_I_TO_R = 0x0C72,
    GL_PIXEL_MAP_I_TO_G = 0x0C73,
    GL_PIXEL_MAP_I_TO_B = 0x0C74,
    GL_PIXEL_MAP_I_TO_A = 0x0C75,
    GL_PIXEL_MAP_R_TO_R = 0x0C76,
    GL_PIXEL_MAP_G_TO_G = 0x0C77,
    GL_PIXEL_MAP_B_TO_B = 0x0C78,
    GL_PIXEL_MAP_A_TO_A = 0x0C79,
    GL_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0,
    GL_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1,
    GL_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2,
    GL_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3,
    GL_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4,
    GL_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5,
    GL_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6,
    GL_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7,
    GL_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8,
    GL_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9,
    GL_UNPACK_SWAP_BYTES = 0x0CF0,
    GL_UNPACK_LSB_FIRST = 0x0CF1,
    GL_UNPACK_ROW_LENGTH = 0x0CF2,
    GL_UNPACK_SKIP_ROWS = 0x0CF3,
    GL_UNPACK_SKIP_PIXELS = 0x0CF4,
    GL_UNPACK_ALIGNMENT = 0x0CF5,
    GL_PACK_SWAP_BYTES = 0x0D00,
    GL_PACK_LSB_FIRST = 0x0D01,
    GL_PACK_ROW_LENGTH = 0x0D02,
    GL_PACK_SKIP_ROWS = 0x0D03,
    GL_PACK_SKIP_PIXELS = 0x0D04,
    GL_PACK_ALIGNMENT = 0x0D05,
    GL_MAP_COLOR = 0x0D10,
    GL_MAP_STENCIL = 0x0D11,
    GL_INDEX_SHIFT = 0x0D12,
    GL_INDEX_OFFSET = 0x0D13,
    GL_RED_SCALE = 0x0D14,
    GL_RED_BIAS = 0x0D15,
    GL_ZOOM_X = 0x0D16,
    GL_ZOOM_Y = 0x0D17,
    GL_GREEN_SCALE = 0x0D18,
    GL_GREEN_BIAS = 0x0D19,
    GL_BLUE_SCALE = 0x0D1A,
    GL_BLUE_BIAS = 0x0D1B,
    GL_ALPHA_SCALE = 0x0D1C,
    GL_ALPHA_BIAS = 0x0D1D,
    GL_DEPTH_SCALE = 0x0D1E,
    GL_DEPTH_BIAS = 0x0D1F,
    GL_MAX_EVAL_ORDER = 0x0D30,
    GL_MAX_LIGHTS = 0x0D31,
    GL_MAX_CLIP_PLANES = 0x0D32,
    GL_MAX_TEXTURE_SIZE = 0x0D33,
    GL_MAX_PIXEL_MAP_TABLE = 0x0D34,
    GL_MAX_ATTRIB_STACK_DEPTH = 0x0D35,
    GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36,
    GL_MAX_NAME_STACK_DEPTH = 0x0D37,
    GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38,
    GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39,
    GL_MAX_VIEWPORT_DIMS = 0x0D3A,
    GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B,
    GL_NAME_STACK_DEPTH = 0x0D70,
    GL_AUTO_NORMAL = 0x0D80,
    GL_MAP1_COLOR_4 = 0x0D90,
    GL_MAP1_INDEX = 0x0D91,
    GL_MAP1_NORMAL = 0x0D92,
    GL_MAP1_TEXTURE_COORD_1 = 0x0D93,
    GL_MAP1_TEXTURE_COORD_2 = 0x0D94,
    GL_MAP1_TEXTURE_COORD_3 = 0x0D95,
    GL_MAP1_TEXTURE_COORD_4 = 0x0D96,
    GL_MAP1_VERTEX_3 = 0x0D97,
    GL_MAP1_VERTEX_4 = 0x0D98,
    GL_MAP2_COLOR_4 = 0x0DB0,
    GL_MAP2_INDEX = 0x0DB1,
    GL_MAP2_NORMAL = 0x0DB2,
    GL_MAP2_TEXTURE_COORD_1 = 0x0DB3,
    GL_MAP2_TEXTURE_COORD_2 = 0x0DB4,
    GL_MAP2_TEXTURE_COORD_3 = 0x0DB5,
    GL_MAP2_TEXTURE_COORD_4 = 0x0DB6,
    GL_MAP2_VERTEX_3 = 0x0DB7,
    GL_MAP2_VERTEX_4 = 0x0DB8,
    GL_MAP1_GRID_DOMAIN = 0x0DD0,
    GL_MAP1_GRID_SEGMENTS = 0x0DD1,
    GL_MAP2_GRID_DOMAIN = 0x0DD2,
    GL_MAP2_GRID_SEGMENTS = 0x0DD3,
    GL_TEXTURE_1D = 0x0DE0,
    GL_TEXTURE_2D = 0x0DE1,
    GL_FEEDBACK_BUFFER_POINTER = 0x0DF0,
    GL_FEEDBACK_BUFFER_SIZE = 0x0DF1,
    GL_FEEDBACK_BUFFER_TYPE = 0x0DF2,
    GL_SELECTION_BUFFER_POINTER = 0x0DF3,
    GL_SELECTION_BUFFER_SIZE = 0x0DF4,
    GL_TEXTURE_WIDTH = 0x1000,
    GL_TEXTURE_HEIGHT = 0x1001,
    GL_TEXTURE_COMPONENTS = 0x1003,
    GL_TEXTURE_INTERNAL_FORMAT = 0x1003,
    GL_TEXTURE_BORDER_COLOR = 0x1004,
    GL_TEXTURE_BORDER = 0x1005,
    GL_DONT_CARE = 0x1100,
    GL_FASTEST = 0x1101,
    GL_NICEST = 0x1102,
    GL_AMBIENT = 0x1200,
    GL_DIFFUSE = 0x1201,
    GL_SPECULAR = 0x1202,
    GL_POSITION = 0x1203,
    GL_SPOT_DIRECTION = 0x1204,
    GL_SPOT_EXPONENT = 0x1205,
    GL_SPOT_CUTOFF = 0x1206,
    GL_CONSTANT_ATTENUATION = 0x1207,
    GL_LINEAR_ATTENUATION = 0x1208,
    GL_QUADRATIC_ATTENUATION = 0x1209,
    GL_COMPILE = 0x1300,
    GL_COMPILE_AND_EXECUTE = 0x1301,
    GL_BYTE = 0x1400,
    GL_UNSIGNED_BYTE = 0x1401,
    GL_SHORT = 0x1402,
    GL_UNSIGNED_SHORT = 0x1403,
    GL_INT = 0x1404,
    GL_UNSIGNED_INT = 0x1405,
    GL_FLOAT = 0x1406,
    GL_2_BYTES = 0x1407,
    GL_3_BYTES = 0x1408,
    GL_4_BYTES = 0x1409,
    GL_DOUBLE = 0x140A,
    GL_CLEAR = 0x1500,
    GL_AND = 0x1501,
    GL_AND_REVERSE = 0x1502,
    GL_COPY = 0x1503,
    GL_AND_INVERTED = 0x1504,
    GL_NOOP = 0x1505,
    GL_XOR = 0x1506,
    GL_OR = 0x1507,
    GL_NOR = 0x1508,
    GL_EQUIV = 0x1509,
    GL_INVERT = 0x150A,
    GL_OR_REVERSE = 0x150B,
    GL_COPY_INVERTED = 0x150C,
    GL_OR_INVERTED = 0x150D,
    GL_NAND = 0x150E,
    GL_SET = 0x150F,
    GL_EMISSION = 0x1600,
    GL_SHININESS = 0x1601,
    GL_AMBIENT_AND_DIFFUSE = 0x1602,
    GL_COLOR_INDEXES = 0x1603,
    GL_MODELVIEW = 0x1700,
    GL_PROJECTION = 0x1701,
    GL_TEXTURE = 0x1702,
    GL_COLOR = 0x1800,
    GL_DEPTH = 0x1801,
    GL_STENCIL = 0x1802,
    GL_COLOR_INDEX = 0x1900,
    GL_STENCIL_INDEX = 0x1901,
    GL_DEPTH_COMPONENT = 0x1902,
    GL_RED = 0x1903,
    GL_GREEN = 0x1904,
    GL_BLUE = 0x1905,
    GL_ALPHA = 0x1906,
    GL_RGB = 0x1907,
    GL_RGBA = 0x1908,
    GL_LUMINANCE = 0x1909,
    GL_LUMINANCE_ALPHA = 0x190A,
    GL_BITMAP = 0x1A00,
    GL_POINT = 0x1B00,
    GL_LINE = 0x1B01,
    GL_FILL = 0x1B02,
    GL_RENDER = 0x1C00,
    GL_FEEDBACK = 0x1C01,
    GL_SELECT = 0x1C02,
    GL_FLAT = 0x1D00,
    GL_SMOOTH = 0x1D01,
    GL_KEEP = 0x1E00,
    GL_REPLACE = 0x1E01,
    GL_INCR = 0x1E02,
    GL_DECR = 0x1E03,
    GL_VENDOR = 0x1F00,
    GL_RENDERER = 0x1F01,
    GL_VERSION = 0x1F02,
    GL_EXTENSIONS = 0x1F03,
    GL_S = 0x2000,
    GL_T = 0x2001,
    GL_R = 0x2002,
    GL_Q = 0x2003,
    GL_MODULATE = 0x2100,
    GL_DECAL = 0x2101,
    GL_TEXTURE_ENV_MODE = 0x2200,
    GL_TEXTURE_ENV_COLOR = 0x2201,
    GL_TEXTURE_ENV = 0x2300,
    GL_EYE_LINEAR = 0x2400,
    GL_OBJECT_LINEAR = 0x2401,
    GL_SPHERE_MAP = 0x2402,
    GL_TEXTURE_GEN_MODE = 0x2500,
    GL_OBJECT_PLANE = 0x2501,
    GL_EYE_PLANE = 0x2502,
    GL_NEAREST = 0x2600,
    GL_LINEAR = 0x2601,
    GL_NEAREST_MIPMAP_NEAREST = 0x2700,
    GL_LINEAR_MIPMAP_NEAREST = 0x2701,
    GL_NEAREST_MIPMAP_LINEAR = 0x2702,
    GL_LINEAR_MIPMAP_LINEAR = 0x2703,
    GL_TEXTURE_MAG_FILTER = 0x2800,
    GL_TEXTURE_MIN_FILTER = 0x2801,
    GL_TEXTURE_WRAP_S = 0x2802,
    GL_TEXTURE_WRAP_T = 0x2803,
    GL_CLAMP = 0x2900,
    GL_REPEAT = 0x2901,
    GL_POLYGON_OFFSET_UNITS = 0x2A00,
    GL_POLYGON_OFFSET_POINT = 0x2A01,
    GL_POLYGON_OFFSET_LINE = 0x2A02,
    GL_R3_G3_B2 = 0x2A10,
    GL_V2F = 0x2A20,
    GL_V3F = 0x2A21,
    GL_C4UB_V2F = 0x2A22,
    GL_C4UB_V3F = 0x2A23,
    GL_C3F_V3F = 0x2A24,
    GL_N3F_V3F = 0x2A25,
    GL_C4F_N3F_V3F = 0x2A26,
    GL_T2F_V3F = 0x2A27,
    GL_T4F_V4F = 0x2A28,
    GL_T2F_C4UB_V3F = 0x2A29,
    GL_T2F_C3F_V3F = 0x2A2A,
    GL_T2F_N3F_V3F = 0x2A2B,
    GL_T2F_C4F_N3F_V3F = 0x2A2C,
    GL_T4F_C4F_N3F_V4F = 0x2A2D,
    GL_CLIP_PLANE0 = 0x3000,
    GL_CLIP_PLANE1 = 0x3001,
    GL_CLIP_PLANE2 = 0x3002,
    GL_CLIP_PLANE3 = 0x3003,
    GL_CLIP_PLANE4 = 0x3004,
    GL_CLIP_PLANE5 = 0x3005,
    GL_LIGHT0 = 0x4000,
    GL_LIGHT1 = 0x4001,
    GL_LIGHT2 = 0x4002,
    GL_LIGHT3 = 0x4003,
    GL_LIGHT4 = 0x4004,
    GL_LIGHT5 = 0x4005,
    GL_LIGHT6 = 0x4006,
    GL_LIGHT7 = 0x4007,
    GL_ABGR_EXT = 0x8000,
    GL_CONSTANT_COLOR_EXT = 0x8001,
    GL_ONE_MINUS_CONSTANT_COLOR_EXT = 0x8002,
    GL_CONSTANT_ALPHA_EXT = 0x8003,
    GL_ONE_MINUS_CONSTANT_ALPHA_EXT = 0x8004,
    GL_BLEND_COLOR_EXT = 0x8005,
    GL_FUNC_ADD_EXT = 0x8006,
    GL_MIN_EXT = 0x8007,
    GL_MAX_EXT = 0x8008,
    GL_BLEND_EQUATION_EXT = 0x8009,
    GL_FUNC_SUBTRACT_EXT = 0x800A,
    GL_FUNC_REVERSE_SUBTRACT_EXT = 0x800B,
    GL_CONVOLUTION_1D_EXT = 0x8010,
    GL_CONVOLUTION_2D_EXT = 0x8011,
    GL_SEPARABLE_2D_EXT = 0x8012,
    GL_CONVOLUTION_BORDER_MODE_EXT = 0x8013,
    GL_CONVOLUTION_FILTER_SCALE_EXT = 0x8014,
    GL_CONVOLUTION_FILTER_BIAS_EXT = 0x8015,
    GL_REDUCE_EXT = 0x8016,
    GL_CONVOLUTION_FORMAT_EXT = 0x8017,
    GL_CONVOLUTION_WIDTH_EXT = 0x8018,
    GL_CONVOLUTION_HEIGHT_EXT = 0x8019,
    GL_MAX_CONVOLUTION_WIDTH_EXT = 0x801A,
    GL_MAX_CONVOLUTION_HEIGHT_EXT = 0x801B,
    GL_POST_CONVOLUTION_RED_SCALE_EXT = 0x801C,
    GL_POST_CONVOLUTION_GREEN_SCALE_EXT = 0x801D,
    GL_POST_CONVOLUTION_BLUE_SCALE_EXT = 0x801E,
    GL_POST_CONVOLUTION_ALPHA_SCALE_EXT = 0x801F,
    GL_POST_CONVOLUTION_RED_BIAS_EXT = 0x8020,
    GL_POST_CONVOLUTION_GREEN_BIAS_EXT = 0x8021,
    GL_POST_CONVOLUTION_BLUE_BIAS_EXT = 0x8022,
    GL_POST_CONVOLUTION_ALPHA_BIAS_EXT = 0x8023,
    GL_HISTOGRAM_EXT = 0x8024,
    GL_PROXY_HISTOGRAM_EXT = 0x8025,
    GL_HISTOGRAM_WIDTH_EXT = 0x8026,
    GL_HISTOGRAM_FORMAT_EXT = 0x8027,
    GL_HISTOGRAM_RED_SIZE_EXT = 0x8028,
    GL_HISTOGRAM_GREEN_SIZE_EXT = 0x8029,
    GL_HISTOGRAM_BLUE_SIZE_EXT = 0x802A,
    GL_HISTOGRAM_ALPHA_SIZE_EXT = 0x802B,
    GL_HISTOGRAM_LUMINANCE_SIZE_EXT = 0x802C,
    GL_HISTOGRAM_SINK_EXT = 0x802D,
    GL_MINMAX_EXT = 0x802E,
    GL_MINMAX_FORMAT_EXT = 0x802F,
    GL_MINMAX_SINK_EXT = 0x8030,
    GL_TABLE_TOO_LARGE_EXT = 0x8031,
    GL_UNSIGNED_BYTE_3_3_2_EXT = 0x8032,
    GL_UNSIGNED_SHORT_4_4_4_4_EXT = 0x8033,
    GL_UNSIGNED_SHORT_5_5_5_1_EXT = 0x8034,
    GL_UNSIGNED_INT_8_8_8_8_EXT = 0x8035,
    GL_UNSIGNED_INT_10_10_10_2_EXT = 0x8036,
    GL_POLYGON_OFFSET_EXT = 0x8037,
    GL_POLYGON_OFFSET_FILL = 0x8037,
    GL_POLYGON_OFFSET_FACTOR_EXT = 0x8038,
    GL_POLYGON_OFFSET_FACTOR = 0x8038,
    GL_POLYGON_OFFSET_BIAS_EXT = 0x8039,
    GL_ALPHA4_EXT = 0x803B,
    GL_ALPHA4 = 0x803B,
    GL_ALPHA8_EXT = 0x803C,
    GL_ALPHA8 = 0x803C,
    GL_ALPHA12_EXT = 0x803D,
    GL_ALPHA12 = 0x803D,
    GL_ALPHA16_EXT = 0x803E,
    GL_ALPHA16 = 0x803E,
    GL_LUMINANCE4_EXT = 0x803F,
    GL_LUMINANCE4 = 0x803F,
    GL_LUMINANCE8_EXT = 0x8040,
    GL_LUMINANCE8 = 0x8040,
    GL_LUMINANCE12_EXT = 0x8041,
    GL_LUMINANCE12 = 0x8041,
    GL_LUMINANCE16_EXT = 0x8042,
    GL_LUMINANCE16 = 0x8042,
    GL_LUMINANCE4_ALPHA4_EXT = 0x8043,
    GL_LUMINANCE4_ALPHA4 = 0x8043,
    GL_LUMINANCE6_ALPHA2_EXT = 0x8044,
    GL_LUMINANCE6_ALPHA2 = 0x8044,
    GL_LUMINANCE8_ALPHA8_EXT = 0x8045,
    GL_LUMINANCE8_ALPHA8 = 0x8045,
    GL_LUMINANCE12_ALPHA4_EXT = 0x8046,
    GL_LUMINANCE12_ALPHA4 = 0x8046,
    GL_LUMINANCE12_ALPHA12_EXT = 0x8047,
    GL_LUMINANCE12_ALPHA12 = 0x8047,
    GL_LUMINANCE16_ALPHA16_EXT = 0x8048,
    GL_LUMINANCE16_ALPHA16 = 0x8048,
    GL_INTENSITY_EXT = 0x8049,
    GL_INTENSITY = 0x8049,
    GL_INTENSITY4_EXT = 0x804A,
    GL_INTENSITY4 = 0x804A,
    GL_INTENSITY8_EXT = 0x804B,
    GL_INTENSITY8 = 0x804B,
    GL_INTENSITY12_EXT = 0x804C,
    GL_INTENSITY12 = 0x804C,
    GL_INTENSITY16_EXT = 0x804D,
    GL_INTENSITY16 = 0x804D,
    GL_RGB2_EXT = 0x804E,
    GL_RGB4_EXT = 0x804F,
    GL_RGB4 = 0x804F,
    GL_RGB5_EXT = 0x8050,
    GL_RGB5 = 0x8050,
    GL_RGB8_EXT = 0x8051,
    GL_RGB8 = 0x8051,
    GL_RGB10_EXT = 0x8052,
    GL_RGB10 = 0x8052,
    GL_RGB12_EXT = 0x8053,
    GL_RGB12 = 0x8053,
    GL_RGB16_EXT = 0x8054,
    GL_RGB16 = 0x8054,
    GL_RGBA2_EXT = 0x8055,
    GL_RGBA2 = 0x8055,
    GL_RGBA4_EXT = 0x8056,
    GL_RGBA4 = 0x8056,
    GL_RGB5_A1_EXT = 0x8057,
    GL_RGB5_A1 = 0x8057,
    GL_RGBA8_EXT = 0x8058,
    GL_RGBA8 = 0x8058,
    GL_RGB10_A2_EXT = 0x8059,
    GL_RGB10_A2 = 0x8059,
    GL_RGBA12_EXT = 0x805A,
    GL_RGBA12 = 0x805A,
    GL_RGBA16_EXT = 0x805B,
    GL_RGBA16 = 0x805B,
    GL_TEXTURE_RED_SIZE_EXT = 0x805C,
    GL_TEXTURE_RED_SIZE = 0x805C,
    GL_TEXTURE_GREEN_SIZE_EXT = 0x805D,
    GL_TEXTURE_GREEN_SIZE = 0x805D,
    GL_TEXTURE_BLUE_SIZE_EXT = 0x805E,
    GL_TEXTURE_BLUE_SIZE = 0x805E,
    GL_TEXTURE_ALPHA_SIZE_EXT = 0x805F,
    GL_TEXTURE_ALPHA_SIZE = 0x805F,
    GL_TEXTURE_LUMINANCE_SIZE_EXT = 0x8060,
    GL_TEXTURE_LUMINANCE_SIZE = 0x8060,
    GL_TEXTURE_INTENSITY_SIZE_EXT = 0x8061,
    GL_TEXTURE_INTENSITY_SIZE = 0x8061,
    GL_REPLACE_EXT = 0x8062,
    GL_PROXY_TEXTURE_1D_EXT = 0x8063,
    GL_PROXY_TEXTURE_1D = 0x8063,
    GL_PROXY_TEXTURE_2D_EXT = 0x8064,
    GL_PROXY_TEXTURE_2D = 0x8064,
    GL_TEXTURE_TOO_LARGE_EXT = 0x8065,
    GL_TEXTURE_PRIORITY_EXT = 0x8066,
    GL_TEXTURE_PRIORITY = 0x8066,
    GL_TEXTURE_RESIDENT_EXT = 0x8067,
    GL_TEXTURE_RESIDENT = 0x8067,
    GL_TEXTURE_1D_BINDING_EXT = 0x8068,
    GL_TEXTURE_BINDING_1D = 0x8068,
    GL_TEXTURE_2D_BINDING_EXT = 0x8069,
    GL_TEXTURE_BINDING_2D = 0x8069,
    GL_TEXTURE_3D_BINDING_EXT = 0x806A,
    GL_PACK_SKIP_IMAGES_EXT = 0x806B,
    GL_PACK_IMAGE_HEIGHT_EXT = 0x806C,
    GL_UNPACK_SKIP_IMAGES_EXT = 0x806D,
    GL_UNPACK_IMAGE_HEIGHT_EXT = 0x806E,
    GL_TEXTURE_3D_EXT = 0x806F,
    GL_PROXY_TEXTURE_3D_EXT = 0x8070,
    GL_TEXTURE_DEPTH_EXT = 0x8071,
    GL_TEXTURE_WRAP_R_EXT = 0x8072,
    GL_MAX_3D_TEXTURE_SIZE_EXT = 0x8073,
    GL_VERTEX_ARRAY_EXT = 0x8074,
    GL_VERTEX_ARRAY = 0x8074,
    GL_NORMAL_ARRAY_EXT = 0x8075,
    GL_NORMAL_ARRAY = 0x8075,
    GL_COLOR_ARRAY_EXT = 0x8076,
    GL_COLOR_ARRAY = 0x8076,
    GL_INDEX_ARRAY_EXT = 0x8077,
    GL_INDEX_ARRAY = 0x8077,
    GL_TEXTURE_COORD_ARRAY_EXT = 0x8078,
    GL_TEXTURE_COORD_ARRAY = 0x8078,
    GL_EDGE_FLAG_ARRAY_EXT = 0x8079,
    GL_EDGE_FLAG_ARRAY = 0x8079,
    GL_VERTEX_ARRAY_SIZE_EXT = 0x807A,
    GL_VERTEX_ARRAY_SIZE = 0x807A,
    GL_VERTEX_ARRAY_TYPE_EXT = 0x807B,
    GL_VERTEX_ARRAY_TYPE = 0x807B,
    GL_VERTEX_ARRAY_STRIDE_EXT = 0x807C,
    GL_VERTEX_ARRAY_STRIDE = 0x807C,
    GL_VERTEX_ARRAY_COUNT_EXT = 0x807D,
    GL_NORMAL_ARRAY_TYPE_EXT = 0x807E,
    GL_NORMAL_ARRAY_TYPE = 0x807E,
    GL_NORMAL_ARRAY_STRIDE_EXT = 0x807F,
    GL_NORMAL_ARRAY_STRIDE = 0x807F,
    GL_NORMAL_ARRAY_COUNT_EXT = 0x8080,
    GL_COLOR_ARRAY_SIZE_EXT = 0x8081,
    GL_COLOR_ARRAY_SIZE = 0x8081,
    GL_COLOR_ARRAY_TYPE_EXT = 0x8082,
    GL_COLOR_ARRAY_TYPE = 0x8082,
    GL_COLOR_ARRAY_STRIDE_EXT = 0x8083,
    GL_COLOR_ARRAY_STRIDE = 0x8083,
    GL_COLOR_ARRAY_COUNT_EXT = 0x8084,
    GL_INDEX_ARRAY_TYPE_EXT = 0x8085,
    GL_INDEX_ARRAY_TYPE = 0x8085,
    GL_INDEX_ARRAY_STRIDE_EXT = 0x8086,
    GL_INDEX_ARRAY_STRIDE = 0x8086,
    GL_INDEX_ARRAY_COUNT_EXT = 0x8087,
    GL_TEXTURE_COORD_ARRAY_SIZE_EXT = 0x8088,
    GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088,
    GL_TEXTURE_COORD_ARRAY_TYPE_EXT = 0x8089,
    GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089,
    GL_TEXTURE_COORD_ARRAY_STRIDE_EXT = 0x808A,
    GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A,
    GL_TEXTURE_COORD_ARRAY_COUNT_EXT = 0x808B,
    GL_EDGE_FLAG_ARRAY_STRIDE_EXT = 0x808C,
    GL_EDGE_FLAG_ARRAY_STRIDE = 0x808C,
    GL_EDGE_FLAG_ARRAY_COUNT_EXT = 0x808D,
    GL_VERTEX_ARRAY_POINTER_EXT = 0x808E,
    GL_VERTEX_ARRAY_POINTER = 0x808E,
    GL_NORMAL_ARRAY_POINTER_EXT = 0x808F,
    GL_NORMAL_ARRAY_POINTER = 0x808F,
    GL_COLOR_ARRAY_POINTER_EXT = 0x8090,
    GL_COLOR_ARRAY_POINTER = 0x8090,
    GL_INDEX_ARRAY_POINTER_EXT = 0x8091,
    GL_INDEX_ARRAY_POINTER = 0x8091,
    GL_TEXTURE_COORD_ARRAY_POINTER_EXT = 0x8092,
    GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092,
    GL_EDGE_FLAG_ARRAY_POINTER_EXT = 0x8093,
    GL_EDGE_FLAG_ARRAY_POINTER = 0x8093,
    GL_COLOR_MATRIX_SGI = 0x80B1,
    GL_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80B2,
    GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80B3,
    GL_POST_COLOR_MATRIX_RED_SCALE_SGI = 0x80B4,
    GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI = 0x80B5,
    GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI = 0x80B6,
    GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI = 0x80B7,
    GL_POST_COLOR_MATRIX_RED_BIAS_SGI = 0x80B8,
    GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI = 0x80B9,
    GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI = 0x80BA,
    GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI = 0x80BB,
    GL_TEXTURE_COLOR_TABLE_SGI = 0x80BC,
    GL_PROXY_TEXTURE_COLOR_TABLE_SGI = 0x80BD,
    GL_COLOR_TABLE_SGI = 0x80D0,
    GL_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D1,
    GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D2,
    GL_PROXY_COLOR_TABLE_SGI = 0x80D3,
    GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D4,
    GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D5,
    GL_COLOR_TABLE_SCALE_SGI = 0x80D6,
    GL_COLOR_TABLE_BIAS_SGI = 0x80D7,
    GL_COLOR_TABLE_FORMAT_SGI = 0x80D8,
    GL_COLOR_TABLE_WIDTH_SGI = 0x80D9,
    GL_COLOR_TABLE_RED_SIZE_SGI = 0x80DA,
    GL_COLOR_TABLE_GREEN_SIZE_SGI = 0x80DB,
    GL_COLOR_TABLE_BLUE_SIZE_SGI = 0x80DC,
    GL_COLOR_TABLE_ALPHA_SIZE_SGI = 0x80DD,
    GL_COLOR_TABLE_LUMINANCE_SIZE_SGI = 0x80DE,
    GL_COLOR_TABLE_INTENSITY_SIZE_SGI = 0x80DF,
    GL_FILTER4_SGIS = 0x8146,
    GL_TEXTURE_FILTER4_SIZE_SGIS = 0x8147,
    GL_POST_TEXTURE_FILTER_BIAS_SGIX = 0x8179,
    GL_POST_TEXTURE_FILTER_SCALE_SGIX = 0x817A,
    GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = 0x817B,
    GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = 0x817C
} GLenum;
typedef unsigned char GLboolean;
typedef unsigned int GLbitfield;
typedef signed char GLbyte;
typedef short GLshort;
typedef int GLint;
typedef int GLsizei;
typedef unsigned char GLubyte;
typedef unsigned short GLushort;
typedef unsigned int GLuint;
typedef float GLfloat;
typedef float GLclampf;
typedef double GLdouble;
typedef double GLclampd;
typedef void GLvoid;
struct __GLcontextRec;
typedef struct __GLcontextRec __GLcontext;
struct __GLattributeRec;
typedef struct __GLattributeRec __GLattribute;
typedef struct __GLcoordRec {
    GLfloat x, y, z, w;
} __GLcoord;
typedef struct __GLcolorRec {
    GLfloat r, g, b, a;
} __GLcolor;
struct __GLmatrixRec;
typedef struct __GLmatrixRec __GLmatrix;
struct __GLmatrixRec {
    GLfloat matrix[4][4];
    GLenum matrixType;
    GLshort width, height;
    void (*xf2)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m);
    void (*xf3)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m);
    void (*xf4)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m);
    char pad[4];
};
typedef struct __GLtransformRec {
    __GLmatrix matrix;
    __GLmatrix inverseTranspose;
    __GLmatrix mvp;
    GLuint sequence;
    GLboolean updateInverse;
    char pad[3];
    GLfloat rescaleFactor;
} __GLtransform;
typedef struct __GLvertexRec {
    GLuint flagBits;
    GLuint pad4;
    void (*validate)(struct __GLcontextRec *gc, struct __GLvertexRec *v);
    GLuint pad0C;
    __GLcoord obj;
    __GLcoord normal;
    __GLcoord texture[1];
    char pad40[0x20];
    __GLcoord eye;
    __GLcoord clip;
    __GLcoord window;
    __GLcolor colors[2];
    char padB0[0x10];
} __GLvertex;
typedef struct __GLimportsRec {
    void *(*malloc)(__GLcontext *gc, size_t size);
    void *(*calloc)(__GLcontext *gc, size_t numElem, size_t elemSize);
    void *(*realloc)(__GLcontext *gc, void *oldAddr, size_t newSize);
    void (*free)(__GLcontext *gc, void *addr);
    void (*warning)(__GLcontext *gc, char *fmt);
    void (*fatal)(__GLcontext *gc, char *fmt);
    char *(*getenv)(__GLcontext *gc, const char *var);
    int (*atoi)(__GLcontext *gc, const char *str);
    int (*sprintf)(__GLcontext *gc, char *str, const char *fmt, ...);
    void *(*fopen)(__GLcontext *gc, const char *path, const char *mode);
    int (*fclose)(__GLcontext *gc, void *stream);
    int (*fprintf)(__GLcontext *gc, void *stream, const char *fmt, ...);
    void *(*getDrawablePrivate)(__GLcontext *gc);
    void *wscx;
    void *other;
    char pad[16];
} __GLimports;
typedef struct __GLexportsRec {
    GLboolean (*destroyContext)(__GLcontext *gc);
    GLboolean (*loseCurrent)(__GLcontext *gc);
    GLboolean (*makeCurrent)(__GLcontext *gc);
    GLboolean (*shareContext)(__GLcontext *gc, __GLcontext *gcShare);
    GLboolean (*copyContext)(__GLcontext *dst, const __GLcontext *src, GLuint mask);
    GLboolean (*forceCurrent)(__GLcontext *gc);
    GLboolean (*notifyResize)(__GLcontext *gc);
    void (*notifyDestroy)(__GLcontext *gc);
    void (*notifySwapBuffers)(__GLcontext *gc);
    void *(*dispatchExec)(__GLcontext *gc);
    void (*beginDispatchOverride)(__GLcontext *gc);
    void (*endDispatchOverride)(__GLcontext *gc);
    char pad[24];
} __GLexports;
typedef struct __GLcontextModesRec {
    GLint visualID;
    GLboolean rgbMode;
    GLboolean colorIndexMode;
    GLboolean doubleBufferMode;
    GLboolean stereoMode;
    GLboolean haveAccumBuffer;
    GLboolean haveDepthBuffer;
    GLboolean haveStencilBuffer;
    GLboolean pad0;
    GLint accumRedBits;
    GLint accumGreenBits;
    GLint accumBlueBits;
    GLint accumAlphaBits;
    GLint depthBits;
    GLint stencilBits;
    GLint indexBits;
    GLint redBits;
    GLint greenBits;
    GLint blueBits;
    GLint alphaBits;
    GLuint redMask;
    GLuint greenMask;
    GLuint blueMask;
    GLuint alphaMask;
    GLint rgbBits;
    GLint level;
    GLint numAuxBuffers;
    GLint maxAuxBuffers;
} __GLcontextModes;
typedef struct __GLbufferRec {
    __GLcontext *gc;
    void *drawableBuf;
    void *other;
    void (*resize)();
    void (*makeCurrent)();
    void (*loseCurrent)();
    void (*free)();
} __GLbuffer;
typedef struct __GLcolorBufferRec __GLcolorBuffer;
struct __GLcolorBufferRec {
    __GLbuffer buf;
    GLint redMax, greenMax, blueMax;
    GLboolean needColorFragmentOps;
    char pad29[3];
    GLubyte *alphaTestFuncTable;
    GLfloat redScale, greenScale, blueScale;
    GLint iRedScale, iGreenScale, iBlueScale;
    GLint redShift, greenShift, blueShift, alphaShift;
    GLfloat alphaScale;
    GLint iAlphaScale;
    GLfloat oneOverRedScale, oneOverGreenScale, oneOverBlueScale, oneOverAlphaScale;
    GLuint sourceMask, destMask;
    void (*pick)();
    GLint (*getDisplayMasks)();
    void (*store)();
    void (*fetch)();
    void (*readColor)();
    GLboolean (*readSpan)();
    void (*returnSpan)();
    void *storeSpan;
    void *storeStippledSpan;
    void *storeLine;
    void *storeStippledLine;
    void *fetchSpan;
    void *fetchStippledSpan;
    void *fetchLine;
    void *fetchStippledLine;
    char padB4[36];
    void (*clear)(__GLcolorBuffer *cfb);
};
typedef struct __GLstencilBufferRec {
    __GLbuffer buf;
    char pad1C[88];
    void (*clear)(struct __GLstencilBufferRec *sfb, s64 mask, __GLcontext *gc);
} __GLstencilBuffer;
typedef struct __GLdepthBufferRec {
    __GLbuffer buf;
    char pad1C[48];
    GLuint scale;
    char pad50[40];
    void (*clear)(struct __GLdepthBufferRec *dfb, s64 mask, __GLcontext *gc);
    char pad7C[8];
} __GLdepthBuffer;
typedef struct __GLaccumBufferRec {
    __GLbuffer buf;
    char pad1C[80];
    void (*clear)(struct __GLaccumBufferRec *afb);
} __GLaccumBuffer;
typedef struct __GLprocsRec {
    void (*validate)(__GLcontext *gc);
    void (*finish)(__GLcontext *gc);
    void (*flush)(__GLcontext *gc);
    void (*applyColor)(__GLcontext *gc);
    void *table[128];
    char pad[324];
} __GLprocs;
struct __GLcontextRec {
    __GLimports imports;
    __GLexports exports;
    GLint gcState;
    char pad_state[2936];
    u32 beginMode;
    GLenum renderMode;
    GLint error;
    __GLcontextModes modes;
    __GLcontextModes readModes;
    GLboolean yInverted;
    char pad_yinv[3];
    char pad_const[8380];
    GLuint validateMask;
    GLuint dirtyMask;
    __GLcolorBuffer *drawBuffer;
    __GLcolorBuffer *readBuffer;
    char pad_proc[16];
    void (*validate)(__GLcontext *gc);
    char pad_proc2[28];
    __GLprocs procs;
    char pad_mid[19060];
    __GLcolorBuffer *front;
    __GLcolorBuffer *back;
    __GLcolorBuffer frontBuffer;
    __GLcolorBuffer backBuffer;
    __GLcolorBuffer *auxBuffer;
    __GLstencilBuffer stencilBuffer;
    __GLdepthBuffer depthBuffer;
    __GLaccumBuffer accumBuffer;
    char pad_bufend[28];
    GLint fd;
    GLint boardIndex;
    GLint zDepth;
    GLint stencilDepth;
    char rendererString[40];
    GLuint swapInterval;
    u8 hwFlags;
    u8 haveZ;
    u8 haveStencil;
    u8 fastMode;
    void (*primitiveProcs[10])(__GLcontext *gc);
};
extern __GLcontext *__glCurrentContext;
extern u32 __glBeginMode;
void __glSetError(GLenum code);
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
#pragma GCC diagnostic pop
typedef union {
    volatile uint32_t w;
    volatile uint16_t h;
    volatile uint8_t b;
} gr4_reg32_t;
typedef union {
    volatile uint64_t d;
    volatile uint32_t w[2];
    volatile uint16_t h[4];
    volatile uint8_t b[8];
} gr4_reg64_t;
typedef union {
    struct {
        volatile uint64_t data;
    } bydouble;
    struct {
        volatile uint32_t pad;
        volatile uint32_t data;
    } byword;
    struct {
        volatile uint16_t pad[3];
        volatile uint16_t data;
    } byshort;
    struct {
        volatile uint8_t pad[7];
        volatile uint8_t data;
    } bybyte;
} mgras_dcbdata64_t;
typedef struct mgras_hw_s {
    volatile uint32_t gio_id;
    volatile uint8_t _pad_id[0x40000 - 4];
    volatile uint32_t hquc[0x6000 / 4];
    volatile uint32_t hqpc;
    volatile uint8_t _pad_pc[0x47000 - 0x46004];
    volatile uint32_t cp_data;
    volatile uint8_t _pad_cp[0x4C000 - 0x47004];
    volatile uint32_t rss_diag[(0x50000 - 0x4C000) / 4];
    volatile uint32_t hq_config;
    volatile uint32_t flag_ctx;
    volatile uint32_t flag_set_priv;
    volatile uint32_t flag_clr_priv;
    volatile uint32_t flag_enab_set;
    volatile uint32_t flag_enab_clr;
    volatile uint32_t intr_enab_set;
    volatile uint32_t intr_enab_clr;
    volatile uint32_t cfifo_hw;
    volatile uint32_t cfifo_lw;
    volatile uint32_t cfifo_delay;
    volatile uint32_t dfifo_hw;
    volatile uint32_t dfifo_lw;
    volatile uint32_t dfifo_delay;
    volatile uint8_t _pad_fifo[8];
    volatile uint32_t ge0_diag_d;
    volatile uint32_t ge0_diag_a;
    volatile uint32_t ge1_diag_d;
    volatile uint32_t ge1_diag_a;
    volatile uint8_t _pad_diag[0x500F0 - 0x50050];
    mgras_dcbdata64_t cfifo_priv;
    volatile uint32_t ctxsw;
    volatile uint8_t _pad_ctx[0x50100 - 0x500FC];
    volatile uint32_t ctx_data;
    volatile uint8_t _pad_ctx2[4];
    volatile uint32_t bfifo_hw;
    volatile uint32_t bfifo_lw;
    volatile uint32_t bfifo_delay;
    volatile uint32_t gio_config;
    volatile uint8_t _pad_cfg[0x50200 - 0x50118];
    volatile uint32_t reif_ctx[(0x300 - 0x200) / 4];
    volatile uint32_t hag_ctx[(0x500 - 0x300) / 4];
    volatile uint32_t hif_ctx[(0x600 - 0x500) / 4];
    volatile uint32_t gio_ctx[(0x700 - 0x600) / 4];
    volatile uint8_t _pad_ctx3[0x800 - 0x700];
    volatile uint32_t tlb[(0x880 - 0x800) / 4];
    volatile uint32_t tlb_curr_addr;
    volatile uint8_t _pad_tlb[0x900 - 0x884];
    volatile uint32_t tlb_valids;
    volatile uint8_t _pad_priv_end[0x60000 - 0x50904];
    uint8_t dcb_devices[0x8000];
    volatile uint32_t dcbctrl_pp1;
    volatile uint32_t dcbctrl_1;
    volatile uint32_t dcbctrl_2;
    volatile uint32_t dcbctrl_3;
    volatile uint32_t dcbctrl_dac;
    volatile uint32_t dcbctrl_cmapall;
    volatile uint32_t dcbctrl_cmap0;
    volatile uint32_t dcbctrl_cmap1;
    volatile uint32_t dcbctrl_vc3;
    volatile uint32_t dcbctrl_bdvers;
    volatile uint32_t dcbctrl_10;
    volatile uint32_t dcbctrl_11;
    volatile uint32_t dcbctrl_12;
    volatile uint32_t dcbctrl_13;
    volatile uint32_t dcbctrl_14;
    volatile uint32_t dcbctrl_15;
    volatile uint8_t _pad_dcb_end[0x70000 - 0x68040];
    volatile uint32_t status;
    volatile uint32_t fifo_status;
    volatile uint32_t flag_set;
    volatile uint32_t flag_clr;
    volatile uint32_t rebus_read_hi;
    volatile uint32_t rebus_read_lo;
    volatile uint8_t _pad_user[0x700F0 - 0x70018];
    mgras_dcbdata64_t cfifo;
    volatile uint8_t _pad_user2[0x70100 - 0x700F8];
    volatile uint32_t gio_status;
    volatile uint32_t busy_dma;
    volatile uint8_t _pad_user_end[0x7C000 - 0x70108];
    uint8_t rss[0x4000];
    mgras_dcbdata64_t cfifo_cmd[0x80000 / 8];
} mgras_hw;
typedef struct mgras_info_s {
    uint32_t board_type;
    uint32_t board_rev;
    uint32_t ge_count;
    uint32_t re_count;
    uint32_t pp1_count;
    uint32_t tram_count;
    uint32_t tram_size_mb;
    uint32_t has_zbuffer;
    uint32_t video_timing;
} mgras_info_t;
typedef struct mgras_re4_single_s {
    volatile uint32_t tri_x0;
    volatile uint32_t tri_x1;
    volatile uint32_t tri_x2;
    volatile uint32_t tri_ymax;
    volatile uint32_t tri_ymid;
    volatile uint32_t tri_ymin;
    volatile uint32_t tri_dxdy0;
    volatile uint32_t tri_dxdy0_low;
    volatile uint32_t tri_dxdy1_hi;
    volatile uint32_t tri_dxdy1_low;
    volatile uint32_t tri_dxdy2_hi;
    volatile uint32_t tri_dxdy2_low;
    volatile uint32_t gline_xstartf;
    volatile uint32_t gline_ystartf;
    volatile uint32_t gline_xendf;
    volatile uint32_t gline_yendf;
    volatile uint32_t gline_dx;
    volatile uint32_t gline_dy;
    volatile uint32_t gline_adjust;
    volatile uint32_t ir;
    volatile uint32_t _pad014[0x40 - 0x14];
    volatile uint32_t xline_xystarti;
    volatile uint32_t xline_xyendi;
    volatile uint32_t xline_inc1;
    volatile uint32_t xline_inc2;
    volatile uint32_t xline_error_oct;
    volatile uint32_t ir_alias;
    volatile uint32_t block_xystarti;
    volatile uint32_t block_xyendi;
    volatile uint32_t block_xymove;
    volatile uint32_t block_xsaveoct;
    volatile uint32_t _pad04a[0x5B - 0x4A];
    volatile uint32_t packed_color;
    volatile uint32_t red;
    volatile uint32_t green;
    volatile uint32_t blue;
    volatile uint32_t alpha;
    volatile uint32_t dre;
    volatile uint32_t drx;
    volatile uint32_t dge;
    volatile uint32_t dgx;
    volatile uint32_t dbe;
    volatile uint32_t dbx;
    volatile uint32_t dae;
    volatile uint32_t dax;
    volatile uint32_t z_hi;
    volatile uint32_t z_low;
    volatile uint32_t dzx_hi;
    volatile uint32_t dzx_low;
    volatile uint32_t dze_hi;
    volatile uint32_t dze_low;
    volatile uint32_t _pad06e[0x70 - 0x6E];
    volatile uint32_t char_h;
    volatile uint32_t char_l;
    volatile uint32_t _pad072[0x100 - 0x72];
    volatile uint32_t xfrabort;
    volatile uint32_t _pad101;
    volatile uint32_t xfrcontrol;
    volatile uint32_t _pad103[0x110 - 0x103];
    volatile uint32_t fillmode;
    volatile uint32_t texmode1;
    volatile uint32_t config;
    volatile uint32_t scissorx;
    volatile uint32_t scissory;
    volatile uint32_t xywin;
    volatile uint32_t _pad116[0x140 - 0x116];
    volatile uint32_t bkgrd_rg;
    volatile uint32_t bkgrd_ba;
    volatile uint32_t txenv_rg;
    volatile uint32_t txenv_b;
    volatile uint32_t fog_rg;
    volatile uint32_t fog_b;
    volatile uint32_t glineconfig;
    volatile uint32_t scrmsk1x;
    volatile uint32_t scrmsk1y;
    volatile uint32_t scrmsk2x;
    volatile uint32_t scrmsk2y;
    volatile uint32_t scrmsk3x;
    volatile uint32_t scrmsk3y;
    volatile uint32_t scrmsk4x;
    volatile uint32_t scrmsk4y;
    volatile uint32_t winmode;
    volatile uint32_t _pad150[0x153 - 0x150];
    volatile uint32_t xfrsize;
    volatile uint32_t xfrinitfactor;
    volatile uint32_t xfrfactor;
    volatile uint32_t xfrmasklow;
    volatile uint32_t xfrmaskhigh;
    volatile uint32_t xfrcounters;
    volatile uint32_t xfrmode;
    volatile uint32_t lspat;
    volatile uint32_t lscrl;
    volatile uint32_t device_addr;
    volatile uint32_t device_data;
    volatile uint32_t status;
    volatile uint32_t re_togglecntx;
} mgras_re4_single_t;
typedef struct __glMgrasCapsRec {
    u32 num_re;
    u32 num_te;
    u32 num_pp;
    u32 tram_size;
    u32 has_tbuf;
    u32 dram_type;
    u32 board_rev;
    u32 dcb_mode;
} __glMgrasCaps;
typedef struct __glMgrasContextRec {
    __GLcontext gc;
    char pad_base[0x1B18];
    mgras_hw *hw;
    __glMgrasCaps caps;
    u32 cfifo_hw_free;
    u32 dfifo_hw_free;
    u32 dcb_ctrl;
    u32 re_mode1;
    u32 re_mode2;
    u32 re_fillmode;
    u32 re_viewport;
    u32 re_viewport_y;
    u32 re_ir_opcode;
    char pad_re[0xC4];
    u32 scissor_xmax;
    u32 scissor_ymax;
    u32 scissor_boxes[8];
    char pad_tail[0x2284];
} __glMgrasContext;
int ioctl(int fd, unsigned long request, ...);
int printf(const char *format, ...);
void *malloc(u32 size);
void free(void *ptr);
void *memcpy(void *dest, const void *src, u32 n);
void *memset(void *s, int c, u32 n);
void bzero(void *s, u32 n);
f32 sqrtf(f32 x);
f32 fabsf(f32 x);
f32 floorf(f32 x);
f32 ceilf(f32 x);
f32 cosf(f32 x);
f32 sinf(f32 x);
void __glMgrGetClipBox(__GLcontext *gc, ...);
void __glMgrim_SoftAccum(__GLcontext *gc, ...);
void __glMgrim_SoftAccumClear(__GLcontext *gc, ...);
void __glMgrim_Accum(GLenum op, GLfloat value);
void Clear();
void Pick();
void __glMgrInitAccum(__GLcontext *gc, ...);
void Store();
void Resize();
void StoreSpan();
void StoreStippledSpan();
void ReadColor();
void __glMgrInitCI(__GLcontext *gc, ...);
void __glMgrIoctl(__GLcontext *gc, ...);
void GetBoardInfo();
void InitTables();
void __glMgrAllocAccum(__GLcontext *gc, ...);
void SwapBuffers();
GLint __glMgrim_RenderMode(GLenum mode);
void DestroyContext();
void __glMgrPassStateToHW(__GLcontext *gc, ...);
void __glMgrGetStateFromHW(__GLcontext *gc, ...);
void CopyContext();
void LoseCurrent();
void ChangeWindowSize();
void FindWindowSize();
void ApplyViewport();
void ApplyScissor();
void InitFnPtrs();
void InitBuffers();
void InitFormatValues();
void InitTexmode1();
void MakeCurrentRead();
void MakeCurrent();
void VisualsMatch();
void __glMgrCreateContext(__GLcontext *gc, ...);
void __glMgrasInitOpenGLDefaultValues(__GLcontext *gc, ...);
void __glMgrasInitDefaultValues(__GLcontext *gc, ...);
void __glMgrInitDepth(__GLcontext *gc, ...);
void __glMgrEnableLighting(__GLcontext *gc, ...);
void __glMgrDisableLighting(__GLcontext *gc, ...);
void __glMgrClampColor(__GLcontext *gc, ...);
void __glMgrim_FrontFace(GLenum mode);
void __glMgrim_Lightf(GLenum light, GLenum pname, GLfloat param);
void __glMgrim_Lightfv(GLenum light, GLenum pname, const GLfloat *params);
void __glMgrim_Lighti(GLenum light, GLenum pname, GLint param);
void __glMgrim_Lightiv(GLenum light, GLenum pname, const GLint *params);
void __glMgrim_LightModelf(GLenum pname, GLfloat param);
void __glMgrim_LightModelfv(GLenum pname, const GLfloat *params);
void __glMgrim_LightModeli(GLenum pname, GLint param);
void __glMgrim_LightModeliv(GLenum pname, const GLint *params);
void __glMgrim_Materialf(GLenum face, GLenum pname, GLfloat param);
void __glMgrim_Materialfv(GLenum face, GLenum pname, const GLfloat *params);
void __glMgrim_Materiali(GLenum face, GLenum pname, GLint param);
void __glMgrim_Materialiv(GLenum face, GLenum pname, const GLint *params);
void __glMgrlc_CallList(GLuint list);
void __glMgrlc_BindTextureEXT(GLenum target, GLuint texture);
void __glMgrlc_Bitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap);
void __glMgrlc_Begin(GLenum mode);
void __glMgrlc_End(void);
void __glMgrlc_ClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glMgrlc_ClearDepth(GLdouble depth);
void __glMgrlc_ClearIndex(GLfloat c);
void __glMgrlc_ClearStencil(GLint s);
void __glMgrlc_ColorMaterial(GLenum face, GLenum mode);
void __glMgrlc_FrontFace(GLenum mode);
void __glMgrlc_Lightf(GLenum light, GLenum pname, GLfloat param);
void __glMgrlc_Lightfv(GLenum light, GLenum pname, const GLfloat *params);
void __glMgrlc_Lighti(GLenum light, GLenum pname, GLint param);
void __glMgrlc_Lightiv(GLenum light, GLenum pname, const GLint *params);
void __glMgrlc_LightModelf(GLenum pname, GLfloat param);
void __glMgrlc_LightModelfv(GLenum pname, const GLfloat *params);
void __glMgrlc_LightModeli(GLenum pname, GLint param);
void __glMgrlc_LightModeliv(GLenum pname, const GLint *params);
void __glMgrlc_Materialf(GLenum face, GLenum pname, GLfloat param);
void __glMgrlc_Materialfv(GLenum face, GLenum pname, const GLfloat *params);
void __glMgrlc_Materiali(GLenum face, GLenum pname, GLint param);
void __glMgrlc_Materialiv(GLenum face, GLenum pname, const GLint *params);
void __glMgrlc_EdgeFlag(GLboolean flag);
void __glMgrlc_EdgeFlagv(const GLboolean *flag);
void __glMgrlc_StencilMask(GLuint mask);
void __glMgrlc_ColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void __glMgrlc_DepthMask(GLboolean flag);
void __glMgrlc_IndexMask(GLuint mask);
void __glMgrlc_AlphaFunc(GLenum func, GLfloat ref);
void __glMgrlc_BlendEquationEXT(GLenum mode);
void __glMgrlc_BlendFunc(GLenum sfactor, GLenum dfactor);
void __glMgrlc_LogicOp(GLenum opcode);
void __glMgrlc_StencilFunc(GLenum func, GLint ref, GLuint mask);
void __glMgrlc_StencilOp(GLenum fail, GLenum zfail, GLenum zpass);
void __glMgrlc_DepthFunc(GLenum func);
void __glMgrlc_CullFace(GLenum mode);
void __glMgrlc_PolygonMode(GLenum face, GLenum mode);
void __glMgrlc_LineStipple(GLint factor, GLushort pattern);
void __glMgrlc_LineWidth(GLfloat width);
void __glMgrlc_PointSize(GLfloat size);
void __glMgrlc_ShadeModel(GLenum mode);
void __glMgrlc_DepthRange(GLdouble n, GLdouble f);
void __glMgrlc_BlendColorEXT(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glMgrlc_Fogfv(GLenum pname, const GLfloat *params);
void __glMgrlc_Fogf(GLenum pname, GLfloat param);
void __glMgrlc_Fogiv(GLenum pname, const GLint *params);
void __glMgrlc_Fogi(GLenum pname, GLint param);
void __glMgrlc_PolygonOffsetEXT(GLfloat factor, GLfloat bias);
void __glMgrlc_PolygonOffset(GLfloat factor, GLfloat units);
void __glMgrlc_Rectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void __glMgrlc_Rectdv(const GLdouble *v1, const GLdouble *v2);
void __glMgrlc_Rectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void __glMgrlc_Rectfv(const GLfloat *v1, const GLfloat *v2);
void __glMgrlc_Recti(GLint x1, GLint y1, GLint x2, GLint y2);
void __glMgrlc_Rectiv(const GLint *v1, const GLint *v2);
void __glMgrlc_Rects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void __glMgrlc_Rectsv(const GLshort *v1, const GLshort *v2);
void __glMgrlc_ClipPlane(GLenum plane, const GLdouble *equation);
void __glMgrlc_MultMatrixf(const GLfloat *m);
void __glMgrlc_MultMatrixd(const GLdouble *m);
void __glMgrlc_LoadMatrixf(const GLfloat *m);
void __glMgrlc_LoadMatrixd(const GLdouble *m);
void __glMgrlc_LoadIdentity(void);
void __glMgrlc_Frustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glMgrlc_Ortho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glMgrlc_PopMatrix(void);
void __glMgrlc_PushMatrix(void);
void __glMgrlc_Rotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void __glMgrlc_Rotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void __glMgrlc_Scaled(GLdouble x, GLdouble y, GLdouble z);
void __glMgrlc_Scalef(GLfloat x, GLfloat y, GLfloat z);
void __glMgrlc_Translated(GLdouble x, GLdouble y, GLdouble z);
void __glMgrlc_Translatef(GLfloat x, GLfloat y, GLfloat z);
void __glMgrlc_Viewport(GLint x, GLint y, GLsizei width, GLsizei height);
void __glMgrlc_MatrixMode(GLenum mode);
void __glMgrlc_TexImage3DEXT(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void __glMgrlc_TexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void __glMgr_InterpretDL(__GLcontext *gc, ...);
void InterpretVertex();
void InterpretColor();
void InterpretIndex();
void InterpretNormal();
void InterpretTexCoord();
void InterpretRasterPos();
void InterpretOthers();
void __glMgrle_TexImage1D(__GLcontext *gc, ...);
void __glMgrle_TexImage2D(__GLcontext *gc, ...);
void __glMgrle_TexImage3DEXT(__GLcontext *gc, ...);
void __glMgrle_TexSubImage1DEXT(__GLcontext *gc, ...);
void __glMgrle_TexSubImage2DEXT(__GLcontext *gc, ...);
void __glMgrle_TexSubImage3DEXT(__GLcontext *gc, ...);
void __glMgrle_ConvolutionFilter1DEXT(__GLcontext *gc, ...);
void __glMgrle_ConvolutionFilter2DEXT(__GLcontext *gc, ...);
void __glMgrle_SeparableFilter2DEXT(__GLcontext *gc, ...);
void __glMgrle_ColorTableSGI(__GLcontext *gc, ...);
void __glMgrStoreLine(__GLcontext *gc, ...);
void __glMgrStoreStippledLine(__GLcontext *gc, ...);
void __glMgrim_Flush(void);
void __glMgrim_Finish(void);
void __glMgrim_StencilMask(GLuint mask);
void __glMgrim_ColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void __glMgrim_DepthMask(GLboolean flag);
void __glMgrim_IndexMask(GLuint mask);
void __glMgrim_AlphaFunc(GLenum func, GLfloat ref);
void __glMgrim_BlendEquationEXT(GLenum mode);
void __glMgrim_BlendFunc(GLenum sfactor, GLenum dfactor);
void __glMgrim_LogicOp(GLenum opcode);
void __glMgrim_StencilFunc(GLenum func, GLint ref, GLuint mask);
void __glMgrim_StencilOp(GLenum fail, GLenum zfail, GLenum zpass);
void __glMgrim_DepthFunc(GLenum func);
void __glMgrim_CullFace(GLenum mode);
void __glMgrim_PolygonMode(GLenum face, GLenum mode);
void __glMgrasReadBuffer(GLenum src);
void __glMgrasSetData(__GLcontext *gc, ...);
void __glMgrim_ReadBuffer(GLenum src);
void __glMgrasDrawBuffer(GLenum buf);
void __glMgrim_DrawBuffer(GLenum buf);
void __glMgrim_LineStipple(GLint factor, GLushort pattern);
void __glMgrim_SoftLineWidth(__GLcontext *gc, ...);
void __glMgrim_LineWidth(GLfloat width);
void __glMgrim_PointSize(GLfloat size);
void __glMgrim_ShadeModel(GLenum mode);
void __glMgrim_DepthRange(GLdouble n, GLdouble f);
void __glMgrim_BlendColorEXT(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glMgrim_TexGenfv(GLenum coord, GLenum pname, const GLfloat *params);
void __glMgrim_TexGenf(GLenum coord, GLenum pname, GLfloat param);
void __glMgrim_TexGendv(GLenum coord, GLenum pname, const GLdouble *params);
void __glMgrim_TexGend(GLenum coord, GLenum pname, GLdouble param);
void __glMgrim_TexGeniv(GLenum coord, GLenum pname, const GLint *params);
void __glMgrim_TexGeni(GLenum coord, GLenum pname, GLint param);
void __glMgrim_SoftTexGenfv(__GLcontext *gc, ...);
void __glMgrim_SoftTexGendv(__GLcontext *gc, ...);
void __glMgrim_SoftTexGeniv(__GLcontext *gc, ...);
void __glMgrim_Fogfv(GLenum pname, const GLfloat *params);
void __glMgrim_Fogf(GLenum pname, GLfloat param);
void __glMgrim_Fogiv(GLenum pname, const GLint *params);
void __glMgrim_Fogi(GLenum pname, GLint param);
void __glMgrim_PolygonOffsetEXT(GLfloat factor, GLfloat bias);
void __glMgrim_PolygonOffset(GLfloat factor, GLfloat units);
void __glMgrGetColorMatrixState(__GLcontext *gc, ...);
void __glMgrResetBitmapState(__GLcontext *gc, ...);
void __glMgrInitFastPath(__GLcontext *gc, ...);
void __glMgrNewInitFastPath(__GLcontext *gc, ...);
void __glMgrInitRGBTransfer(__GLcontext *gc, ...);
void __glMgrInitCITransfer(__GLcontext *gc, ...);
void __glMgrInitRGBMap(__GLcontext *gc, ...);
void __glMgrInitCIToRGB(__GLcontext *gc, ...);
void __glMgrInitCIMap(__GLcontext *gc, ...);
void __glMgrInitRGBPipe(__GLcontext *gc, ...);
void __glMgrInitDepthPipe(__GLcontext *gc, ...);
void __glMgrInitCIPipe(__GLcontext *gc, ...);
void __glMgrInitImagingPipe(__GLcontext *gc, ...);
void __glMgrInitHostToRSS(__GLcontext *gc, ...);
void __glMgrInitPixelTexture(__GLcontext *gc, ...);
void __glMgrInitRSSToRSS(__GLcontext *gc, ...);
void __glMgrInitRSSToTE(__GLcontext *gc, ...);
void __glMgrSendHistogramFills(__GLcontext *gc, ...);
void __glMgrSendMinmaxFills(__GLcontext *gc, ...);
void __glMgrPixelTilesAddr(__GLcontext *gc, ...);
void __glMgrSendPagedRows(__GLcontext *gc, ...);
void __glMgrFastSendPixels(__GLcontext *gc, ...);
void __glMgrSendPixels(__GLcontext *gc, ...);
void __glMgrCopyTile(__GLcontext *gc, ...);
void __glMgrFastCopyPixels(__GLcontext *gc, ...);
void __glMgrSlowCopyPixels(__GLcontext *gc, ...);
void __glMgrCopyPixels(__GLcontext *gc, ...);
void __glMgrInitColorMatrix(__GLcontext *gc, ...);
void stackAdjustmentDummyRoutine();
void __glMgrDoReadPixels(__GLcontext *gc, ...);
void __glMgrim_ReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void *pixels);
void __glMgrFastDrawPixels(__GLcontext *gc, ...);
void __glMgrim_DrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void __glMgrDrawPixels(__GLcontext *gc, ...);
void __glMgrim_CopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
void __glMgrDoCopyPixels(__GLcontext *gc, ...);
void __glMgrim_PixelTransferf(GLenum pname, GLfloat param);
void __glMgrim_PixelTransferi(GLenum pname, GLint param);
void ResizeLUT();
void FillCILUTFloat();
void FillCILUTInt();
void FillCILUTShort();
void FillIndexLUTFloat();
void FillIndexLUTInt();
void FillIndexLUTShort();
void __glMgrim_PixelMapfv(GLenum map, GLsizei mapsize, const GLfloat *values);
void __glMgrim_PixelMapuiv(GLenum map, GLsizei mapsize, const GLuint *values);
void __glMgrim_PixelMapusv(GLenum map, GLsizei mapsize, const GLushort *values);
void __glMgrim_PixelZoom(GLfloat xfactor, GLfloat yfactor);
void __glMgrim_PixelStorei(GLenum pname, GLint param);
void __glMgrim_PixelStoref(GLenum pname, GLfloat param);
void __glMgrFastReadPixels(__GLcontext *gc, ...);
void __glMgrPickDrawPixels(__GLcontext *gc, ...);
void __glMgrPickReadPixels(__GLcontext *gc, ...);
void __glMgrLoadPolygonStippleRAM(__GLcontext *gc, ...);
void __glMgrConvertStipple(__GLcontext *gc, ...);
void __glMgrDlistOptimizer(__GLcontext *gc, ...);
void __glMgr_Push(__GLcontext *gc, ...);
void Bogus();
void __glMgrDlistInitState(__GLcontext *gc, ...);
void callSetError();
void __glMgr_dlerror(__GLcontext *gc, ...);
void __glSPDlalloc();
void __glSPDlalloc2();
void __glMgrle_CallSetBegin(__GLcontext *gc, ...);
void __glMgrle_CallUnsetBegin(__GLcontext *gc, ...);
void __glsplc_AddSentinel();
void __glMgrle_CallList(__GLcontext *gc, ...);
void __glMgrle_BindTextureEXT(__GLcontext *gc, ...);
GLboolean __glMgrim_IsList(GLuint list);
void __glMgrExecuteDlist(__GLcontext *gc, ...);
void InvalidateRecurse();
void __glMgrDLInvalidate(__GLcontext *gc, ...);
void __glMgrSPFreeDlist(__GLcontext *gc, ...);
void __glMgrFreeDLTex(__GLcontext *gc, ...);
void __glMgrDLNotResident(__GLcontext *gc, ...);
void makePullState();
void __glMgrDLLookupDL(__GLcontext *gc, ...);
void __glMgrDLLookupTex(__GLcontext *gc, ...);
void ValidateRecurse();
void __glMgrSPValidateDL(__GLcontext *gc, ...);
void __glMgrSPValidateDLExec(__GLcontext *gc, ...);
void __glMgrSPCompMachdep(__GLcontext *gc, ...);
void __glMgrDLNodeInit(__GLcontext *gc, ...);
void __glMgrDLNodeCall(__GLcontext *gc, ...);
void __glMgrDLNodeLink(__GLcontext *gc, ...);
void __glMgrDLNodeUnlink(__GLcontext *gc, ...);
void NewTexState();
void AddTex();
void __glMgrDLTexInit(__GLcontext *gc, ...);
void __glMgrDLTexMerge(__GLcontext *gc, ...);
void __glMgrDLTexFree(__GLcontext *gc, ...);
void __glMgrim_ListParameterfvSGIX(__GLcontext *gc, ...);
void __glMgrim_ListParameterfSGIX(__GLcontext *gc, ...);
void __glMgrim_ListParameterivSGIX(__GLcontext *gc, ...);
void __glMgrim_ListParameteriSGIX(__GLcontext *gc, ...);
void __glMgrim_GetListParameterfvSGIX(__GLcontext *gc, ...);
void __glMgrim_GetListParameterivSGIX(__GLcontext *gc, ...);
void __glMgrSPBalloc(__GLcontext *gc, ...);
void __glMgrSPBfree(__GLcontext *gc, ...);
void __glMgrSPMoreBlocks(__GLcontext *gc, ...);
void __glMgrDLIoctl(__GLcontext *gc, ...);
void __glMgrDLDMASync(__GLcontext *gc, ...);
void __glMgrInitDLDMA(__GLcontext *gc, ...);
void __glMgrDlistNewArray(__GLcontext *gc, ...);
void __glMgrTermDLPool(__GLcontext *gc, ...);
void __glMgrDlistFreeArray(__GLcontext *gc, ...);
void __glMgrDLOutOfPool(__GLcontext *gc, ...);
void __glMgrTexOutOfPool(__GLcontext *gc, ...);
void __glMgrDLEmptyPool(__GLcontext *gc, ...);
void __glMgrDLBreakdownDMA(__GLcontext *gc, ...);
void __glMgrTexBreakdownDMA(__GLcontext *gc, ...);
void __glMgrBuildSegs(__GLcontext *gc, ...);
void __glMgrDLResolveCalls(__GLcontext *gc, ...);
void __glMgrSegToPool(__GLcontext *gc, ...);
void __glMgrSetupPool(__GLcontext *gc, ...);
void __glMgrDLToPool(__GLcontext *gc, ...);
void __glMgrTexToPool(__GLcontext *gc, ...);
void __glMgrDLExecuteDMA(__GLcontext *gc, ...);
void __glMgrDLPoolToPtr(__GLcontext *gc, ...);
void __glMgrDLAllocInit(__GLcontext *gc, ...);
void __glMgrDLAllocClose(__GLcontext *gc, ...);
void __glMgrDLMalloc(__GLcontext *gc, ...);
void __glMgrDLFree(__GLcontext *gc, ...);
void __glMgrDLFlushInit(__GLcontext *gc, ...);
void __glMgrDLFlushClose(__GLcontext *gc, ...);
void flushSegsNow();
void implicitFlush();
void __glMgrDLFlushDefer(__GLcontext *gc, ...);
void __glMgrDLFlushSeg(__GLcontext *gc, ...);
void __glMgrDLFlushPool(__GLcontext *gc, ...);
void __glMgrBeginPoints(__GLcontext *gc, ...);
void __glMgrBeginLines(__GLcontext *gc, ...);
void __glMgrBeginLStrip(__GLcontext *gc, ...);
void __glMgrBeginLLoop(__GLcontext *gc, ...);
void __glMgrBeginTriangles(__GLcontext *gc, ...);
void __glMgrBeginTStrip(__GLcontext *gc, ...);
void __glMgrBeginTFan(__GLcontext *gc, ...);
void __glMgrBeginQuads(__GLcontext *gc, ...);
void __glMgrBeginQStrip(__GLcontext *gc, ...);
void __glMgrBeginPolygon(__GLcontext *gc, ...);
void __glMgrEndPoints(__GLcontext *gc, ...);
void __glMgrEndLines(__GLcontext *gc, ...);
void __glMgrEndLStrip(__GLcontext *gc, ...);
void __glMgrEndLLoop(__GLcontext *gc, ...);
void __glMgrEndTriangles(__GLcontext *gc, ...);
void __glMgrEndTStrip(__GLcontext *gc, ...);
void __glMgrEndTFan(__GLcontext *gc, ...);
void __glMgrEndQuads(__GLcontext *gc, ...);
void __glMgrEndQStrip(__GLcontext *gc, ...);
void __glMgrEndPolygon(__GLcontext *gc, ...);
void __glMgrEndGeneric(__GLcontext *gc, ...);
void __glMgrim_Begin(GLenum mode);
void __glMgrim_End(void);
void __glMgrReadSpan(__GLcontext *gc, ...);
void __glMgrReturnSpan(__GLcontext *gc, ...);
void __glMgrInitRGB(__GLcontext *gc, ...);
void simCatch();
void branchdelay();
void disass();
void simIoctl();
void __glMgrSimIoctl(__GLcontext *gc, ...);
void simOpenGraphics();
void simAllocHWContext();
void simFreeHWContext();
void simBindHWContextToWindow();
void simPixmapMemory();
void __glMgrSimInit(__GLcontext *gc, ...);
void setup();
void cleanup();
void clean_IPC();
void sem_signal();
void sem_wait();
void init_externalcontext();
void force_externalcontextswitch();
void __glMgrInitStencil(__GLcontext *gc, ...);
void __glMgrLookUpTexture(__GLcontext *gc, ...);
void __glMgrNeedSoftFilter4(__GLcontext *gc, ...);
void __glMgrim_SoftTexParameterfv(__GLcontext *gc, ...);
void __glMgrim_TexParameterfv(GLenum target, GLenum pname, const GLfloat *params);
void __glMgrim_SoftTexParameterf(__GLcontext *gc, ...);
void __glMgrim_TexParameterf(GLenum target, GLenum pname, GLfloat param);
void __glMgrim_SoftTexParameteriv(__GLcontext *gc, ...);
void __glMgrim_TexParameteriv(GLenum target, GLenum pname, const GLint *params);
void __glMgrim_SoftTexParameteri(__GLcontext *gc, ...);
void __glMgrim_TexParameteri(GLenum target, GLenum pname, GLint param);
void send_only_texmode2();
void __glMgrim_TexEnvfv(GLenum target, GLenum pname, const GLfloat *params);
void __glMgrim_TexEnvf(GLenum target, GLenum pname, GLfloat param);
void __glMgrim_TexEnviv(GLenum target, GLenum pname, const GLint *params);
void __glMgrim_TexEnvi(GLenum target, GLenum pname, GLint param);
void __glMgrim_TexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const void *pixels);
void __glMgrim_CopyTexImage1DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void mgrTM_TexImage1D_setup();
void __glMgrim_TexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void __glMgrim_CopyTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void __glMgrim_TexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
void __glMgrim_CopyTexImage2DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void mgrTM_TexImage2D_setup();
void __glMgrim_TexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void __glMgrIsCurrentGLXReadVideo(__GLcontext *gc, ...);
void __glMgrim_CopyTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void mgrTM_TexSubImage2D_setup();
void __glMgrim_TexImage3DEXT(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void __glMgrim_TexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void __glMgrim_CopyTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void __glMgrim_TexImage4DSGIS(__GLcontext *gc, ...);
void __glMgrim_TexSubImage4DSGIS(__GLcontext *gc, ...);
void mgrTM_compute_log_sizes();
void __glMgrim_DetailTexFuncSGIS(__GLcontext *gc, ...);
void __glMgrim_PixelTexGenSGIX(__GLcontext *gc, ...);
void FreeTextureInfo();
void __glMgr_NewTexObj(__GLcontext *gc, ...);
void __glMgrim_BindTextureEXT(GLenum target, GLuint texture);
void __glMgrim_PrioritizeTexturesEXT(GLsizei n, const GLuint *textures, const GLclampf *priorities);
GLboolean __glMgrim_AreTexturesResidentEXT(GLsizei n, const GLuint *textures, GLboolean *residences);
GLboolean __glMgrim_IsTextureEXT(GLuint texture);
void __glMgrim_GenTexturesEXT(GLsizei n, GLuint *textures);
void __glMgrim_DeleteTexturesEXT(GLsizei n, const GLuint *textures);
void Clampf();
void __glMgrim_EdgeFlag(GLboolean flag);
void __glMgrim_EdgeFlagv(const GLboolean *flag);
void __glMgrasEatData(__GLcontext *gc, ...);
void __glMgrim_DrawDumbPoint(__GLcontext *gc, ...);
void __glMgrim_Scissor(GLint x, GLint y, GLsizei width, GLsizei height);
void __glMgrim_ClipPlane(GLenum plane, const GLdouble *equation);
void __glMgrim_PassClipPlane(__GLcontext *gc, ...);
void __glMgrim_MultMatrixf(const GLfloat *m);
void __glMgrim_MultMatrixd(const GLdouble *m);
void __glMgrim_LoadMatrixf(const GLfloat *m);
void __glMgrim_LoadMatrixd(const GLdouble *m);
void __glMgrim_LoadIdentity(void);
void __glMgrim_Frustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glMgrim_Ortho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glMgrim_PopMatrix(void);
void __glMgrim_PushMatrix(void);
void __glMgrim_Rotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void __glMgrim_Rotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void __glMgrim_Scaled(GLdouble x, GLdouble y, GLdouble z);
void __glMgrim_Scalef(GLfloat x, GLfloat y, GLfloat z);
void __glMgrim_Translated(GLdouble x, GLdouble y, GLdouble z);
void __glMgrim_Translatef(GLfloat x, GLfloat y, GLfloat z);
void __glMgrim_Viewport(GLint x, GLint y, GLsizei width, GLsizei height);
void __glMgrim_MatrixMode(GLenum mode);
void __glMgrim_SoftEnable(__GLcontext *gc, ...);
void __glMgrEvalEnable(__GLcontext *gc, ...);
void __glMgrEnableLightSource(__GLcontext *gc, ...);
void __glMgrim_Enable(GLenum cap);
void __glMgrim_SoftDisable(__GLcontext *gc, ...);
void __glMgrEvalDisable(__GLcontext *gc, ...);
void __glMgrDisableLightSource(__GLcontext *gc, ...);
void __glMgrim_Disable(GLenum cap);
void __glMgrim_ClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glMgrim_ClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glMgrim_ClearDepth(GLdouble depth);
void __glMgrim_ClearIndex(GLfloat c);
void __glMgrim_ClearStencil(GLint s);
void __glMgrim_ColorMaterial(GLenum face, GLenum mode);
void __glMgrim_Hint(GLenum target, GLenum mode);
void __glMgrim_SoftPushAttrib(__GLcontext *gc, ...);
void __glMgrim_PushAttrib(GLbitfield mask);
void __glMgrRestoreRasterPosition(__GLcontext *gc, ...);
void __glMgrim_SoftPopAttrib(__GLcontext *gc, ...);
void __glMgrim_PopAttrib(void);
void __glMgrInitAttributeState(__GLcontext *gc, ...);
void __glMgrFreeAttributeState(__GLcontext *gc, ...);
void __glMgrCopyContext(__GLcontext *gc, ...);
void __glMgrim_Rectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void __glMgrim_Rectdv(const GLdouble *v1, const GLdouble *v2);
void __glMgrim_Rectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void __glMgrim_Rectfv(const GLfloat *v1, const GLfloat *v2);
void __glMgrim_Recti(GLint x1, GLint y1, GLint x2, GLint y2);
void __glMgrim_Rectiv(const GLint *v1, const GLint *v2);
void __glMgrim_Rects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void __glMgrim_Rectsv(const GLshort *v1, const GLshort *v2);
void __glMgrSendMapSpec1D(__GLcontext *gc, ...);
void __glMgrSendMapData1D(__GLcontext *gc, ...);
void changebasis();
void __glMgrHostMapData1D(__GLcontext *gc, ...);
void __glMgrCleanUp1D(__GLcontext *gc, ...);
void __glMgrSendMapSpec2D(__GLcontext *gc, ...);
void __glMgrSendMapData2D(__GLcontext *gc, ...);
void __glMgrHostMapData2D(__GLcontext *gc, ...);
void __glMgrCleanUp2D(__GLcontext *gc, ...);
void EvalV();
void EvalU();
void EvalVdV();
void EvalUdU();
void EvalRow1D();
void EvalRow2D();
void Eval2Rows();
void __glMgrEvalCoord1DHost(__GLcontext *gc, ...);
void __glMgrEvalMesh1DHost(__GLcontext *gc, ...);
void __glMgrEvalCoord2DHost(__GLcontext *gc, ...);
void __glMgrEvalMesh2DHost(__GLcontext *gc, ...);
void __glMgrEvalCoord1DGe11(__GLcontext *gc, ...);
void __glMgrEvalCoord2DGe11(__GLcontext *gc, ...);
void __glMgrEvalMesh1DGe11(__GLcontext *gc, ...);
void __glMgrEvalMesh2DGe11(__GLcontext *gc, ...);
void __glMgrInitEvaluators(__GLcontext *gc, ...);
void __glMgrFreeEvaluators(__GLcontext *gc, ...);
void __glMgSetUpMap1();
void __glMgSetUpMap2();
void __glMgrim_Map1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points);
void __glMgrim_SoftMap1d(__GLcontext *gc, ...);
void __glMgrim_Map1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points);
void __glMgrim_SoftMap1f(__GLcontext *gc, ...);
void __glMgrim_Map2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points);
void __glMgrim_SoftMap2d(__GLcontext *gc, ...);
void __glMgrim_Map2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points);
void __glMgrim_SoftMap2f(__GLcontext *gc, ...);
void __glMgrim_EvalCoord1d(GLdouble u);
void __glMgrim_EvalCoord1dv(const GLdouble *u);
void __glMgrim_EvalCoord1f(GLfloat u);
void __glMgrim_EvalCoord1fv(const GLfloat *u);
void __glMgrim_EvalCoord2d(GLdouble u, GLdouble v);
void __glMgrim_EvalCoord2dv(const GLdouble *u);
void __glMgrim_EvalCoord2f(GLfloat u, GLfloat v);
void __glMgrim_EvalCoord2fv(const GLfloat *u);
void __glMgrim_MapGrid1d(GLint un, GLdouble u1, GLdouble u2);
void __glMgrim_MapGrid1f(GLint un, GLfloat u1, GLfloat u2);
void __glMgrim_MapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
void __glMgrim_MapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
void __glMgrim_EvalMesh1(GLenum mode, GLint i1, GLint i2);
void __glMgrim_EvalPoint1(GLint i);
void __glMgrim_EvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
void __glMgrim_EvalPoint2(GLint i, GLint j);
void __glMgrUpdateEvalAttributes(__GLcontext *gc, ...);
void __Mgr_ReturnMode();
GLboolean __glMgrim_IsEnabled(GLenum cap);
void spin_and_return();
void spin_and_return_inner();
void __Mgr_GetCurrentAttrState();
void __glMgrDoGet(__GLcontext *gc, ...);
void __glMgrim_GetDoublev(GLenum pname, GLdouble *data);
GLenum __glMgrim_GetError(void);
void __glMgrim_GetFloatv(GLenum pname, GLfloat *data);
void __glMgrim_GetIntegerv(GLenum pname, GLint *data);
void __glMgrim_GetBooleanv(GLenum pname, GLboolean *data);
void __glMgrim_GetClipPlane(GLenum plane, GLdouble *equation);
void __glMgrim_GetLightfv(GLenum light, GLenum pname, GLfloat *params);
void __glMgrim_GetLightiv(GLenum light, GLenum pname, GLint *params);
void __glMgrim_GetMaterialfv(GLenum face, GLenum pname, GLfloat *params);
void __glMgrim_GetMaterialiv(GLenum face, GLenum pname, GLint *params);
void __glMgrim_GetMapfv(GLenum target, GLenum query, GLfloat *v);
void __glMgrim_GetMapdv(GLenum target, GLenum query, GLdouble *v);
void __glMgrim_GetMapiv(GLenum target, GLenum query, GLint *v);
void __glMgrim_GetTexImage(GLenum target, GLint level, GLenum format, GLenum type, void *pixels);
void __glMgrim_GetTexEnvfv(GLenum target, GLenum pname, GLfloat *params);
void __glMgrim_GetTexEnviv(GLenum target, GLenum pname, GLint *params);
void __glMgrim_GetTexParameterfv(GLenum target, GLenum pname, GLfloat *params);
void __glMgrim_GetTexParameteriv(GLenum target, GLenum pname, GLint *params);
void __glMgrim_GetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params);
void __glMgrim_GetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params);
void __glMgrim_GetDetailTexFuncSGIS(__GLcontext *gc, ...);
void mgrTM_DevZero();
void mgrTM_BufMalloc();
void mgrTM_BufFree();
void mgrTM_GrowSaveArena();
void mgrTM_ReconstituteSavePool();
void mgrTM_RefreshDim();
void Global_TM_Interface();
void IncreaseSpace();
void mgrTM_SetBasereg();
void mgrTM_InitTMhw();
void mgrTM_Init();
void mgrTM_InitTexture();
void mgrTM_ProcessTextureUsage();
void mgrTM_set_externalformat();
void mgrTM_set_internalformat();
void mgrTM_process_level();
void do_placement();
void SearchAllSpaces();
void FindSwapLocation();
void CheckClearance();
void FindOpenLocation();
void FindUnusedLocation();
void SplitDesc();
void CombineDesc();
void EstablishLocation();
void space_assert();
void UpdateSpaces();
void ReturnDesc();
void mgrTM_MakeResident();
void MovePlacement();
void RemoveResidency();
void RemoveDesc();
void mgrTM_SetLoadBuffer();
void mgrTM_VidTexWait();
void mgrTM_DrawSetup();
void LevelUsed();
void mgrTM_tram_select();
void mgrTM_TexValidate();
void MakeTextureResident();
void mgrTM_SendTlMode();
void mgrTM_SendTexmode1();
void mgrTM_SendTlTable();
void mgrTM_RemoveTex();
void mgrTM_RemoveLev();
void RemoveUsed();
void mgrTM_SaveData();
void mgrTM_DoSaveData();
void RestoreData();
void desc_alloc();
void __glMgrBindHWContextToThread(__GLcontext *gc, ...);
void __glMgrFreeTextureManager(__GLcontext *gc, ...);
void mgrTM_AppendPages();
void mgrTM_LockSaveData();
void mgrTM_UnlockSaveData();
void mgrTM_UnlockPages();
void mgrTM_AllocSaveData();
void mgrTM_FreeSaveData();
void mgrTM_InitDMAPool();
void mgrTM_FreeDMAPool();
void flushRegs();
void __glMgrasWrite(__GLcontext *gc, ...);
void __glMgrasSet(__GLcontext *gc, ...);
void __glMgrSaveTexmode(__GLcontext *gc, ...);
void __glMgrRestoreTexmode(__GLcontext *gc, ...);
void mgrTM_DoTexLoad();
void mgrTM_DoTexRead();
void mgrTM_DoCopyTex();
void __glMgrInitHostToTE(__GLcontext *gc, ...);
void mgrTM_SR_TexLoad();
void mgrTM_SR_TexRead();
void __glMgrInitColorTableState(__GLcontext *gc, ...);
void __glMgrFreeColorTableState(__GLcontext *gc, ...);
void __glMgrGetTable(__GLcontext *gc, ...);
void __glMgrScaleBiasClampTable(__GLcontext *gc, ...);
void __glMgrLoadTextureColorLUT(__GLcontext *gc, ...);
void __glMgrTextureColorTable(__GLcontext *gc, ...);
void __glMgrColorTable(__GLcontext *gc, ...);
void __glMgrim_ColorTableSGI(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *table);
void __glMgrim_ColorTableParameterfvSGI(GLenum target, GLenum pname, const GLfloat *params);
void __glMgrim_ColorTableParameterivSGI(GLenum target, GLenum pname, const GLint *params);
void __glMgrim_CopyColorTableSGI(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void __glMgrim_GetColorTableSGI(GLenum target, GLenum format, GLenum type, void *table);
void __glMgrim_GetColorTableParameterfvSGI(GLenum target, GLenum pname, GLfloat *params);
void __glMgrim_GetColorTableParameterivSGI(GLenum target, GLenum pname, GLint *params);
void __glMgrUpdateTextureColorTableState(__GLcontext *gc, ...);
void image1D_to_texturecolortable();
void __glMgrFreeHistogramMemory(__GLcontext *gc, ...);
void allocHistogramMemory();
void __glMgr_InitPixelStatState(__GLcontext *gc, ...);
void __glMgrFreePixelStatState(__GLcontext *gc, ...);
void __glMgrResetHistogramMemory(__GLcontext *gc, ...);
void __glMgrim_HistogramEXT(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void byteSwapMaybe();
void skipPixelsMaybe();
void __glMgr_FormatHistogram(__GLcontext *gc, ...);
void __Mgr_ReturnHistPIO();
void __glMgr_ReadEramDMAHQSetup(__GLcontext *gc, ...);
void __glMgr_PackHistogram(__GLcontext *gc, ...);
void __glMgrim_GetHistogramEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void __glMgrim_ResetHistogramEXT(GLenum target);
void __glMgrim_GetHistogramParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glMgrim_GetHistogramParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glMgrResetMinMaxMemory(__GLcontext *gc, ...);
void __glMgrim_MinmaxEXT(GLenum target, GLenum internalformat, GLboolean sink);
void __glMgr_FormatMinmax(__GLcontext *gc, ...);
void __glMgr_ReadCramDMAHQSetup(__GLcontext *gc, ...);
void __glMgr_PackMinmax(__GLcontext *gc, ...);
void __glMgrim_GetMinmaxEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void __glMgrim_ResetMinmaxEXT(GLenum target);
void __glMgrim_GetMinmaxParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glMgrim_GetMinmaxParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glMgrWriteSelectBuf(__GLcontext *gc, ...);
void __glMgrGetSelectData(__GLcontext *gc, ...);
void writehit();
void writemergehit();
void __glMgrim_SelectBuffer(GLsizei size, GLuint *buffer);
void __glMgrim_InitNames(void);
void __glMgrim_LoadName(GLuint name);
void __glMgrim_PopName(void);
void __glMgrim_PushName(GLuint name);
void __glMgrim_FeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer);
void __glMgrim_PassThrough(GLfloat token);
void __glMgrWriteFeedbackBuf(__GLcontext *gc, ...);
void __glMgrGetFeedbackData(__GLcontext *gc, ...);
void getchannels();
void getbaseformat();
void getbasetype();
void calcbytesperpixel();
void __glMgrCvtToFloat(__GLcontext *gc, ...);
void __glMgrCvtScaleBias(__GLcontext *gc, ...);
void __glMgrCvtToRGBA(__GLcontext *gc, ...);
void __glMgrCvtToInternalFmt(__GLcontext *gc, ...);
void __glMgr_PackPixels(__GLcontext *gc, ...);
void __glMgr_PackBitmap(__GLcontext *gc, ...);
void __glMgr_FormatTexels(__GLcontext *gc, ...);
void __glMgrGetRawVisualInfo(__GLcontext *gc, ...);
void __glMgrGetVisualInfo(__GLcontext *gc, ...);
void __glMgrGetDrawVisualInfo(__GLcontext *gc, ...);
void __glMgrInitPixelStateCRAM(__GLcontext *gc, ...);
void __glMgrInitPixelStateERAM(__GLcontext *gc, ...);
void __glMgrInitConvolutionState(__GLcontext *gc, ...);
void __glMgrFreeConvolutionState(__GLcontext *gc, ...);
void __glMgrGetFilter(__GLcontext *gc, ...);
void __glMgrScaleBiasFilter(__GLcontext *gc, ...);
void __glMgrim_ConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *image);
void __glMgrim_ConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *image);
void __glMgrim_SeparableFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *row, const void *column);
void __glMgrim_ConvolutionParameterfvEXT(GLenum target, GLenum pname, const GLfloat *params);
void __glMgrim_ConvolutionParameterfEXT(GLenum target, GLenum pname, GLfloat params);
void __glMgrim_ConvolutionParameterivEXT(GLenum target, GLenum pname, const GLint *params);
void __glMgrim_ConvolutionParameteriEXT(GLenum target, GLenum pname, GLint params);
void __glMgrim_GetConvolutionFilterEXT(GLenum target, GLenum format, GLenum type, void *image);
void __glMgrim_GetConvolutionParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glMgrim_GetConvolutionParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glMgrim_GetSeparableFilterEXT(GLenum target, GLenum format, GLenum type, void *row, void *column, void *span);
void __glMgrim_CopyConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void __glMgrim_CopyConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void __glMgrGeneralBitmap(__GLcontext *gc, ...);
void __glMgrim_Bitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap);
void __glMgrRenderBitmap(__GLcontext *gc, ...);
void __glMgr_UseDMAForWrite(__GLcontext *gc, ...);
void __glMgr_UseDMAForRead(__GLcontext *gc, ...);
void __glMgr_LockSingleDMAPool(__GLcontext *gc, ...);
void __glMgr_UnlockSingleDMAPool(__GLcontext *gc, ...);
void __glMgrBuildLockPageList(__GLcontext *gc, ...);
void __glMgr_LockMultiDMAPool(__GLcontext *gc, ...);
void __glMgr_UnlockMultiDMAPool(__GLcontext *gc, ...);
void __glMgrWaitForDMAWrite(__GLcontext *gc, ...);
void __glMgr_WriteDMAHQSetup(__GLcontext *gc, ...);
void __glMgr_WriteMultiDMAHQSetup(__GLcontext *gc, ...);
void __glMgr_WriteDMAGESetup(__GLcontext *gc, ...);
void __glMgrWaitForDMARead(__GLcontext *gc, ...);
void __glMgr_ReadDMAHQSetup(__GLcontext *gc, ...);
void PackLuminanceData();
void PackFloatData();
void GetPixelsDMA();
void GetPixelsFloatDMA();
void GetPixelsPackedDMA();
void GetPixelsBitmapDMA();
void GetPixelsLuminanceDMA();
void GetPixelsPIO();
void GetPixelsSwapShortPIO();
void GetPixelsSwapIntPIO();
void GetPixelsSwapFloatPIO();
void GetPixelsFloatPIO();
void GetPixelsPackedPIO();
void GetPixelsBitmapPIO();
void GetPixelsLuminancePIO();
void __glMgrRE4DMARd(__GLcontext *gc, ...);
void __glMgrRE4PIORd(__GLcontext *gc, ...);
void __glMgr_AltWriteDMAHQSetup(__GLcontext *gc, ...);
void __glMgrSaveRSS(__GLcontext *gc, ...);
void __glMgrRestoreRSS(__GLcontext *gc, ...);
void __glMgrFlushImageRegs(__GLcontext *gc, ...);
void __glMgrRSSRegShadow(__GLcontext *gc, ...);
void __glMgrRSSRegSet(__GLcontext *gc, ...);
void __glMgrLoadRasterPosInfo(__GLcontext *gc, ...);
void __glMgrUpdateRasterPos(__GLcontext *gc, ...);
void __glMgrInitPixelPath(__GLcontext *gc, ...);
void __glMgrAllocERAM(__GLcontext *gc, ...);
void __glMgrInitUnpackState(__GLcontext *gc, ...);
void __glMgrInitShiftAdd(__GLcontext *gc, ...);
void __glMgrInitShiftAddRGB(__GLcontext *gc, ...);
void __glMgrInitShiftAddLuminance(__GLcontext *gc, ...);
void __glMgrInitI2FState(__GLcontext *gc, ...);
void __glMgrInitCopyFifoLineState(__GLcontext *gc, ...);
void __glMgrInitScaleBiasState(__GLcontext *gc, ...);
void __glMgrInitExpandState(__GLcontext *gc, ...);
void __glMgrInitClampState(__GLcontext *gc, ...);
void __glMgrInitLUTState(__GLcontext *gc, ...);
void __glMgrInitLUTRGB(__GLcontext *gc, ...);
void __glMgrInitColorTable(__GLcontext *gc, ...);
void __glMgrInitLUTCIST(__GLcontext *gc, ...);
void __glMgrInitConvolve2DState(__GLcontext *gc, ...);
void __glMgrInitConvolve1DState(__GLcontext *gc, ...);
void __glMgrInitSeparable2DState(__GLcontext *gc, ...);
void __glMgrInitColorMatrixState(__GLcontext *gc, ...);
void __glMgrInitHistogramState(__GLcontext *gc, ...);
void __glMgrInitMinMaxState(__GLcontext *gc, ...);
void __glMgrInitCompressState(__GLcontext *gc, ...);
void __glMgrInitXZoomState(__GLcontext *gc, ...);
void __glMgrInitZoomState(__GLcontext *gc, ...);
void __glMgrInitXYZoomState(__GLcontext *gc, ...);
void __glMgrInitCleanupState(__GLcontext *gc, ...);
void __glMgrInitPackingState(__GLcontext *gc, ...);
void __glMgrInitMaskState(__GLcontext *gc, ...);
void __glMgrInitB2IState(__GLcontext *gc, ...);
void __glMgrInitF2IState(__GLcontext *gc, ...);
void __glMgrInitB2FState(__GLcontext *gc, ...);
void __glMgrInitDepthFinalState(__GLcontext *gc, ...);
void __glMgrInitScaleBiasFill(__GLcontext *gc, ...);
void __glMgrInitClampFill(__GLcontext *gc, ...);
void __glMgrInitLUTRGBFill(__GLcontext *gc, ...);
void __glMgrInitColorTableFill(__GLcontext *gc, ...);
void __glMgrInitConvolve2DFill(__GLcontext *gc, ...);
void __glMgrInitConvolve1DFill(__GLcontext *gc, ...);
void __glMgrInitSeparable2DFill(__GLcontext *gc, ...);
void __glMgrBuildFastPathChain(__GLcontext *gc, ...);
void __glMgrBuildColorChainHead(__GLcontext *gc, ...);
void __glMgrBuildColorChainTail(__GLcontext *gc, ...);
void __glMgrBuildCIChainHead(__GLcontext *gc, ...);
void __glMgrBuildCItoColorChain(__GLcontext *gc, ...);
void __glMgrBuildCIChainTail(__GLcontext *gc, ...);
void __glMgrBuildDepthChain(__GLcontext *gc, ...);
void __glMgrAddModule(__GLcontext *gc, ...);
void __glMgrInsertModule(__GLcontext *gc, ...);
void __glMgrDeleteModule(__GLcontext *gc, ...);
void __glMgrFreeChain(__GLcontext *gc, ...);
void __glMgrOptimizationFixups(__GLcontext *gc, ...);
void __glMgrOptimizeFinalExpand(__GLcontext *gc, ...);
void __glMgrOptimizeCILUT(__GLcontext *gc, ...);
void __glMgrOptimizeRGBLUT(__GLcontext *gc, ...);
void AdjustLUTI2F();
void __glMgrOptimizeColorTable(__GLcontext *gc, ...);
void __glMgrOptimizeCIMask(__GLcontext *gc, ...);
void __glMgrOptimizeChain(__GLcontext *gc, ...);
void __glMgrBuildChain(__GLcontext *gc, ...);
void __glMgrInitPixelPipe(__GLcontext *gc, ...);
void __glMgrim_RasterPos2dWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos2fWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos2iWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos2sWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos3dWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos3fWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos3iWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos3sWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos4dWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos4fWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos4iWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos4sWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos2dvWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos2fvWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos2ivWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos2svWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos3dvWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos3fvWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos3ivWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos3svWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos4dvWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos4fvWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos4ivWrapper(__GLcontext *gc, ...);
void __glMgrim_RasterPos4svWrapper(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos2d(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos2f(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos2i(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos2s(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos3d(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos3f(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos3i(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos3s(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos4d(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos4f(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos4i(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos4s(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos2dv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos2fv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos2iv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos2sv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos3dv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos3fv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos3iv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos3sv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos4dv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos4fv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos4iv(__GLcontext *gc, ...);
void __glMgrim_SoftRasterPos4sv(__GLcontext *gc, ...);
void __glMgrInitPixels(__GLcontext *gc, ...);
void __glMgrFreePixelState(__GLcontext *gc, ...);
void __glMgrMakePages(__GLcontext *gc, ...);
void __glMgrMakeFastPathTiles(__GLcontext *gc, ...);
void __glMgrMake1GETiles(__GLcontext *gc, ...);
void __glMgrMake2GETiles(__GLcontext *gc, ...);
void __glMgrMakeHQTiles(__GLcontext *gc, ...);
void __glMgrComputeStrideSkipBytes(__GLcontext *gc, ...);
void __glMgrUnfoldSmallImage(__GLcontext *gc, ...);
void __glMgrPrintTileInfo(__GLcontext *gc, ...);
void __glMgrPrintTilingInfo(__GLcontext *gc, ...);
void __glMgrMakeTiles(__GLcontext *gc, ...);
void __glMgrExtractTypeInfo(__GLcontext *gc, ...);
void __glMgrExtractInternalTypeInfo(__GLcontext *gc, ...);
void __glMgrExtractFormatInfo(__GLcontext *gc, ...);
void __glMgrGetCurrentConvFilter(__GLcontext *gc, ...);
void __glMgrMakePixelDesc(__GLcontext *gc, ...);
void __glMgrGetAccum(__GLcontext *gc, ...);
void __glMgrGetColorBuffer(__GLcontext *gc, ...);
void __glMgrGetCurrentBuffer(__GLcontext *gc, ...);
void __glMgrGetDepthBuffer(__GLcontext *gc, ...);
void __glMgrGetEnables(__GLcontext *gc, ...);
void __glMgrGetEval(__GLcontext *gc, ...);
void __glMgrGetFog(__GLcontext *gc, ...);
void __glMgrGetLighting(__GLcontext *gc, ...);
void __glMgrGetLine(__GLcontext *gc, ...);
void __glMgrGetPixel(__GLcontext *gc, ...);
void __glMgrGetPoint(__GLcontext *gc, ...);
void __glMgrGetPolygon(__GLcontext *gc, ...);
void __glMgrGetScissor(__GLcontext *gc, ...);
void __glMgrGetStencil(__GLcontext *gc, ...);
void __glMgrGetTransform(__GLcontext *gc, ...);
void __glMgrGetViewport(__GLcontext *gc, ...);
void __glMgrGetMachineState(__GLcontext *gc, ...);
void __glMgrPickAllProcs(__GLcontext *gc, ...);
void __glMgrPickLineProcs(__GLcontext *gc, ...);
void __glMgrPickPixelProcs(__GLcontext *gc, ...);
void __glMgrPickPointProcs(__GLcontext *gc, ...);
void __glMgrPickRenderBitmapProcs(__GLcontext *gc, ...);
void __glMgrPickSpanProcs(__GLcontext *gc, ...);
void __glMgrPickSoftProcs(__GLcontext *gc, ...);
void __glMgrPickStoreProcs(__GLcontext *gc, ...);
void LoadSoftDispatchVectors();
void __glMgrSetSoftHardwareState(__GLcontext *gc, ...);
void __glMgrEnterSoftPath(__GLcontext *gc, ...);
void LoadHardDispatchVectors();
void __glMgrPassAccum(__GLcontext *gc, ...);
void __glMgrPassColorBuffer(__GLcontext *gc, ...);
void __glMgrPassCurrentBuffer(__GLcontext *gc, ...);
void __glMgrPassDepthBuffer(__GLcontext *gc, ...);
void __glMgrPassEnables(__GLcontext *gc, ...);
void __glMgrPassEval(__GLcontext *gc, ...);
void __glMgrPassFog(__GLcontext *gc, ...);
void __glMgrPassLighting(__GLcontext *gc, ...);
void __glMgrPassLine(__GLcontext *gc, ...);
void __glMgrPassPixel(__GLcontext *gc, ...);
void __glMgrPassPoint(__GLcontext *gc, ...);
void __glMgrPassPolygon(__GLcontext *gc, ...);
void __glMgrPassScissor(__GLcontext *gc, ...);
void __glMgrPassStencil(__GLcontext *gc, ...);
void __glMgrPassTransform(__GLcontext *gc, ...);
void __glMgrPassViewport(__GLcontext *gc, ...);
void __glMgrPassMachineState(__GLcontext *gc, ...);
void __glMgrExitSoftPath(__GLcontext *gc, ...);
void __glMgrGetTexture(__GLcontext *gc, ...);
void __glMgrPassTexture(__GLcontext *gc, ...);
void __glMgrim_Clear(GLbitfield mask);
void __glMgrim_Swaptmesh(__GLcontext *gc, ...);
void __glMgrim_lmcolor(__GLcontext *gc, ...);
void __glMgrim_FullScreen(__GLcontext *gc, ...);
void __glMgrim_n3f(__GLcontext *gc, ...);
void __glMgrim_IglooInterfaceSGIX(__GLcontext *gc, ...);
void __glDlistBlockStateInit();
void __glDlistBlockStateFree();
void block_grow_region();
void __glDlistPreallocBlocks();
void __glDlistAllocBlock();
void __glDlistFreeBlock();
void __glDlistCompactBlocks();
void __glDlistIsBlock();
void __glDlistTransientBlock();
void __glDlistFreeTransient();
void __glDlistHeapInit();
void __glDlistHeapFree();
void __glDlistHeapQueryMin();
void __glDlistHeapRemoveMin();
void __glDlistHeapInsert();
void __glDlistHeapRemove();
void __glDlistHeapPriorityChanged();
void __glDlistPrintHeap();
void upheap();
void downheap();
void __glShareDlist();
void __glInitDlistState();
void __glFreeDlistState();
void __glim_NewList(GLuint list, GLenum mode);
void __glce_EndList(void);
void __glim_EndList(void);
void DoCallList();
void __gllc_CallList();
void __glle_CallList();
void __glce_CallList(GLuint list);
void __glce_CallLists(GLsizei n, GLenum type, const void *lists);
void __glim_CallList(GLuint list);
void DoCallLists();
void __gllc_CallLists();
void __glle_CallLists();
void __glim_CallLists(GLsizei n, GLenum type, const void *lists);
void __glce_DrawArraysEXT(GLenum mode, GLint first, GLsizei count);
void __glce_DrawElements(GLenum mode, GLsizei count, GLenum type, const void *indices);
void __glce_ArrayElementEXT(GLint i);
void __glDlistAllocOp2();
void __glDlistFreeOp();
void __glDlistAppendOp();
void __glGenericDlistOptimizer();
void __gllc_Begin();
void __glle_Begin_LineLoop();
void __glle_Begin_LineStrip();
void __glle_Begin_Lines();
void __glle_Begin_Points();
void __glle_Begin_Polygon();
void __glle_Begin_TriangleStrip();
void __glle_Begin_TriangleFan();
void __glle_Begin_Triangles();
void __glle_Begin_QuadStrip();
void __glle_Begin_Quads();
void __gllc_InvalidValue();
void __gllc_InvalidEnum();
void __gllc_InvalidOperation();
void __gllc_TableTooLarge();
void __gllc_UnimplementedExtension();
void __gllc_Error();
void __glle_InvalidValue();
void __glle_InvalidEnum();
void __glle_InvalidOperation();
void __glle_TableTooLarge();
void __glle_UnimplementedExtension();
void ApplyMatChange();
void FreeFastMaterial();
void __glDlistOptimizeMaterial();
void __glle_FastMaterial();
void __glDisposeDlist();
void __glEmptyFreeDlist();
void __glEmptyExecuteDlist();
void __glDlistNewArray();
void __glDlistFreeArray();
GLboolean __glim_IsList(GLuint list);
GLuint __glim_GenLists(GLsizei range);
void __glim_ListBase(GLuint base);
void __glim_DeleteLists(GLuint list, GLsizei range);
void __glsplc_InvalidValue();
void __glsplc_InvalidEnum();
void __glsplc_InvalidOperation();
void __glsplc_UnimplementedExtension();
void __glsplc_CallList();
void __glsplc_CallLists();
void __glsplc_Bitmap();
void __glsplc_PolygonStipple();
void __glsplc_Map1f();
void __glsplc_Map1d();
void __glsplc_Map2f();
void __glsplc_Map2d();
void __glsplc_DeformationMap3fSGIX();
void __glsplc_DeformationMap3dSGIX();
void FormatAndType();
void __glsplc_DrawPixels();
void __glsplc_TexImage1D();
void __glsplc_TexImage2D();
void __glsplc_TexSubImage1DEXT();
void __glsplc_TexSubImage2DEXT();
void __glsplc_ConvolutionFilter1DEXT();
void __glsplc_ConvolutionFilter2DEXT();
void __glsplc_SeparableFilter2DEXT();
void __glsplc_TexImage3DEXT();
void __glsplc_TexSubImage3DEXT();
void __glsplc_Disable();
void __glsplc_Enable();
void __glsplc_ColorTableSGI();
void __glsplc_DrawArraysEXT();
void __glsplc_DrawElements();
void __glSPExecuteDlist();
void __glSPDlistAddFree();
void __glSPFreeDlist();
void __glSPDlistCompiler();
void __glSPDlistSpace();
void __glsplc_AddIlist();
void __glSPDlistFreeSegments();
void __glSPCreatePlist();
void __glSPValidateDlist();
void __glMipsCopyDispatch();
void __glInitDefaultPixelMap();
void __glPixelSetColorScales();
void __glFreePixelState();
void __glInitPixelState();
void __glim_PixelStoref(GLenum pname, GLfloat param);
void __glim_PixelStorei(GLenum pname, GLint param);
void __glim_PixelZoom(GLfloat xfactor, GLfloat yfactor);
void __glim_PixelTransferf(GLenum pname, GLfloat param);
void __glim_PixelTransferi(GLenum pname, GLint param);
void __glim_PixelMapfv(GLenum map, GLsizei mapsize, const GLfloat *values);
void __glim_PixelMapuiv(GLenum map, GLsizei mapsize, const GLuint *values);
void __glim_PixelMapusv(GLenum map, GLsizei mapsize, const GLushort *values);
void __glim_ReadBuffer(GLenum src);
void __glCheckDrawPixelArgs();
void __glCheckReadPixelArgs();
void __glim_DrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void __glim_ReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void *pixels);
void __glim_CopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
void __glBuildRGBAModifyTables();
void __glBuildItoIModifyTables();
void __glBuildItoRGBAModifyTables();
void __glSpanModifyRGBA();
void __glSpanModifyABGR();
void __glSpanModifyRed();
void __glSpanModifyGreen();
void __glSpanModifyBlue();
void __glSpanModifyAlpha();
void __glSpanModifyRGB();
void __glSpanModifyLuminance();
void __glSpanModifyLuminanceAlpha();
void __glSpanModifyRedAlpha();
void __glSpanModifyDepth();
void __glSpanModifyStencil();
void __glSpanModifyCI();
void __glSpanApplyRGBAColorTable();
void __glInitPacker();
void __glInitPacker3D();
void __glSpanReduceRed();
void __glSpanReduceGreen();
void __glSpanReduceBlue();
void __glSpanReduceAlpha();
void __glSpanReduceRGB();
void __glSpanReorderABGR();
void __glSpanReduceLuminance();
void __glSpanReduceLuminanceAlpha();
void __glSpanReduceRedAlpha();
void __glSpanReduceRedNS();
void __glSpanReduceGreenNS();
void __glSpanReduceBlueNS();
void __glSpanReduceAlphaNS();
void __glSpanReduceRGBNS();
void __glSpanReorderABGRNS();
void __glSpanReduceRedAlphaNS();
void __glSpanPackUbyte();
void __glSpanPackByte();
void __glSpanPackUshort();
void __glSpanPackShort();
void __glSpanPackUint();
void __glSpanPackInt();
void __glSpanPack332Ubyte();
void __glSpanPack4444Ushort();
void __glSpanPack5551Ushort();
void __glSpanPack8888Uint();
void __glSpanPack_10_10_10_2_Uint();
void __glSpanPackUbyteI();
void __glSpanPackByteI();
void __glSpanPackUshortI();
void __glSpanPackShortI();
void __glSpanPackUintI();
void __glSpanPackIntI();
void __glSpanPackNonCompUbyte();
void __glSpanPackNonCompByte();
void __glSpanPackNonCompUshort();
void __glSpanPackNonCompShort();
void __glSpanPackNonCompUint();
void __glSpanPackNonCompInt();
void __glSpanCopy();
void __glSpanPackBitmap();
void __glSpanRGBAScaleBias();
void __glSpanRGBAScaleBiasReduce();
void PickSpanModifiers();
void __glClipDrawPixels();
void __glComputeSpanPixelArray();
void __glLoadUnpackModes();
void __glInitDrawPixelsInfo();
void __glDrawPixelSpans();
void __glDrawPixels2();
void __glDrawPixels1();
void __glDrawPixels0();
void __glLateScissorRender();
void __glInitLateScissor();
void __glSlowPickDrawPixels();
void __glGenericPickDrawPixels();
void __glClipReadPixels();
void __glLoadPackModes();
void __glInitReadPixelsInfo();
void __glReadPixelSpans();
void __glReadPixels2();
void __glReadPixels1();
void __glReadPixels0();
void __glSlowPickReadPixels();
void __glGenericPickReadPixels();
void __glClipCopyPixels();
void __glInitCopyPixelsInfo();
void __glCopyPixelSpans();
void __glCopyPixels2();
void __glCopyPixels1();
void __glCopyPixels0();
void __glCopyPixelsOverlapping();
void __glSlowPickCopyPixels();
void __glGenericPickCopyPixels();
void __glCopyImage1();
void __glCopyImage2();
void __glCopyImageSpans();
void __glGenericPickCopyImageSpan();
void __glCopyImage3D();
void __glGenericPickCopyImage();
void __glInitReadImageSrcInfo();
void __glGenericPickReadImage();
void __glInitMemLoad();
void __glInitMemGet();
void __glInitMemUnpack();
void __glInitMemPack();
void __glSpanReadRGBA();
void __glSpanReadRGBA2();
void __glSpanReadCI();
void __glSpanReadCI2();
void __glSpanReadDepth();
void __glSpanReadDepth2();
void __glSpanReadDepthUint1();
void __glSpanReadDepthUint();
void __glSpanReadStencil();
void __glSpanReadStencil2();
void __glSlowDrawPixelsStore();
void __glSpanRenderRGBubyte();
void __glSpanRenderRGBubyte2();
void __glSpanRenderRGBAubyte();
void __glSpanRenderRGBAubyte2();
void __glSpanRenderDepthUint();
void __glSpanRenderDepthUint1();
void __glSpanRenderStencilUshort();
void __glSpanRenderStencilUshort2();
void __glSpanRenderStencilUbyte();
void __glSpanRenderStencilUbyte2();
void __glSpanRenderCIushort();
void __glSpanRenderCIushort2();
void __glSpanRenderCIubyte();
void __glSpanRenderCIubyte2();
void __glSpanRenderCIubyte3();
void __glSpanRenderCIubyte4();
void __glSpanRenderRGBA();
void __glSpanRenderRGBA2();
void __glSpanRenderDepth();
void __glSpanRenderDepth2();
void __glSpanRenderCI();
void __glSpanRenderCI2();
void __glSpanRenderStencil();
void __glSpanRenderStencil2();
void __glElementsPerGroup();
void __glBytesPerElement();
void __glSpecElementsPerGroup();
void __glSpecBytesPerElement();
void __glInitUnpacker();
void __glInitUnpacker3D();
void __glSpanUnpackBitmap();
void __glSpanUnpackBitmap2();
void __glSpanUnpackRGBubyte();
void __glSpanUnpackIndexUbyte();
void __glSpanUnpackRGBAubyte();
void __glSpanSwapBytes2();
void __glSpanSwapBytes2Dst();
void __glSpanSwapAndSkipBytes2();
void __glSpanSwapBytes4();
void __glSpanSwapBytes4Dst();
void __glSpanSwapAndSkipBytes4();
void __glSpanSkipPixels1();
void __glSpanSkipPixels2();
void __glSpanSkipPixels4();
void __glSpanSlowSkipPixels2();
void __glSpanSlowSkipPixels4();
void __glSpanAlignPixels2();
void __glSpanAlignPixels2Dst();
void __glSpanAlignPixels4();
void __glSpanAlignPixels4Dst();
void __glSpanUnpackUbyte();
void __glSpanUnpackByte();
void __glSpanUnpackUshort();
void __glSpanUnpackShort();
void __glSpanUnpackUint();
void __glSpanUnpackInt();
void __glSpanUnpack332Ubyte();
void __glSpanUnpack4444Ushort();
void __glSpanUnpack5551Ushort();
void __glSpanUnpack8888Uint();
void __glSpanUnpack_10_10_10_2_Uint();
void __glSpanUnpackUbyteI();
void __glSpanUnpackByteI();
void __glSpanUnpackUshortI();
void __glSpanUnpackShortI();
void __glSpanUnpackUintI();
void __glSpanUnpackIntI();
void __glSpanUnpackNonCompUint();
void __glSpanClampPreFloat();
void __glSpanClampNegPreFloat();
void __glSpanClampPostFloat();
void __glSpanClampRed();
void __glSpanClampGreen();
void __glSpanClampBlue();
void __glSpanClampAlpha();
void __glSpanClampRGB();
void __glSpanClampRGBA();
void __glSpanClampSigned();
void __glSpanExpandRed();
void __glSpanExpandGreen();
void __glSpanExpandBlue();
void __glSpanExpandAlpha();
void __glSpanExpandRGB();
void __glSpanExpandLuminance();
void __glSpanExpandLuminanceAlpha();
void __glSpanExpandRedAlpha();
void __glSpanExpandIntensity();
void __glSpanExpandRedNS();
void __glSpanExpandGreenNS();
void __glSpanExpandBlueNS();
void __glSpanExpandAlphaNS();
void __glSpanExpandRGBNS();
void __glSpanExpandLuminanceNS();
void __glSpanExpandLuminanceAlphaNS();
void __glSpanExpandRedAlphaNS();
void __glSpanExpandIntensityNS();
void __glSpanZeroFillAlpha();
void __glSpanScaleRGBA();
void __glSpanScaleABGR();
void __glSpanPreReorderABGR();
void __glSpanPreUnscaleRGBA();
void __glSpanPostUnscaleRGBA();
void __glSpanUnscaleABGR();
void __glSpanGetMemRGBA();
void __glSpanGetMemRGB();
void __glSpanGetMemL();
void __glSpanGetMemLA();
void __glSpanGetMemI();
void __glSpanMemPutRGBA();
void __glSpanMemPutRGB();
void __glSpanMemPutL();
void __glSpanMemPutLA();
void __glSpanMemPutI();
void __glRowScaleSumRGBA();
void __glRowScaleSumRGB();
void __glRowScaleSumL();
void __glRowScaleSumLA();
void __glRowScaleSumI();
void __glSpanPostConvScaleBiasRGBA();
void __glRowSetNoAlpha();
void __glRowSetAll();
void __glSpanConvolveReduceRGB();
void __glSpanConvolveReduceRGBA();
void __glSpanConvolveReduceL();
void __glSpanConvolveReduceLA();
void __glSpanConvolveReduceI();
void __glSpanConvolve1DReduceRGB();
void __glSpanConvolve1DReduceRGBA();
void __glSpanConvolve1DReduceL();
void __glSpanConvolve1DReduceLA();
void __glSpanConvolve1DReduceI();
void __glSlowPickConvolutionFilter();
void __glSlowPickSeparableFilter();
void __glSlowPickGetConvolutionFilter();
void __glSlowPickGetSeparableFilter();
void __glSlowPickCopyConvolutionFilter1D();
void __glSlowPickCopyConvolutionFilter2D();
void __glSep2dZoomDrawPixels();
void __glConv2dDrawPixels();
void __glSep2dDrawPixels();
void __glConv2dReadPixels();
void __glSep2dReadPixels();
void savePixelTransferState();
void restorePixelTransferState();
void __glConv2dCopyPixels();
void __glSep2dCopyPixels();
void __glConv2dCopyImage();
void __glSep2dCopyImage();
void __glFClamp();
void __glSpanMinmaxA();
void __glSpanMinmaxL();
void __glSpanMinmaxLA();
void __glSpanMinmaxRGB();
void __glSpanMinmaxRGBA();
void __glSpanMinmaxSinkA();
void __glSpanMinmaxSinkL();
void __glSpanMinmaxSinkLA();
void __glSpanMinmaxSinkRGB();
void __glSpanMinmaxSinkRGBA();
void __glSpanHistogramA();
void __glSpanHistogramL();
void __glSpanHistogramLA();
void __glSpanHistogramRGB();
void __glSpanHistogramRGBA();
void __glSpanHistogramSinkA();
void __glSpanHistogramSinkL();
void __glSpanHistogramSinkLA();
void __glSpanHistogramSinkRGB();
void __glSpanHistogramSinkRGBA();
void __glGenMatrixSignature();
void __glSpanColorMatrixSwizzleRGBA();
void __glSpanColorMatrixSwizzWithDropRGBA();
void __glSpanColorMatrixGeneralRGBA();
void __glSpanPostColorMatrixScaleBiasRGBA();
void Load();
void Accumulate();
void Mult();
void Add();
void Return();
void __glInitAccum64();
void __glim_Accum(GLenum op, GLfloat value);
void __glValidateAlphaTest();
void __glim_AlphaFunc(GLenum func, GLfloat ref);
void __glim_BlendFunc(GLenum sfactor, GLenum dfactor);
void __glim_BlendEquationEXT(GLenum mode);
void __glim_ClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glim_ClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glim_ClearDepth(GLdouble depth);
void __glim_ClearIndex(GLfloat c);
void __glim_ClearStencil(GLint s);
void __glim_ColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void __glim_ColorMaterial(GLenum face, GLenum mode);
void __glim_CullFace(GLenum mode);
void __glim_DepthFunc(GLenum func);
void __glim_DepthMask(GLboolean flag);
void __glim_DrawBuffer(GLenum buf);
void __glim_Fogfv(GLenum pname, const GLfloat *params);
void __glim_Fogf(GLenum pname, GLfloat param);
void __glim_Fogiv(GLenum pname, const GLint *params);
void __glim_Fogi(GLenum pname, GLint param);
void __glim_FrontFace(GLenum mode);
void __glim_Hint(GLenum target, GLenum mode);
void __glim_IndexMask(GLuint mask);
void __glTransformLightDirection();
void __glim_Lightfv(GLenum light, GLenum pname, const GLfloat *params);
void __glim_Lightf(GLenum light, GLenum pname, GLfloat param);
void __glim_Lightiv(GLenum light, GLenum pname, const GLint *params);
void __glim_Lighti(GLenum light, GLenum pname, GLint param);
void __glim_LightModelfv(GLenum pname, const GLfloat *params);
void __glim_LightModelf(GLenum pname, GLfloat param);
void __glim_LightModeliv(GLenum pname, const GLint *params);
void __glim_LightModeli(GLenum pname, GLint param);
void __glim_LineStipple(GLint factor, GLushort pattern);
void RoundWidth();
void ClampWidth();
void __glim_LineWidth(GLfloat width);
void __glim_LogicOp(GLenum opcode);
void ApplyParameterF();
void __glErrorCheckMaterial();
void __glim_Materialfv(GLenum face, GLenum pname, const GLfloat *params);
void __glim_Materialf(GLenum face, GLenum pname, GLfloat param);
void ApplyParameterI();
void __glim_Materialiv(GLenum face, GLenum pname, const GLint *params);
void __glim_Materiali(GLenum face, GLenum pname, GLint param);
void RoundSize();
void ClampSize();
void __glim_PointSize(GLfloat size);
void __glim_PolygonMode(GLenum face, GLenum mode);
void __glim_PolygonStipple(const GLubyte *mask);
void __glim_ShadeModel(GLenum mode);
void __glim_StencilMask(GLuint mask);
void __glim_StencilFunc(GLenum func, GLint ref, GLuint mask);
void __glim_StencilOp(GLenum fail, GLenum zfail, GLenum zpass);
void __glCopyContext();
void __glim_PushAttrib(GLbitfield mask);
void __glim_PopAttrib(void);
void __glim_Enable(GLenum cap);
void __glim_Disable(GLenum cap);
GLboolean __glim_IsEnabled(GLenum cap);
void __glim_BlendColorEXT(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glim_PolygonOffsetEXT(GLfloat factor, GLfloat bias);
void __glim_PolygonOffset(GLfloat factor, GLfloat units);
void __glFreeAttributeState();
void __glim_EnableClientState(GLenum array);
void __glim_DisableClientState(GLenum array);
void __glim_PushClientAttrib(GLbitfield mask);
void __glim_PopClientAttrib(void);
void __glDrawBitmap();
void __glFastDrawBitmap();
void __glRenderBitmap();
void __glim_Bitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap);
void __glDoBlendAdd();
void __glDoBlendMin();
void __glDoBlendMax();
void __glDoBlendSubtract();
void __glDoBlendReverseSubtract();
void __glDoBlendLogicOp();
void __glDoBlendSourceZERO();
void __glDoBlendDestZERO();
void __glDoBlendSourceONE();
void __glDoBlendDestONE();
void __glDoBlendDestSC();
void __glDoBlendDestMSC();
void __glDoBlendSourceDC();
void __glDoBlendSourceMDC();
void __glDoBlendSourceSA();
void __glDoBlendDestSA();
void __glDoBlendSourceMSA();
void __glDoBlendDestMSA();
void __glDoBlendSourceDA();
void __glDoBlendDestDA();
void __glDoBlendSourceMDA();
void __glDoBlendDestMDA();
void __glDoBlendSourceSAT();
void __glDoBlendSourceCC();
void __glDoBlendDestCC();
void __glDoBlendSourceCA();
void __glDoBlendDestCA();
void __glDoBlendSourceMCC();
void __glDoBlendDestMCC();
void __glDoBlendSourceMCA();
void __glDoBlendDestMCA();
void Nop();
void __glDoNoFetchBlend();
void __glDoFetchBlend();
void __glDoBlend();
void __glDoBlendZeroClamp();
void __glDoBlendNoClamp();
void __glDoBlend_SA_ZERO();
void __glDoBlend_SA_ONE();
void __glDoBlend_SA_MSA();
void __glDoBlend_MSA_SA();
void __glGenericPickBlendProcs();
void __glBlendSpan();
void __glBlendSpan_SA_MSA();
void __glBlendSpan_MSA_SA();
void __glBlendSpan_SA_ZERO();
void __glBlendSpan_SA_ONE();
void __glBlendStippledSpan();
void __glInitBuffer();
void __glMakeCurrentBuffer();
void __glLoseCurrentBuffer();
void __glResizeBuffer();
void __glMoveBuffer();
void __glFreeBuffer();
void __glim_Color3ub(GLubyte red, GLubyte green, GLubyte blue);
void __glim_Color3ubv(const GLubyte *v);
void __glim_Color3b(GLbyte red, GLbyte green, GLbyte blue);
void __glim_Color3bv(const GLbyte *v);
void __glim_Color3d(GLdouble red, GLdouble green, GLdouble blue);
void __glim_Color3dv(const GLdouble *v);
void __glim_Color3f(GLfloat red, GLfloat green, GLfloat blue);
void __glim_Color3fv(const GLfloat *v);
void __glim_Color3i(GLint red, GLint green, GLint blue);
void __glim_Color3iv(const GLint *v);
void __glim_Color3ui(GLuint red, GLuint green, GLuint blue);
void __glim_Color3uiv(const GLuint *v);
void __glim_Color3s(GLshort red, GLshort green, GLshort blue);
void __glim_Color3sv(const GLshort *v);
void __glim_Color3us(GLushort red, GLushort green, GLushort blue);
void __glim_Color3usv(const GLushort *v);
void __glim_Color4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void __glim_Color4ubv(const GLubyte *v);
void __glim_Color4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void __glim_Color4bv(const GLbyte *v);
void __glim_Color4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void __glim_Color4dv(const GLdouble *v);
void __glim_Color4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glim_Color4fv(const GLfloat *v);
void __glim_Color4i(GLint red, GLint green, GLint blue, GLint alpha);
void __glim_Color4iv(const GLint *v);
void __glim_Color4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
void __glim_Color4uiv(const GLuint *v);
void __glim_Color4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
void __glim_Color4sv(const GLshort *v);
void __glim_Color4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);
void __glim_Color4usv(const GLushort *v);
void __glim_Indexd(GLdouble c);
void __glim_Indexf(GLfloat c);
void __glim_Indexi(GLint c);
void __glim_Indexs(GLshort c);
void __glim_Indexdv(const GLdouble *c);
void __glim_Indexfv(const GLfloat *c);
void __glim_Indexiv(const GLint *c);
void __glim_Indexsv(const GLshort *c);
void __glim_Indexub(GLubyte c);
void __glim_Indexubv(const GLubyte *c);
void __glim_Clear(GLbitfield mask);
void Clip();
void ClipC();
void ClipI();
void ClipBC();
void ClipBI();
void ClipT();
void ClipIT();
void ClipBIT();
void ClipCT();
void ClipBCT();
void ClipF();
void ClipIF();
void ClipBIF();
void ClipCF();
void ClipBCF();
void ClipFT();
void ClipIFT();
void ClipBIFT();
void ClipCFT();
void ClipBCFT();
void __glGenericPickParameterClipProcs();
void __glCheckColorTableArgs();
void __glLoadColorTableParams();
void __glColorTableSGI();
void __glim_ColorTableSGI(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *table);
void __glim_GetColorTableSGI(GLenum target, GLenum format, GLenum type, void *table);
void __glColorTableModifiers();
void __glColorTableParameterv();
void __glim_ColorTableParameterivSGI(GLenum target, GLenum pname, const GLint *params);
void __glim_ColorTableParameterfvSGI(GLenum target, GLenum pname, const GLfloat *params);
void __glGetColorTableParameterv();
void __glim_GetColorTableParameterivSGI(GLenum target, GLenum pname, GLint *params);
void __glim_GetColorTableParameterfvSGI(GLenum target, GLenum pname, GLfloat *params);
void __glim_CopyColorTableSGI(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void __glInitColorTables();
void __glFreeColorTables();
void __glCopyColorTableScaleBias();
void __glDispatchExec();
void __glBeginDispatchOverride();
void __glEndDispatchOverride();
void __glEarlyInitContext();
void __glContextSetColorScales();
void __glSoftResetContext();
void __glDestroyContext();
void __glDestroySoftContext();
void __glFreePrivate();
void __glSetError();
GLint __glim_RenderMode(GLenum mode);
void __glChangeWindowSize();
void __glFindWindowSize();
void FillBufferInfo();
void __glMakeCurrentBuffers();
void __glLoseCurrentBuffers();
void __glFreeBufData();
void __glCheckConvolutionFilterArgs();
void __glim_ConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *image);
void __glim_ConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *image);
void __glim_SeparableFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *row, const void *column);
void __glim_CopyConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void __glim_CopyConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void __glim_GetConvolutionFilterEXT(GLenum target, GLenum format, GLenum type, void *image);
void __glim_GetSeparableFilterEXT(GLenum target, GLenum format, GLenum type, void *row, void *column, void *span);
void __GLconvolutionParameter();
void __glim_ConvolutionParameteriEXT(GLenum target, GLenum pname, GLint params);
void __glim_ConvolutionParameterivEXT(GLenum target, GLenum pname, const GLint *params);
void __glim_ConvolutionParameterfEXT(GLenum target, GLenum pname, GLfloat params);
void __glim_ConvolutionParameterfvEXT(GLenum target, GLenum pname, const GLfloat *params);
void __GLgetConvolutionParameter();
void __glim_GetConvolutionParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glim_GetConvolutionParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glConvolutionParameterfvEXT_size();
void __glConvolutionParameterivEXT_size();
void __glFillDeformationMap3f();
void __glFillDeformationMap3d();
void __glCheckMap3Params();
void FetchNon32();
void Fetch32();
void StoreNEVER();
void StoreLESS();
void StoreLESS_s();
void StoreEQUAL();
void StoreLEQUAL();
void StoreLEQUAL_s();
void StoreGREATER();
void StoreGREATER_s();
void StoreNOTEQUAL();
void StoreGEQUAL();
void StoreGEQUAL_s();
void StoreALWAYS();
void StoreLESS_W();
void StoreLESS_W_s();
void StoreEQUAL_W();
void StoreLEQUAL_W();
void StoreLEQUAL_W_s();
void StoreGREATER_W();
void StoreGREATER_W_s();
void StoreNOTEQUAL_W();
void StoreGEQUAL_W();
void StoreGEQUAL_W_s();
void StoreALWAYS_W();
void Fix_zbuffer();
void __glInitDepth24();
void __glInitDepth32();
void __glInitDepth();
void __glGenericFreeDlist();
void __glGenericExecuteDlist();
void __glGenericAllocDlist();
void __glle_Nop();
void __glGenericDlistCompiler();
void __glNopFreeDlist();
void __glNopExecuteDlist();
void __glNopAllocDlist();
void __glNopDlistCompiler();
void __glEvalComputeK();
void __glInitEvaluatorState();
void __glFreeEvaluatorState();
void __glim_Map1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points);
void __glim_Map1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points);
void __glim_Map2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points);
void __glim_Map2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points);
void __glim_EvalCoord1d(GLdouble u);
void __glim_EvalCoord1dv(const GLdouble *u);
void __glim_EvalCoord1f(GLfloat u);
void __glim_EvalCoord1fv(const GLfloat *u);
void __glim_EvalCoord2d(GLdouble u, GLdouble v);
void __glim_EvalCoord2dv(const GLdouble *u);
void __glim_EvalCoord2f(GLfloat u, GLfloat v);
void __glim_EvalCoord2fv(const GLfloat *u);
void __glim_MapGrid1d(GLint un, GLdouble u1, GLdouble u2);
void __glim_MapGrid1f(GLint un, GLfloat u1, GLfloat u2);
void __glim_MapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
void __glim_MapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
void __glim_EvalMesh1(GLenum mode, GLint i1, GLint i2);
void __glim_EvalPoint1(GLint i);
void __glim_EvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
void __glim_EvalPoint2(GLint i, GLint j);
void __glFillMap1f();
void __glFillMap1d();
void __glMap1_size();
void __glFillMap2f();
void __glFillMap2d();
void __glMap2_size();
void __glSetUpMap1();
void __glSetUpMap2();
void PreEvaluate();
void PreEvaluateWithDeriv();
void DoDomain1();
void DoEvalCoord1();
void __glDoEvalCoord1();
void ComputeFirstPartials();
void ComputeNormal2();
void DoDomain2();
void DoDomain2WithDerivs();
void DoEvalCoord2();
void __glDoEvalCoord2();
void __glEvalMesh1Line();
void __glEvalMesh1Point();
void sendChange();
void __glEvalMesh2Fill();
void __glEvalMesh2Point();
void __glEvalMesh2Line();
void NurbsKnots1Common();
void NurbsKnots2Common();
void __glim_NurbsKnots1dSGIX();
void __glim_NurbsKnots1fSGIX();
void __glim_NurbsKnots1iSGIX();
void __glim_NurbsKnots2dSGIX();
void __glim_NurbsKnots2fSGIX();
void __glim_NurbsKnots2iSGIX();
void __glim_FeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer);
void __glim_PassThrough(GLfloat token);
void __glFeedbackTag();
void feedback();
void __glFeedbackCopyPixels();
void __glFeedbackDrawPixels();
void __glFeedbackBitmap();
void __glFeedbackPoint();
void __glFeedbackLine();
void __glFeedbackTriangle();
void __glim_Finish(void);
void __glim_Flush(void);
void __glFogSpan();
void __glFogStippledSpan();
void __glFogSpanSlow();
void __glFogStippledSpanSlow();
void __glFogFragmentSlow();
void __glFogVertex();
void __glFogVertexLinear();
void __glFogColorSlow();
void __glim_GetTexEnvfv(GLenum target, GLenum pname, GLfloat *params);
void __glim_GetTexEnviv(GLenum target, GLenum pname, GLint *params);
void __glim_GetTexGenfv(GLenum coord, GLenum pname, GLfloat *params);
void __glim_GetTexGendv(GLenum coord, GLenum pname, GLdouble *params);
void __glim_GetTexGeniv(GLenum coord, GLenum pname, GLint *params);
void __glim_GetTexParameterfv(GLenum target, GLenum pname, GLfloat *params);
void __glim_GetTexParameteriv(GLenum target, GLenum pname, GLint *params);
void __glim_GetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params);
void __glim_GetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params);
void __glim_GetTexFilterFuncSGIS(GLenum target, GLenum filter, GLfloat *weights);
void __glim_GetClipPlane(GLenum plane, GLdouble *equation);
void __glInitImagePack();
void __glim_GetTexImage(GLenum target, GLint level, GLenum format, GLenum type, void *pixels);
void __glim_GetPolygonStipple(GLubyte *mask);
void __glim_GetLightfv(GLenum light, GLenum pname, GLfloat *params);
void __glim_GetLightiv(GLenum light, GLenum pname, GLint *params);
void __glim_GetMaterialfv(GLenum face, GLenum pname, GLfloat *params);
void __glim_GetMaterialiv(GLenum face, GLenum pname, GLint *params);
void __glim_GetMapfv(GLenum target, GLenum query, GLfloat *v);
void __glim_GetMapdv(GLenum target, GLenum query, GLdouble *v);
void __glim_GetMapiv(GLenum target, GLenum query, GLint *v);
void __glim_GetPixelMapfv(GLenum map, GLfloat *values);
void __glim_GetPixelMapuiv(GLenum map, GLuint *values);
void __glim_GetPixelMapusv(GLenum map, GLushort *values);
void __glConvertResult();
void __glDoGet();
void __glim_GetDoublev(GLenum pname, GLdouble *data);
void __glim_GetFloatv(GLenum pname, GLfloat *data);
void __glim_GetIntegerv(GLenum pname, GLint *data);
void __glim_GetBooleanv(GLenum pname, GLboolean *data);
GLenum __glim_GetError(void);
const GLubyte * __glim_GetString(GLenum name);
void __glim_GetPointervEXT(GLenum pname, void **params);
void __glProcessHistogramArguments();
void __glInitHistogramStore();
void __glInitHistogramUnpack();
void __glim_ResetHistogramEXT(GLenum target);
void __glim_HistogramEXT(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void __glCheckGetArguments();
void __glSetValue();
void __glResetArray();
void __glim_GetHistogramEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void __glGetHistogramParameters();
void __glim_GetHistogramParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glim_GetHistogramParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glProcessMinmaxArguments();
void __glResetMinmax();
void __glim_MinmaxEXT(GLenum target, GLenum internalformat, GLboolean sink);
void __glim_ResetMinmaxEXT(GLenum target);
void __glim_GetMinmaxEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void __glGetMinmaxParameters();
void __glim_GetMinmaxParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glim_GetMinmaxParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glConvertStipple();
void __glImageSize();
void __glImageSize3D();
void __glFillImage3D();
void __glFillImage();
void __glScaleColorf();
void __glClampAndScaleColorf();
void __glClampColorf();
void __glScaleColori();
void __glClampAndScaleColori();
void __glClampColori();
void __glUnScaleColorf();
void __glUnScaleColori();
void __glClampRGBColor();
void vvec();
void __glCalcRGBColor();
void __glFastCalcRGBColor();
void __glFogRGBColor();
void __glFogLitRGBColor();
void __glCalcCIColor();
void __glFastCalcCIColor();
void __glFogCIColor();
void __glFogLitCIColor();
void __glClampAndScaleColor();
void ChangeMaterialEmission();
void ChangeMaterialSpecular();
void ChangeMaterialAmbient();
void ChangeMaterialDiffuse();
void ChangeMaterialAmbientAndDiffuse();
void __glChangeOneMaterialColor();
void __glChangeBothMaterialColors();
void ComputeMaterialState();
void ComputeLightState();
void ComputeLightProcs();
void ComputeLightMaterialState();
void __glValidateMaterial();
void __glValidateLighting();
void __glGenericPickColorMaterialProcs();
void __glClipLine();
void __glFastClipSmoothLine();
void __glFastClipFlatLine();
void __glFastClipLine();
void __glInitLineData();
void __glRenderAliasLine();
void __glRenderFlatFogLine();
void __glInitAALineData();
void __glRenderAntiAliasLine();
void __glPolygonOffsetLine();
void __glSecondLinesVertex();
void __glFirstLinesVertex();
void __glBeginLines();
void __glOtherLStripVertex();
void __glOtherLStripVertexFast();
void __glSecondLStripVertex();
void __glFirstLStripVertex();
void __glBeginLStrip();
void __glSecondLLoopVertex();
void FirstLLoopVertex();
void __glEndLLoop();
void __glBeginLLoop();
void __glProcessLine();
void __glProcessLine3NW();
void __glWideLineRep();
void __glWideStippleLineRep();
void __glDrawBothLine();
void __glDrawBothStippledLine();
void __glScissorLine();
void __glScissorStippledLine();
void __glStippleLine();
void __glStencilTestLine();
void __glStencilTestStippledLine();
void __glDepthTestLine();
void __glDepthTestStippledLine();
void __glDepthTestStencilLine();
void __glDepthTestStencilStippledLine();
void __glDepthPassLine();
void __glDepthPassStippledLine();
void __glStoreLine();
void __glStoreStippledLine();
void __glAntiAliasLine();
void __glAntiAliasStippledLine();
void __gllc_Bitmap();
void __glle_Bitmap();
void __gllei_PolygonStipple();
void __gllc_PolygonStipple();
void __glle_PolygonStipple();
void __gllc_Map1f();
void __glle_Map1();
void __gllc_Map1d();
void __gllc_Map2f();
void __glle_Map2();
void __gllc_Map2d();
void __gllc_DeformationMap3fSGIX();
void __glle_DeformationMap3SGIX();
void __gllc_DeformationMap3dSGIX();
void __glle_DrawPixels();
void __gllc_DrawPixels();
void __glle_TexImage1D();
void __glle_TexImage2D();
void __gllc_TexImage1D();
void __gllc_TexImage2D();
void __glle_TexImage3DEXT();
void __gllc_TexImage3DEXT();
void __glle_TexSubImage1DEXT();
void __gllc_TexSubImage1DEXT();
void __glle_TexSubImage2DEXT();
void __gllc_TexSubImage2DEXT();
void __glle_TexSubImage3DEXT();
void __gllc_TexSubImage3DEXT();
void __glle_ConvolutionFilter1DEXT();
void __gllc_ConvolutionFilter1DEXT();
void __glle_ConvolutionFilter2DEXT();
void __gllc_ConvolutionFilter2DEXT();
void __glle_SeparableFilter2DEXT();
void __gllc_SeparableFilter2DEXT();
void __glle_TexImage4DSGIS();
void __gllc_TexImage4DSGIS();
void __glle_TexSubImage4DSGIS();
void __gllc_TexSubImage4DSGIS();
void __glle_Disable();
void __gllc_Disable();
void __glle_Enable();
void __gllc_Enable();
void __glle_DrawArraysEXT();
void __glle_DrawElements();
void __glle_ArrayElementEXT();
void __glle_ColorTableSGI();
void __gllc_ColorTableSGI();
void __gllc_DrawArraysEXT();
void __gllc_DrawElements();
void __glCopyMatrix();
void __glMakeIdentity();
void __glMultMatrix();
void __glNormalize();
void __glInvertTransposeMatrix();
void __glFloorLog2();
void __glFloor();
void NewBlock();
void DeleteBlock();
void __glNewArena();
void __glDeleteArena();
void __glArenaAlloc();
void __glArenaFreeAll();
void __glNamesNewArray();
void freeLeafData();
void freeLeaf();
void freeBranch();
void __glNamesFreeTree();
void __glNamesFreeArray();
void findLeaf();
void copyLeafInfo();
void fixMemoryProblem();
void computeMax();
void pushMaxVal();
void allocLeafData();
void reallocLeafData();
void allocLeaf();
void allocBranch();
void deleteChild();
void addChild();
void splitParent();
void buildParent();
void insertLeaf();
void deleteLeaf();
void resizeLeaf();
void prevLeaf();
void firstLeaf();
void nextLeaf();
void mergeLeaves();
void mergeLeaf();
void __glNamesNewData();
void __glNamesLockData();
void __glNamesLockDataList();
void __glNamesUnlockData();
void __glNamesUnlockDataList();
void __glNamesGenRange();
void __glNamesDeleteRange();
void __glNamesIsName();
void __glNamesGenNames();
void __glNamesDeleteNames();
void __glim_Normal3d(GLdouble nx, GLdouble ny, GLdouble nz);
void __glim_Normal3dv(const GLdouble *v);
void __glim_Normal3f(GLfloat nx, GLfloat ny, GLfloat nz);
void __glim_Normal3fv(const GLfloat *v);
void __glim_Normal3b(GLbyte nx, GLbyte ny, GLbyte nz);
void __glim_Normal3bv(const GLbyte *v);
void __glim_Normal3s(GLshort nx, GLshort ny, GLshort nz);
void __glim_Normal3sv(const GLshort *v);
void __glim_Normal3i(GLint nx, GLint ny, GLint nz);
void __glim_Normal3iv(const GLint *v);
void __glGenericPickSpanProcs();
void __glGenericPickPointProcs();
void __glGenericPickLineProcs();
void __glGenericPickTriangleProcs();
void __glGenericPickRenderBitmapProcs();
void __glGenericPickClipProcs();
void __glGenericPickTextureProcs();
void __glGenericPickFogProcs();
void __glGenericPickBufferProcs();
void __glGenericPickPixelProcs();
void __glGenericPickTransformProcs();
void __glGenericPickDepthProcs();
void __glGenericValidate();
void __glGenericPickAllProcs();
void __glBuildAntiAliasIndex();
void Coverage();
void __glRenderAntiAliasedRGBPoint();
void __glRenderAntiAliasedCIPoint();
void __glRenderAliasedPoint1_NoTex();
void __glRenderAliasedPoint1();
void __glRenderFlatFogPoint();
void __glRenderAliasedPointN();
void __glPolygonOffsetPoint();
void __glBeginPoints();
void __glEndPoints();
void __glPoint();
void __glPointFast();
void FindLineEquation();
void FindPlaneEquation();
void FindP();
void ComputeCoverageStuff();
void FillAASubTriangle();
void SetInitialParameters();
void __glFillAntiAliasedTriangle();
void clipToPlane();
void clipToPlaneEye();
void __glDoPolygonClip();
void __glClipPolygon();
void __glClipTriangle();
void FillSubTriangle();
void __glSnapXLeft();
void __glSnapXRight();
void __glComputePolygonOffset();
void __glPolygonOffsetForLineAndPoint();
void __glPolygonOffsetZ();
void __glFillTriangle();
void __glFillFlatFogTriangle();
void __glMatValidateVbuf0N();
void __glMatValidateVbuf0V1();
void __glMatValidateV1();
void __glMatValidateV1V2();
void __glMatValidateV1V2V3();
void __glMatValidateV2V3();
void OtherTFanVertex();
void SecondTFanVertex();
void FirstTFanVertex();
void __glBeginTFan();
void __glEvenTStripVertex();
void __glOddTStripVertex();
void __glEvenTStripVertexFast();
void __glOddTStripVertexFast();
void SecondTStripVertex();
void FirstTStripVertex();
void __glBeginTStrip();
void ThirdTrianglesVertex();
void SecondTrianglesVertex();
void FirstTrianglesVertex();
void __glBeginTriangles();
void FourthQStripVertex();
void ThirdQStripVertex();
void SecondQStripVertex();
void FirstQStripVertex();
void __glBeginQStrip();
void __glFourthQuadsVertex();
void ThirdQuadsVertex();
void SecondQuadsVertex();
void __glFirstQuadsVertex();
void __glBeginQuads();
void PolygonVertex();
void __glEndPolygon();
void __glBeginPolygon();
void __glRenderTriangle();
void __glRenderFlatTriangle();
void __glRenderFlatOneFaceTriangle();
void __glRenderSmoothTriangle();
void __glRenderSmoothOneFaceTriangle();
void __glRenderSmoothOneFaceTmesh();
void __glDontRenderTriangle();
void __glProcessSpan();
void __glProcessReplicateSpan();
void __glClipSpan();
void __glStippleSpan();
void __glStippleStippledSpan();
void __glAlphaTestSpan();
void __glAlphaTestStippledSpan();
void __glStencilTestSpan();
void __glStencilTestStippledSpan();
void __glDepthTestOffsetSpan();
void __glDepthTestStippledOffsetSpan();
void __glDepthTestSpan();
void __glDepthTestStippledSpan();
void __glDepthTestStencilSpan();
void __glDepthTestStencilStippledSpan();
void __glDepthTestStencilOffsetSpan();
void __glDepthTestStencilStippledOffsetSpan();
void __glDepthPassSpan();
void __glDepthPassStippledSpan();
void __glShadeCISpan();
void __glShadeRGBASpan();
void __glFlatCISpan();
void __glFlatRGBASpan();
void __glTextureSpan();
void __glTextureStippledSpan();
void __glDitherCISpan();
void __glDitherCIStippledSpan();
void __glDitherRGBASpan();
void __glDitherRGBAStippledSpan();
void __glRoundCISpan();
void __glRoundCIStippledSpan();
void __glRoundRGBASpan();
void __glRoundRGBAStippledSpan();
void __glLogicOpSpan();
void __glLogicOpStippledSpan();
void __glMaskRGBASpan();
void __glMaskCISpan();
void __glim_Begin(GLenum mode);
void __glim_End(void);
void __glNop();
void __glEndPrim();
void __glim_UnimplementedExtension();
void __glim_RasterPos2dv(const GLdouble *v);
void __glim_RasterPos2fv(const GLfloat *v);
void __glim_RasterPos2d(GLdouble x, GLdouble y);
void __glim_RasterPos2f(GLfloat x, GLfloat y);
void __glim_RasterPos2i(GLint x, GLint y);
void __glim_RasterPos2iv(const GLint *v);
void __glim_RasterPos2s(GLshort x, GLshort y);
void __glim_RasterPos2sv(const GLshort *v);
void __glim_RasterPos3dv(const GLdouble *v);
void __glim_RasterPos3fv(const GLfloat *v);
void __glim_RasterPos3d(GLdouble x, GLdouble y, GLdouble z);
void __glim_RasterPos3f(GLfloat x, GLfloat y, GLfloat z);
void __glim_RasterPos3i(GLint x, GLint y, GLint z);
void __glim_RasterPos3iv(const GLint *v);
void __glim_RasterPos3s(GLshort x, GLshort y, GLshort z);
void __glim_RasterPos3sv(const GLshort *v);
void __glim_RasterPos4dv(const GLdouble *v);
void __glim_RasterPos4fv(const GLfloat *v);
void __glim_RasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glim_RasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glim_RasterPos4i(GLint x, GLint y, GLint z, GLint w);
void __glim_RasterPos4iv(const GLint *v);
void __glim_RasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glim_RasterPos4sv(const GLshort *v);
void __glRasterPos2();
void __glRasterPos3();
void __glRasterPos4();
void __glim_Rectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void __glim_Rectdv(const GLdouble *v1, const GLdouble *v2);
void __glim_Rectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void __glim_Rectfv(const GLfloat *v1, const GLfloat *v2);
void __glim_Recti(GLint x1, GLint y1, GLint x2, GLint y2);
void __glim_Rectiv(const GLint *v1, const GLint *v2);
void __glim_Rects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void __glim_Rectsv(const GLshort *v1, const GLshort *v2);
void __glRect();
void __glim_SelectBuffer(GLsizei size, GLuint *buffer);
void __glim_InitNames(void);
void __glim_LoadName(GLuint name);
void __glim_PopName(void);
void __glim_PushName(GLuint name);
void __glSelectHit();
void __glSelectTriangle();
void __glSelectLine();
void __glSelectPoint();
void __glFogiv_size();
void __glFogfv_size();
void __glLightfv_size();
void __glLightiv_size();
void __glLightModelfv_size();
void __glLightModeliv_size();
void __glMaterialfv_size();
void __glMaterialiv_size();
void __glColorTableParameterfvSGI_size();
void __glColorTableParameterivSGI_size();
void __glSpriteParameterfvSGIX_size();
void __glSpriteParameterivSGIX_size();
void __glPointParameterfvSGIS_size();
void __glPixelTransformParameterfvSGI_size();
void __glPixelTransformParameterivSGI_size();
void __glReadSpan();
void __glReturnSpan();
void __glFetchSpan();
void __glInitLUTCache();
void __glFreeLUTCache();
void findEntry();
void __glCreateSpecLUT();
void __glFreeSpecLUT();
void Fetch();
void TestFunc();
void FailOp();
void PassDepthFailOp();
void DepthPassOp();
void buildOpTable();
void FreeStencilBuf();
void __glValidateStencil();
void __glInitStencil8();
void __glDoStore_ASD();
void __glDoStore_AS();
void __glDoStore_AD();
void __glDoStore_SD();
void __glDoStore_A();
void __glDoStore_S();
void __glDoStore_D();
void __glDoStore();
void __glDoNullStore();
void __glDoDoubleStore();
void __glGenericPickStoreProcs();
void __glim_SubdivPatchParameterfSGIX();
void __glim_SubdivPatchParameteriSGIX();
void __glim_SubdivPatchSGIX();
void CopyVertex();
void CopyRVertex();
void NormalizedCrossProduct();
void SubdivSmoothEdge();
void SubdivRegCreaseEdge();
void SubdivIRRegCreaseEdge();
void SubdivEdge();
void PrepSmoothVertex();
void UpdateSmoothVertex();
void UpdateConicalVertex();
void PrepCreaseVertex();
void UpdateCreaseVertex();
void UpdateVertex();
void SmoothPosition();
void CreasePosition();
void FinalPosition();
void SmoothNormal();
void CreaseNormal();
void CornerNormal();
void ComputeNormal();
void InitSubdivision();
void DoRow();
void DoNormal();
void DoInterpolate();
void DoInterpolateNormal();
void DoRender();
void __glim_TexCoord1d(GLdouble s);
void __glim_TexCoord1f(GLfloat s);
void __glim_TexCoord1i(GLint s);
void __glim_TexCoord1s(GLshort s);
void __glim_TexCoord1dv(const GLdouble *v);
void __glim_TexCoord1fv(const GLfloat *v);
void __glim_TexCoord1iv(const GLint *v);
void __glim_TexCoord1sv(const GLshort *v);
void __glim_TexCoord2d(GLdouble s, GLdouble t);
void __glim_TexCoord2f(GLfloat s, GLfloat t);
void __glim_TexCoord2i(GLint s, GLint t);
void __glim_TexCoord2s(GLshort s, GLshort t);
void __glim_TexCoord2dv(const GLdouble *v);
void __glim_TexCoord2fv(const GLfloat *v);
void __glim_TexCoord2iv(const GLint *v);
void __glim_TexCoord2sv(const GLshort *v);
void __glim_TexCoord3d(GLdouble s, GLdouble t, GLdouble r);
void __glim_TexCoord3f(GLfloat s, GLfloat t, GLfloat r);
void __glim_TexCoord3i(GLint s, GLint t, GLint r);
void __glim_TexCoord3s(GLshort s, GLshort t, GLshort r);
void __glim_TexCoord3dv(const GLdouble *v);
void __glim_TexCoord3fv(const GLfloat *v);
void __glim_TexCoord3iv(const GLint *v);
void __glim_TexCoord3sv(const GLshort *v);
void __glim_TexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void __glim_TexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void __glim_TexCoord4i(GLint s, GLint t, GLint r, GLint q);
void __glim_TexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);
void __glim_TexCoord4dv(const GLdouble *v);
void __glim_TexCoord4fv(const GLfloat *v);
void __glim_TexCoord4iv(const GLint *v);
void __glim_TexCoord4sv(const GLshort *v);
void __glLookUpTextureParams();
void __glLookUpTextureTexobjs();
void __glLookUpTexture();
void __glLookUpTextureObject();
void __glCopyTexImage();
void __glReadTexImage();
void __glTexInitTextureObject();
void __glShareTextureObjects();
void __glEarlyInitTextureState();
void InitTextureMachine();
void __glInitTextureState();
void __glFreeTextureState();
void __glim_TexGenfv(GLenum coord, GLenum pname, const GLfloat *params);
void __glim_TexGenf(GLenum coord, GLenum pname, GLfloat param);
void __glim_TexGendv(GLenum coord, GLenum pname, const GLdouble *params);
void __glim_TexGend(GLenum coord, GLenum pname, GLdouble param);
void __glim_TexGeniv(GLenum coord, GLenum pname, const GLint *params);
void __glim_TexGeni(GLenum coord, GLenum pname, GLint param);
void __glTexGendv_size();
void __glTexGenfv_size();
void __glTexGeniv_size();
void __glim_TexParameterfv(GLenum target, GLenum pname, const GLfloat *params);
void __glim_TexParameterf(GLenum target, GLenum pname, GLfloat param);
void __glim_TexParameteriv(GLenum target, GLenum pname, const GLint *params);
void __glim_TexParameteri(GLenum target, GLenum pname, GLint param);
void __glTexParameterfv_size();
void __glTexParameteriv_size();
void __glim_TexEnvfv(GLenum target, GLenum pname, const GLfloat *params);
void __glim_TexEnvf(GLenum target, GLenum pname, GLfloat param);
void __glim_TexEnviv(GLenum target, GLenum pname, const GLint *params);
void __glim_TexEnvi(GLenum target, GLenum pname, GLint param);
void __glTexEnvfv_size();
void __glTexEnviv_size();
void __glExtractTexelL();
void __glExtractTexelLA();
void __glExtractTexelRGB();
void __glExtractTexelRGBA();
void __glExtractTexelA();
void __glExtractTexelI();
void __glExtractTexelRGB8();
void __glExtractTexelRGBA8();
void __glExtractTexelL_B();
void __glExtractTexelLA_B();
void __glExtractTexelRGB_B();
void __glExtractTexelRGBA_B();
void __glExtractTexelA_B();
void __glExtractTexelI_B();
void __glExtractTexelRGB8_B();
void __glExtractTexelRGBA8_B();
void __glExtractTexel3L();
void __glExtractTexel3LA();
void __glExtractTexel3RGB();
void __glExtractTexel3RGBA();
void __glExtractTexel3A();
void __glExtractTexel3I();
void __glExtractTexel3RGB8();
void __glExtractTexel3RGBA8();
void __glExtractTexel3L_B();
void __glExtractTexel3LA_B();
void __glExtractTexel3RGB_B();
void __glExtractTexel3RGBA_B();
void __glExtractTexel3A_B();
void __glExtractTexel3I_B();
void __glExtractTexel3RGB8_B();
void __glExtractTexel3RGBA8_B();
void IsTextureConsistent();
void __glIsTextureConsistent();
void CheckTexImageArgs();
void ComputeTexLevelSize();
void __glTexCreateProxyLevel();
void __glTexCreateLevel();
void __glInitTexImageStore();
void __glInitTexImageGet();
void __glInitTexSourceUnpack();
void __glInitTexDestPack();
void IsLegalRange();
void __glCheckTexImage1DArgs();
void __glCheckTexImage2DArgs();
void __glCheckTexImage3DArgs();
void __glCheckCopyTexImageArgs();
void __glim_TexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const void *pixels);
void __gllei_TexImage1D();
void __glim_TexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
void __gllei_TexImage2D();
void __glim_TexImage3DEXT(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void __gllei_TexImage3DEXT();
void __glLoadDefaultFilterFuncSGIS();
void __glim_TexFilterFuncSGIS(GLenum target, GLenum filter, GLsizei n, const GLfloat *weights);
void __glNearestFilter1();
void __glNearestFilter2();
void __glNearestFilter3();
void __glLinearFilter1();
void __glLinearFilter2();
void __glLinearFilter3();
void __glFilter4Func();
void __glLinearFilter();
void __glNearestFilter();
void __glNMNFilter();
void __glLMNFilter();
void __glNMLFilter();
void __glLMLFilter();
void __glFilter4Func2();
void __glFilter4Func1();
void __glTextureModulateL();
void __glTextureModulateLA();
void __glTextureModulateRGB();
void __glTextureModulateRGBA();
void __glTextureModulateA();
void __glTextureModulateI();
void __glTextureDecalRGB();
void __glTextureDecalRGBA();
void __glTextureBlendL();
void __glTextureBlendLA();
void __glTextureBlendRGB();
void __glTextureBlendRGBA();
void __glTextureBlendA();
void __glTextureBlendI();
void __glTextureReplaceL();
void __glTextureReplaceLA();
void __glTextureReplaceRGB();
void __glTextureReplaceRGBA();
void __glTextureReplaceA();
void __glTextureReplaceI();
void __GL_TEXENV_CLAMP();
void __glTextureSBModulateL();
void __glTextureSBModulateLA();
void __glTextureSBModulateRGB();
void __glTextureSBModulateRGBA();
void __glTextureSBModulateA();
void __glTextureSBModulateI();
void __glTextureSBDecalRGB();
void __glTextureSBDecalRGBA();
void __glTextureSBBlendL();
void __glTextureSBBlendLA();
void __glTextureSBBlendRGB();
void __glTextureSBBlendRGBA();
void __glTextureSBBlendA();
void __glTextureSBBlendI();
void __glTextureSBReplaceL();
void __glTextureSBReplaceLA();
void __glTextureSBReplaceRGB();
void __glTextureSBReplaceRGBA();
void __glTextureSBReplaceA();
void __glTextureSBReplaceI();
void __glTextureCTModulateL();
void __glTextureCTModulateLA();
void __glTextureCTModulateRGB();
void __glTextureCTModulateRGBA();
void __glTextureCTModulateA();
void __glTextureCTModulateI();
void __glTextureCTDecalRGB();
void __glTextureCTDecalRGBA();
void __glTextureCTBlendL();
void __glTextureCTBlendLA();
void __glTextureCTBlendRGB();
void __glTextureCTBlendRGBA();
void __glTextureCTBlendA();
void __glTextureCTBlendI();
void __glTextureCTReplaceL();
void __glTextureCTReplaceLA();
void __glTextureCTReplaceRGB();
void __glTextureCTReplaceRGBA();
void __glTextureCTReplaceA();
void __glTextureCTReplaceI();
void __glNopPolygonRho();
void __glComputePolygonRho();
void __glNopLineRho();
void __glComputeLineRho();
void __glFastTextureFragment();
void __glTextureFragment();
void __glMipMapFragment();
void Dot();
void SphereGen();
void __glCalcMixedTexture();
void __glCalcSphereMap();
void __glCalcEyeLinear();
void __glCalcObjectLinear();
void __glCalcTexture();
void CheckTexSubImageArgs();
void __glInitTexSubImageStore();
void CheckTexSubImageRange();
void __glCheckTexSubImage1DArgs();
void __glCheckTexSubImage2DArgs();
void __glCheckTexSubImage3DArgs();
void __glCheckCopyTexSubImageArgs();
void __glim_TexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void __gllei_TexSubImage1DEXT();
void __glim_TexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void __gllei_TexSubImage2DEXT();
void __glim_TexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void __gllei_TexSubImage3DEXT();
void __glEmptyFreeTexObj();
void __glFreeTexObj();
void __glDisposeTexObj();
void __glim_GenTexturesEXT(GLsizei n, GLuint *textures);
void __glim_DeleteTexturesEXT(GLsizei n, const GLuint *textures);
void __glBindTexture();
void __glim_BindTextureEXT(GLenum target, GLuint texture);
void __glim_PrioritizeTexturesEXT(GLsizei n, const GLuint *textures, const GLclampf *priorities);
void IsTextureResident();
GLboolean __glim_AreTexturesResidentEXT(GLsizei n, const GLuint *textures, GLboolean *residences);
GLboolean __glim_IsTextureEXT(GLuint texture);
void __glim_CopyTexImage1DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void __glim_CopyTexImage2DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void __glim_CopyTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void __glim_CopyTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void __glim_CopyTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void __glTextureRGB_F_F_Span();
void __glTextureRGB_F_F_StippledSpan();
void __glTextureRGB_F_LML_Span();
void __glTextureRGB_F_LML_StippledSpan();
void __glTextureRGB_L_NML_Span();
void __glTextureRGB_L_NML_StippledSpan();
void __glTextureRGB_L_LML_Span();
void __glTextureRGB_L_LML_StippledSpan();
void __glTextureRGB_N_N_Span();
void __glTextureRGB_N_N_StippledSpan();
void __glTextureRGB_N_NMN_Span();
void __glTextureRGB_N_NMN_StippledSpan();
void __glim_EdgeFlag(GLboolean flag);
void __glim_EdgeFlagv(const GLboolean *flag);
void __glim_Vertex2fv(const GLfloat *v);
void __glim_Vertex3fv(const GLfloat *v);
void __glim_Vertex4fv(const GLfloat *v);
void __glim_Vertex2f(GLfloat x, GLfloat y);
void __glim_Vertex2d(GLdouble x, GLdouble y);
void __glim_Vertex2dv(const GLdouble *v);
void __glim_Vertex2i(GLint x, GLint y);
void __glim_Vertex2iv(const GLint *v);
void __glim_Vertex2s(GLshort x, GLshort y);
void __glim_Vertex2sv(const GLshort *v);
void __glim_Vertex3f(GLfloat x, GLfloat y, GLfloat z);
void __glim_Vertex3d(GLdouble x, GLdouble y, GLdouble z);
void __glim_Vertex3dv(const GLdouble *v);
void __glim_Vertex3i(GLint x, GLint y, GLint z);
void __glim_Vertex3iv(const GLint *v);
void __glim_Vertex3s(GLshort x, GLshort y, GLshort z);
void __glim_Vertex3sv(const GLshort *v);
void __glim_Vertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glim_Vertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glim_Vertex4dv(const GLdouble *v);
void __glim_Vertex4i(GLint x, GLint y, GLint z, GLint w);
void __glim_Vertex4iv(const GLint *v);
void __glim_Vertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glim_Vertex4sv(const GLshort *v);
void __glInitVertexArrayState();
void __glim_ArrayElementEXT(GLint i);
void __glim_DrawArraysEXT(GLenum mode, GLint first, GLsizei count);
void __glim_VertexPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glim_NormalPointerEXT(GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glim_ColorPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glim_TexCoordPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glim_EdgeFlagPointerEXT(GLsizei stride, GLsizei count, const GLboolean *pointer);
void __glim_IndexPointerEXT(GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glim_ColorPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void __glim_DrawElements(GLenum mode, GLsizei count, GLenum type, const void *indices);
void __glim_EdgeFlagPointer(GLsizei stride, const void *pointer);
void __glim_IndexPointer(GLenum type, GLsizei stride, const void *pointer);
void __glim_InterleavedArrays(GLenum format, GLsizei stride, const void *pointer);
void __glim_NormalPointer(GLenum type, GLsizei stride, const void *pointer);
void __glim_TexCoordPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void __glim_VertexPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void __glClipCheckFrustum();
void __glClipCheckFrustum2D();
void __glClipCheckAll2();
void __glClipCheckAll3();
void __glClipCheckAll();
void __glSaveN();
void __glSaveCI();
void __glSaveC();
void __glSaveT();
void __glSaveCT();
void __glSaveNT();
void __glSaveCIAll();
void __glSaveCAll();
void __glSaveCN();
void __glSaveCNT();
void __glGenericPickVertexProcs();
void __glValidateVertex2();
void __glValidateVertex3();
void __glValidateVertex4();
void __glPickMatrixType();
void __glMultiplyMatrix();
void SetDepthRange();
void __glUpdateDepthRange();
void __glEarlyInitTransformState();
void __glInitTransformState();
void __glInvalidateSequenceNumbers();
void __glim_MatrixMode(GLenum mode);
void __glim_LoadIdentity(void);
void __glim_LoadMatrixf(const GLfloat *m);
void __glim_LoadMatrixd(const GLdouble *m);
void __glim_MultMatrixf(const GLfloat *m);
void __glim_MultMatrixd(const GLdouble *m);
void __glim_Rotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void __glim_Rotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void __glim_Scalef(GLfloat x, GLfloat y, GLfloat z);
void __glim_Scaled(GLdouble x, GLdouble y, GLdouble z);
void __glim_Translatef(GLfloat x, GLfloat y, GLfloat z);
void __glim_Translated(GLdouble x, GLdouble y, GLdouble z);
void __glim_PushMatrix(void);
void __glim_PopMatrix(void);
void __glim_Frustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glim_Ortho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glUpdateViewport();
void __glUpdateViewportTransform();
void __glim_Viewport(GLint x, GLint y, GLsizei width, GLsizei height);
void __glim_DepthRange(GLdouble n, GLdouble f);
void __glReadjustZCounts();
void __glim_Scissor(GLint x, GLint y, GLsizei width, GLsizei height);
void __glim_ClipPlane(GLenum plane, const GLdouble *equation);
void __glPushModelViewMatrix();
void __glPopModelViewMatrix();
void __glLoadIdentityModelViewMatrix();
void __glComputeInverseTranspose();
void __glPushProjectionMatrix();
void __glPopProjectionMatrix();
void __glLoadIdentityProjectionMatrix();
void __glPushTextureMatrix();
void __glPopTextureMatrix();
void __glLoadIdentityTextureMatrix();
void __glPushColorMatrix();
void __glPopColorMatrix();
void __glLoadIdentityColorMatrix();
void __glDoLoadMatrix();
void __glDoMultMatrix();
void __glDoRotate();
void __glScaleMatrix();
void __glDoScale();
void __glTranslateMatrix();
void __glDoTranslate();
void __glComputeClipBox();
void __glXForm2();
void __glXForm3();
void __glXForm4();
void __glXForm2_W();
void __glXForm3_W();
void __glXForm4_W();
void __glXForm2_2DW();
void __glXForm3_2DW();
void __glXForm4_2DW();
void __glXForm2_2DNRW();
void __glXForm3_2DNRW();
void __glXForm4_2DNRW();
void __glReCompute2DMatrix();
void __glGenericPickMvpMatrixProcs();
void __glGenericPickMatrixProcs();
void __glGenericPickInvTransposeProcs();
void __glDT_NEVER();
void __glDT_LEQUAL();
void __glDT_LEQUAL_s();
void __glDT_LESS();
void __glDT_LESS_s();
void __glDT_EQUAL();
void __glDT_GREATER();
void __glDT_GREATER_s();
void __glDT_NOTEQUAL();
void __glDT_GEQUAL();
void __glDT_GEQUAL_s();
void __glDT_ALWAYS();
void __glDT_LEQUAL_M();
void __glDT_LEQUAL_M_s();
void __glDT_LESS_M();
void __glDT_LESS_M_s();
void __glDT_EQUAL_M();
void __glDT_GREATER_M();
void __glDT_GREATER_M_s();
void __glDT_NOTEQUAL_M();
void __glDT_GEQUAL_M();
void __glDT_GEQUAL_M_s();
void __glDT_ALWAYS_M();
void __glPixmapAllocAccum();
void Finish();
void Flush();
void DestroySoftContext();
void __glPixmapMakeCurrent();
void Store_8();
void Store_16();
void Store_32A();
void Store_32();
void Fetch_8();
void Fetch_16();
void Fetch_32A();
void Fetch_32();
void __glPixInitRGB();
void __glPixInitCI();
void __glPixPickSpanProcs();
void __glPixPickStoreProcs();
void __gllc_ListBase();
void __gllc_Color3b();
void __gllc_Color3bv();
void __gllc_Color3d();
void __gllc_Color3dv();
void __gllc_Color3f();
void __gllc_Color3fv();
void __gllc_Color3i();
void __gllc_Color3iv();
void __gllc_Color3s();
void __gllc_Color3sv();
void __gllc_Color3ub();
void __gllc_Color3ubv();
void __gllc_Color3ui();
void __gllc_Color3uiv();
void __gllc_Color3us();
void __gllc_Color3usv();
void __gllc_Color4b();
void __gllc_Color4bv();
void __gllc_Color4d();
void __gllc_Color4dv();
void __gllc_Color4f();
void __gllc_Color4fv();
void __gllc_Color4i();
void __gllc_Color4iv();
void __gllc_Color4s();
void __gllc_Color4sv();
void __gllc_Color4ub();
void __gllc_Color4ubv();
void __gllc_Color4ui();
void __gllc_Color4uiv();
void __gllc_Color4us();
void __gllc_Color4usv();
void __gllc_EdgeFlag();
void __gllc_EdgeFlagv();
void __gllc_End();
void __gllc_Indexd();
void __gllc_Indexdv();
void __gllc_Indexf();
void __gllc_Indexfv();
void __gllc_Indexi();
void __gllc_Indexiv();
void __gllc_Indexs();
void __gllc_Indexsv();
void __gllc_Normal3b();
void __gllc_Normal3bv();
void __gllc_Normal3d();
void __gllc_Normal3dv();
void __gllc_Normal3f();
void __gllc_Normal3fv();
void __gllc_Normal3i();
void __gllc_Normal3iv();
void __gllc_Normal3s();
void __gllc_Normal3sv();
void __gllc_RasterPos2d();
void __gllc_RasterPos2dv();
void __gllc_RasterPos2f();
void __gllc_RasterPos2fv();
void __gllc_RasterPos2i();
void __gllc_RasterPos2iv();
void __gllc_RasterPos2s();
void __gllc_RasterPos2sv();
void __gllc_RasterPos3d();
void __gllc_RasterPos3dv();
void __gllc_RasterPos3f();
void __gllc_RasterPos3fv();
void __gllc_RasterPos3i();
void __gllc_RasterPos3iv();
void __gllc_RasterPos3s();
void __gllc_RasterPos3sv();
void __gllc_RasterPos4d();
void __gllc_RasterPos4dv();
void __gllc_RasterPos4f();
void __gllc_RasterPos4fv();
void __gllc_RasterPos4i();
void __gllc_RasterPos4iv();
void __gllc_RasterPos4s();
void __gllc_RasterPos4sv();
void __gllc_Rectd();
void __gllc_Rectdv();
void __gllc_Rectf();
void __gllc_Rectfv();
void __gllc_Recti();
void __gllc_Rectiv();
void __gllc_Rects();
void __gllc_Rectsv();
void __gllc_TexCoord1d();
void __gllc_TexCoord1dv();
void __gllc_TexCoord1f();
void __gllc_TexCoord1fv();
void __gllc_TexCoord1i();
void __gllc_TexCoord1iv();
void __gllc_TexCoord1s();
void __gllc_TexCoord1sv();
void __gllc_TexCoord2d();
void __gllc_TexCoord2dv();
void __gllc_TexCoord2f();
void __gllc_TexCoord2fv();
void __gllc_TexCoord2i();
void __gllc_TexCoord2iv();
void __gllc_TexCoord2s();
void __gllc_TexCoord2sv();
void __gllc_TexCoord3d();
void __gllc_TexCoord3dv();
void __gllc_TexCoord3f();
void __gllc_TexCoord3fv();
void __gllc_TexCoord3i();
void __gllc_TexCoord3iv();
void __gllc_TexCoord3s();
void __gllc_TexCoord3sv();
void __gllc_TexCoord4d();
void __gllc_TexCoord4dv();
void __gllc_TexCoord4f();
void __gllc_TexCoord4fv();
void __gllc_TexCoord4i();
void __gllc_TexCoord4iv();
void __gllc_TexCoord4s();
void __gllc_TexCoord4sv();
void __gllc_Vertex2d();
void __gllc_Vertex2dv();
void __gllc_Vertex2f();
void __gllc_Vertex2fv();
void __gllc_Vertex2i();
void __gllc_Vertex2iv();
void __gllc_Vertex2s();
void __gllc_Vertex2sv();
void __gllc_Vertex3d();
void __gllc_Vertex3dv();
void __gllc_Vertex3f();
void __gllc_Vertex3fv();
void __gllc_Vertex3i();
void __gllc_Vertex3iv();
void __gllc_Vertex3s();
void __gllc_Vertex3sv();
void __gllc_Vertex4d();
void __gllc_Vertex4dv();
void __gllc_Vertex4f();
void __gllc_Vertex4fv();
void __gllc_Vertex4i();
void __gllc_Vertex4iv();
void __gllc_Vertex4s();
void __gllc_Vertex4sv();
void __gllc_ClipPlane();
void __gllc_ColorMaterial();
void __gllc_CullFace();
void __gllc_Fogf();
void __gllc_Fogfv();
void __gllc_Fogi();
void __gllc_Fogiv();
void __gllc_FrontFace();
void __gllc_Hint();
void __gllc_Lightf();
void __gllc_Lightfv();
void __gllc_Lighti();
void __gllc_Lightiv();
void __gllc_LightModelf();
void __gllc_LightModelfv();
void __gllc_LightModeli();
void __gllc_LightModeliv();
void __gllc_LineStipple();
void __gllc_LineWidth();
void __gllc_Materialf();
void __gllc_Materialfv();
void __gllc_Materiali();
void __gllc_Materialiv();
void __gllc_PointSize();
void __gllc_PolygonMode();
void __gllc_Scissor();
void __gllc_ShadeModel();
void __gllc_TexParameterf();
void __gllc_TexParameterfv();
void __gllc_TexParameteri();
void __gllc_TexParameteriv();
void __gllc_TexEnvf();
void __gllc_TexEnvfv();
void __gllc_TexEnvi();
void __gllc_TexEnviv();
void __gllc_TexGend();
void __gllc_TexGendv();
void __gllc_TexGenf();
void __gllc_TexGenfv();
void __gllc_TexGeni();
void __gllc_TexGeniv();
void __gllc_InitNames();
void __gllc_LoadName();
void __gllc_PassThrough();
void __gllc_PopName();
void __gllc_PushName();
void __gllc_DrawBuffer();
void __gllc_Clear();
void __gllc_ClearAccum();
void __gllc_ClearIndex();
void __gllc_ClearColor();
void __gllc_ClearStencil();
void __gllc_ClearDepth();
void __gllc_StencilMask();
void __gllc_ColorMask();
void __gllc_DepthMask();
void __gllc_IndexMask();
void __gllc_Accum();
void __gllc_PopAttrib();
void __gllc_PushAttrib();
void __gllc_MapGrid1d();
void __gllc_MapGrid1f();
void __gllc_MapGrid2d();
void __gllc_MapGrid2f();
void __gllc_EvalCoord1d();
void __gllc_EvalCoord1dv();
void __gllc_EvalCoord1f();
void __gllc_EvalCoord1fv();
void __gllc_EvalCoord2d();
void __gllc_EvalCoord2dv();
void __gllc_EvalCoord2f();
void __gllc_EvalCoord2fv();
void __gllc_EvalMesh1();
void __gllc_EvalPoint1();
void __gllc_EvalMesh2();
void __gllc_EvalPoint2();
void __gllc_AlphaFunc();
void __gllc_BlendFunc();
void __gllc_LogicOp();
void __gllc_StencilFunc();
void __gllc_StencilOp();
void __gllc_DepthFunc();
void __gllc_PixelZoom();
void __gllc_PixelTransferf();
void __gllc_PixelTransferi();
void __gllc_PixelMapfv();
void __gllc_PixelMapuiv();
void __gllc_PixelMapusv();
void __gllc_ReadBuffer();
void __gllc_CopyPixels();
void __gllc_DepthRange();
void __gllc_Frustum();
void __gllc_LoadIdentity();
void __gllc_LoadMatrixf();
void __gllc_LoadMatrixd();
void __gllc_MatrixMode();
void __gllc_MultMatrixf();
void __gllc_MultMatrixd();
void __gllc_Ortho();
void __gllc_PopMatrix();
void __gllc_PushMatrix();
void __gllc_Rotated();
void __gllc_Rotatef();
void __gllc_Scaled();
void __gllc_Scalef();
void __gllc_Translated();
void __gllc_Translatef();
void __gllc_Viewport();
void __gllc_BlendColorEXT();
void __gllc_BlendEquationEXT();
void __gllc_PolygonOffsetEXT();
void __gllc_ConvolutionParameterfEXT();
void __gllc_ConvolutionParameterfvEXT();
void __gllc_ConvolutionParameteriEXT();
void __gllc_ConvolutionParameterivEXT();
void __gllc_CopyConvolutionFilter1DEXT();
void __gllc_CopyConvolutionFilter2DEXT();
void __gllc_HistogramEXT();
void __gllc_MinmaxEXT();
void __gllc_ResetHistogramEXT();
void __gllc_ResetMinmaxEXT();
void __gllc_BindTextureEXT();
void __gllc_PrioritizeTexturesEXT();
void __gllc_CopyTexImage1DEXT();
void __gllc_CopyTexImage2DEXT();
void __gllc_CopyTexSubImage1DEXT();
void __gllc_CopyTexSubImage2DEXT();
void __gllc_CopyTexSubImage3DEXT();
void __gllc_PolygonOffset();
void __gllc_Indexub();
void __gllc_Indexubv();
void __gllc_SampleMaskSGIS();
void __gllc_SamplePatternSGIS();
void __gllc_TagSampleBufferSGIX();
void __gllc_DetailTexFuncSGIS();
void __gllc_SharpenTexFuncSGIS();
void __gllc_ColorTableParameterfvSGI();
void __gllc_ColorTableParameterivSGI();
void __gllc_CopyColorTableSGI();
void __gllc_PixelTexGenSGIX();
void __gllc_SpriteParameterfSGIX();
void __gllc_SpriteParameterfvSGIX();
void __gllc_SpriteParameteriSGIX();
void __gllc_SpriteParameterivSGIX();
void __gllc_TexFilterFuncSGIS();
void __gllc_PointParameterfSGIS();
void __gllc_PointParameterfvSGIS();
void __gllc_FogFuncSGIS();
void __gllc_ReadInstrumentsSGIX();
void __gllc_StartInstrumentsSGIX();
void __gllc_StopInstrumentsSGIX();
void __gllc_ReferencePlaneSGIX();
void __gllc_FrameZoomSGIX();
void __gllc_DeformSGIX();
void __gllc_LoadIdentityDeformationMapSGIX();
void __gllc_PixelTransformSGI();
void __gllc_PixelTransformParameterfSGI();
void __gllc_PixelTransformParameterfvSGI();
void __gllc_PixelTransformParameteriSGI();
void __gllc_PixelTransformParameterivSGI();
void __gllc_SubdivPatchParameterfSGIX();
void __gllc_SubdivPatchParameteriSGIX();
void __gllc_NurbsKnots1dSGIX();
void __gllc_NurbsKnots1fSGIX();
void __gllc_NurbsKnots2dSGIX();
void __gllc_NurbsKnots2fSGIX();
void __glle_ListBase();
void __glle_Color3bv();
void __glle_Color3dv();
void __glle_Color3fv();
void __glle_Color3iv();
void __glle_Color3sv();
void __glle_Color3ubv();
void __glle_Color3uiv();
void __glle_Color3usv();
void __glle_Color4bv();
void __glle_Color4dv();
void __glle_Color4fv();
void __glle_Color4iv();
void __glle_Color4sv();
void __glle_Color4ubv();
void __glle_Color4uiv();
void __glle_Color4usv();
void __glle_EdgeFlagv();
void __glle_End();
void __glle_Indexdv();
void __glle_Indexfv();
void __glle_Indexiv();
void __glle_Indexsv();
void __glle_Normal3bv();
void __glle_Normal3dv();
void __glle_Normal3fv();
void __glle_Normal3iv();
void __glle_Normal3sv();
void __glle_RasterPos2dv();
void __glle_RasterPos2fv();
void __glle_RasterPos2iv();
void __glle_RasterPos2sv();
void __glle_RasterPos3dv();
void __glle_RasterPos3fv();
void __glle_RasterPos3iv();
void __glle_RasterPos3sv();
void __glle_RasterPos4dv();
void __glle_RasterPos4fv();
void __glle_RasterPos4iv();
void __glle_RasterPos4sv();
void __glle_Rectdv();
void __glle_Rectfv();
void __glle_Rectiv();
void __glle_Rectsv();
void __glle_TexCoord1dv();
void __glle_TexCoord1fv();
void __glle_TexCoord1iv();
void __glle_TexCoord1sv();
void __glle_TexCoord2dv();
void __glle_TexCoord2fv();
void __glle_TexCoord2iv();
void __glle_TexCoord2sv();
void __glle_TexCoord3dv();
void __glle_TexCoord3fv();
void __glle_TexCoord3iv();
void __glle_TexCoord3sv();
void __glle_TexCoord4dv();
void __glle_TexCoord4fv();
void __glle_TexCoord4iv();
void __glle_TexCoord4sv();
void __glle_Vertex2dv();
void __glle_Vertex2fv();
void __glle_Vertex2iv();
void __glle_Vertex2sv();
void __glle_Vertex3dv();
void __glle_Vertex3fv();
void __glle_Vertex3iv();
void __glle_Vertex3sv();
void __glle_Vertex4dv();
void __glle_Vertex4fv();
void __glle_Vertex4iv();
void __glle_Vertex4sv();
void __glle_ClipPlane();
void __glle_ColorMaterial();
void __glle_CullFace();
void __glle_Fogf();
void __glle_Fogfv();
void __glle_Fogi();
void __glle_Fogiv();
void __glle_FrontFace();
void __glle_Hint();
void __glle_Lightfv();
void __glle_Lightiv();
void __glle_LightModelfv();
void __glle_LightModeliv();
void __glle_LineStipple();
void __glle_LineWidth();
void __glle_Materialfv();
void __glle_Materialiv();
void __glle_PointSize();
void __glle_PolygonMode();
void __glle_Scissor();
void __glle_ShadeModel();
void __glle_TexParameterfv();
void __glle_TexParameteriv();
void __glle_TexEnvfv();
void __glle_TexEnviv();
void __glle_TexGendv();
void __glle_TexGenfv();
void __glle_TexGeniv();
void __glle_InitNames();
void __glle_LoadName();
void __glle_PassThrough();
void __glle_PopName();
void __glle_PushName();
void __glle_DrawBuffer();
void __glle_Clear();
void __glle_ClearAccum();
void __glle_ClearIndex();
void __glle_ClearColor();
void __glle_ClearStencil();
void __glle_ClearDepth();
void __glle_StencilMask();
void __glle_ColorMask();
void __glle_DepthMask();
void __glle_IndexMask();
void __glle_Accum();
void __glle_PopAttrib();
void __glle_PushAttrib();
void __glle_MapGrid1d();
void __glle_MapGrid1f();
void __glle_MapGrid2d();
void __glle_MapGrid2f();
void __glle_EvalCoord1dv();
void __glle_EvalCoord1fv();
void __glle_EvalCoord2dv();
void __glle_EvalCoord2fv();
void __glle_EvalMesh1();
void __glle_EvalPoint1();
void __glle_EvalMesh2();
void __glle_EvalPoint2();
void __glle_AlphaFunc();
void __glle_BlendFunc();
void __glle_LogicOp();
void __glle_StencilFunc();
void __glle_StencilOp();
void __glle_DepthFunc();
void __glle_PixelZoom();
void __glle_PixelTransferf();
void __glle_PixelTransferi();
void __glle_PixelMapfv();
void __glle_PixelMapuiv();
void __glle_PixelMapusv();
void __glle_ReadBuffer();
void __glle_CopyPixels();
void __glle_DepthRange();
void __glle_Frustum();
void __glle_LoadIdentity();
void __glle_LoadMatrixf();
void __glle_LoadMatrixd();
void __glle_MatrixMode();
void __glle_MultMatrixf();
void __glle_MultMatrixd();
void __glle_Ortho();
void __glle_PopMatrix();
void __glle_PushMatrix();
void __glle_Rotated();
void __glle_Rotatef();
void __glle_Scaled();
void __glle_Scalef();
void __glle_Translated();
void __glle_Translatef();
void __glle_Viewport();
void __glle_BlendColorEXT();
void __glle_BlendEquationEXT();
void __glle_PolygonOffsetEXT();
void __glle_ConvolutionParameterfEXT();
void __glle_ConvolutionParameterfvEXT();
void __glle_ConvolutionParameteriEXT();
void __glle_ConvolutionParameterivEXT();
void __glle_CopyConvolutionFilter1DEXT();
void __glle_CopyConvolutionFilter2DEXT();
void __glle_HistogramEXT();
void __glle_MinmaxEXT();
void __glle_ResetHistogramEXT();
void __glle_ResetMinmaxEXT();
void __glle_BindTextureEXT();
void __glle_PrioritizeTexturesEXT();
void __glle_CopyTexImage1DEXT();
void __glle_CopyTexImage2DEXT();
void __glle_CopyTexSubImage1DEXT();
void __glle_CopyTexSubImage2DEXT();
void __glle_CopyTexSubImage3DEXT();
void __glle_PolygonOffset();
void __glle_Indexubv();
void __glle_SampleMaskSGIS();
void __glle_SamplePatternSGIS();
void __glle_TagSampleBufferSGIX();
void __glle_DetailTexFuncSGIS();
void __glle_SharpenTexFuncSGIS();
void __glle_ColorTableParameterfvSGI();
void __glle_ColorTableParameterivSGI();
void __glle_CopyColorTableSGI();
void __glle_PixelTexGenSGIX();
void __glle_SpriteParameterfSGIX();
void __glle_SpriteParameterfvSGIX();
void __glle_SpriteParameteriSGIX();
void __glle_SpriteParameterivSGIX();
void __glle_TexFilterFuncSGIS();
void __glle_PointParameterfSGIS();
void __glle_PointParameterfvSGIS();
void __glle_FogFuncSGIS();
void __glle_ReadInstrumentsSGIX();
void __glle_StartInstrumentsSGIX();
void __glle_StopInstrumentsSGIX();
void __glle_ReferencePlaneSGIX();
void __glle_FrameZoomSGIX();
void __glle_DeformSGIX();
void __glle_LoadIdentityDeformationMapSGIX();
void __glle_PixelTransformSGI();
void __glle_PixelTransformParameterfSGI();
void __glle_PixelTransformParameterfvSGI();
void __glle_PixelTransformParameteriSGI();
void __glle_PixelTransformParameterivSGI();
void __glle_SubdivPatchParameterfSGIX();
void __glle_SubdivPatchParameteriSGIX();
void __glle_NurbsKnots1dSGIX();
void __glle_NurbsKnots1fSGIX();
void __glle_NurbsKnots2dSGIX();
void __glle_NurbsKnots2fSGIX();
void __glsplc_ListBase();
void __glsplc_Color3b();
void __glsplc_Color3bv();
void __glsplc_Color3d();
void __glsplc_Color3dv();
void __glsplc_Color3f();
void __glsplc_Color3fv();
void __glsplc_Color3i();
void __glsplc_Color3iv();
void __glsplc_Color3s();
void __glsplc_Color3sv();
void __glsplc_Color3ub();
void __glsplc_Color3ubv();
void __glsplc_Color3ui();
void __glsplc_Color3uiv();
void __glsplc_Color3us();
void __glsplc_Color3usv();
void __glsplc_Color4b();
void __glsplc_Color4bv();
void __glsplc_Color4d();
void __glsplc_Color4dv();
void __glsplc_Color4f();
void __glsplc_Color4fv();
void __glsplc_Color4i();
void __glsplc_Color4iv();
void __glsplc_Color4s();
void __glsplc_Color4sv();
void __glsplc_Color4ub();
void __glsplc_Color4ubv();
void __glsplc_Color4ui();
void __glsplc_Color4uiv();
void __glsplc_Color4us();
void __glsplc_Color4usv();
void __glsplc_EdgeFlag();
void __glsplc_EdgeFlagv();
void __glsplc_End();
void __glsplc_Indexd();
void __glsplc_Indexdv();
void __glsplc_Indexf();
void __glsplc_Indexfv();
void __glsplc_Indexi();
void __glsplc_Indexiv();
void __glsplc_Indexs();
void __glsplc_Indexsv();
void __glsplc_Normal3b();
void __glsplc_Normal3bv();
void __glsplc_Normal3d();
void __glsplc_Normal3dv();
void __glsplc_Normal3f();
void __glsplc_Normal3fv();
void __glsplc_Normal3i();
void __glsplc_Normal3iv();
void __glsplc_Normal3s();
void __glsplc_Normal3sv();
void __glsplc_RasterPos2d();
void __glsplc_RasterPos2dv();
void __glsplc_RasterPos2f();
void __glsplc_RasterPos2fv();
void __glsplc_RasterPos2i();
void __glsplc_RasterPos2iv();
void __glsplc_RasterPos2s();
void __glsplc_RasterPos2sv();
void __glsplc_RasterPos3d();
void __glsplc_RasterPos3dv();
void __glsplc_RasterPos3f();
void __glsplc_RasterPos3fv();
void __glsplc_RasterPos3i();
void __glsplc_RasterPos3iv();
void __glsplc_RasterPos3s();
void __glsplc_RasterPos3sv();
void __glsplc_RasterPos4d();
void __glsplc_RasterPos4dv();
void __glsplc_RasterPos4f();
void __glsplc_RasterPos4fv();
void __glsplc_RasterPos4i();
void __glsplc_RasterPos4iv();
void __glsplc_RasterPos4s();
void __glsplc_RasterPos4sv();
void __glsplc_Rectd();
void __glsplc_Rectdv();
void __glsplc_Rectf();
void __glsplc_Rectfv();
void __glsplc_Recti();
void __glsplc_Rectiv();
void __glsplc_Rects();
void __glsplc_Rectsv();
void __glsplc_TexCoord1d();
void __glsplc_TexCoord1dv();
void __glsplc_TexCoord1f();
void __glsplc_TexCoord1fv();
void __glsplc_TexCoord1i();
void __glsplc_TexCoord1iv();
void __glsplc_TexCoord1s();
void __glsplc_TexCoord1sv();
void __glsplc_TexCoord2d();
void __glsplc_TexCoord2dv();
void __glsplc_TexCoord2f();
void __glsplc_TexCoord2fv();
void __glsplc_TexCoord2i();
void __glsplc_TexCoord2iv();
void __glsplc_TexCoord2s();
void __glsplc_TexCoord2sv();
void __glsplc_TexCoord3d();
void __glsplc_TexCoord3dv();
void __glsplc_TexCoord3f();
void __glsplc_TexCoord3fv();
void __glsplc_TexCoord3i();
void __glsplc_TexCoord3iv();
void __glsplc_TexCoord3s();
void __glsplc_TexCoord3sv();
void __glsplc_TexCoord4d();
void __glsplc_TexCoord4dv();
void __glsplc_TexCoord4f();
void __glsplc_TexCoord4fv();
void __glsplc_TexCoord4i();
void __glsplc_TexCoord4iv();
void __glsplc_TexCoord4s();
void __glsplc_TexCoord4sv();
void __glsplc_Vertex2d();
void __glsplc_Vertex2dv();
void __glsplc_Vertex2f();
void __glsplc_Vertex2fv();
void __glsplc_Vertex2i();
void __glsplc_Vertex2iv();
void __glsplc_Vertex2s();
void __glsplc_Vertex2sv();
void __glsplc_Vertex3d();
void __glsplc_Vertex3dv();
void __glsplc_Vertex3f();
void __glsplc_Vertex3fv();
void __glsplc_Vertex3i();
void __glsplc_Vertex3iv();
void __glsplc_Vertex3s();
void __glsplc_Vertex3sv();
void __glsplc_Vertex4d();
void __glsplc_Vertex4dv();
void __glsplc_Vertex4f();
void __glsplc_Vertex4fv();
void __glsplc_Vertex4i();
void __glsplc_Vertex4iv();
void __glsplc_Vertex4s();
void __glsplc_Vertex4sv();
void __glsplc_ClipPlane();
void __glsplc_ColorMaterial();
void __glsplc_CullFace();
void __glsplc_Fogf();
void __glsplc_Fogfv();
void __glsplc_Fogi();
void __glsplc_Fogiv();
void __glsplc_FrontFace();
void __glsplc_Hint();
void __glsplc_Lightf();
void __glsplc_Lightfv();
void __glsplc_Lighti();
void __glsplc_Lightiv();
void __glsplc_LightModelf();
void __glsplc_LightModelfv();
void __glsplc_LightModeli();
void __glsplc_LightModeliv();
void __glsplc_LineStipple();
void __glsplc_LineWidth();
void __glsplc_Materialf();
void __glsplc_Materialfv();
void __glsplc_Materiali();
void __glsplc_Materialiv();
void __glsplc_PointSize();
void __glsplc_PolygonMode();
void __glsplc_Scissor();
void __glsplc_ShadeModel();
void __glsplc_TexParameterf();
void __glsplc_TexParameterfv();
void __glsplc_TexParameteri();
void __glsplc_TexParameteriv();
void __glsplc_TexEnvf();
void __glsplc_TexEnvfv();
void __glsplc_TexEnvi();
void __glsplc_TexEnviv();
void __glsplc_TexGend();
void __glsplc_TexGendv();
void __glsplc_TexGenf();
void __glsplc_TexGenfv();
void __glsplc_TexGeni();
void __glsplc_TexGeniv();
void __glsplc_InitNames();
void __glsplc_LoadName();
void __glsplc_PassThrough();
void __glsplc_PopName();
void __glsplc_PushName();
void __glsplc_DrawBuffer();
void __glsplc_Clear();
void __glsplc_ClearAccum();
void __glsplc_ClearIndex();
void __glsplc_ClearColor();
void __glsplc_ClearStencil();
void __glsplc_ClearDepth();
void __glsplc_StencilMask();
void __glsplc_ColorMask();
void __glsplc_DepthMask();
void __glsplc_IndexMask();
void __glsplc_Accum();
void __glsplc_PopAttrib();
void __glsplc_PushAttrib();
void __glsplc_MapGrid1d();
void __glsplc_MapGrid1f();
void __glsplc_MapGrid2d();
void __glsplc_MapGrid2f();
void __glsplc_EvalCoord1d();
void __glsplc_EvalCoord1dv();
void __glsplc_EvalCoord1f();
void __glsplc_EvalCoord1fv();
void __glsplc_EvalCoord2d();
void __glsplc_EvalCoord2dv();
void __glsplc_EvalCoord2f();
void __glsplc_EvalCoord2fv();
void __glsplc_EvalMesh1();
void __glsplc_EvalPoint1();
void __glsplc_EvalMesh2();
void __glsplc_EvalPoint2();
void __glsplc_AlphaFunc();
void __glsplc_BlendFunc();
void __glsplc_LogicOp();
void __glsplc_StencilFunc();
void __glsplc_StencilOp();
void __glsplc_DepthFunc();
void __glsplc_PixelZoom();
void __glsplc_PixelTransferf();
void __glsplc_PixelTransferi();
void __glsplc_PixelMapfv();
void __glsplc_PixelMapuiv();
void __glsplc_PixelMapusv();
void __glsplc_ReadBuffer();
void __glsplc_CopyPixels();
void __glsplc_DepthRange();
void __glsplc_Frustum();
void __glsplc_LoadIdentity();
void __glsplc_LoadMatrixf();
void __glsplc_LoadMatrixd();
void __glsplc_MatrixMode();
void __glsplc_MultMatrixf();
void __glsplc_MultMatrixd();
void __glsplc_Ortho();
void __glsplc_PopMatrix();
void __glsplc_PushMatrix();
void __glsplc_Rotated();
void __glsplc_Rotatef();
void __glsplc_Scaled();
void __glsplc_Scalef();
void __glsplc_Translated();
void __glsplc_Translatef();
void __glsplc_Viewport();
void __glsplc_BlendColorEXT();
void __glsplc_BlendEquationEXT();
void __glsplc_PolygonOffsetEXT();
void __glsplc_ConvolutionParameterfEXT();
void __glsplc_ConvolutionParameterfvEXT();
void __glsplc_ConvolutionParameteriEXT();
void __glsplc_ConvolutionParameterivEXT();
void __glsplc_CopyConvolutionFilter1DEXT();
void __glsplc_CopyConvolutionFilter2DEXT();
void __glsplc_HistogramEXT();
void __glsplc_MinmaxEXT();
void __glsplc_ResetHistogramEXT();
void __glsplc_ResetMinmaxEXT();
void __glsplc_BindTextureEXT();
void __glsplc_PrioritizeTexturesEXT();
void __glsplc_CopyTexImage1DEXT();
void __glsplc_CopyTexImage2DEXT();
void __glsplc_CopyTexSubImage1DEXT();
void __glsplc_CopyTexSubImage2DEXT();
void __glsplc_CopyTexSubImage3DEXT();
void __glsplc_PolygonOffset();
void __glsplc_Indexub();
void __glsplc_Indexubv();
void __glsplc_SampleMaskSGIS();
void __glsplc_SamplePatternSGIS();
void __glsplc_TagSampleBufferSGIX();
void __glsplc_DetailTexFuncSGIS();
void __glsplc_SharpenTexFuncSGIS();
void __glsplc_ColorTableParameterfvSGI();
void __glsplc_ColorTableParameterivSGI();
void __glsplc_CopyColorTableSGI();
void __glsplc_PixelTexGenSGIX();
void __glsplc_SpriteParameterfSGIX();
void __glsplc_SpriteParameterfvSGIX();
void __glsplc_SpriteParameteriSGIX();
void __glsplc_SpriteParameterivSGIX();
void __glsplc_TexFilterFuncSGIS();
void __glsplc_PointParameterfSGIS();
void __glsplc_PointParameterfvSGIS();
void __glsplc_FogFuncSGIS();
void __glsplc_ReadInstrumentsSGIX();
void __glsplc_StartInstrumentsSGIX();
void __glsplc_StopInstrumentsSGIX();
void __glsplc_ReferencePlaneSGIX();
void __glsplc_FrameZoomSGIX();
void __glsplc_DeformSGIX();
void __glsplc_LoadIdentityDeformationMapSGIX();
void __glsplc_PixelTransformSGI();
void __glsplc_PixelTransformParameterfSGI();
void __glsplc_PixelTransformParameterfvSGI();
void __glsplc_PixelTransformParameteriSGI();
void __glsplc_PixelTransformParameterivSGI();
void __glsplc_SubdivPatchParameterfSGIX();
void __glsplc_SubdivPatchParameteriSGIX();
void __glsplc_NurbsKnots1dSGIX();
void __glsplc_NurbsKnots1fSGIX();
void __glsplc_NurbsKnots2dSGIX();
void __glsplc_NurbsKnots2fSGIX();
void __glce_NewList(GLuint list, GLenum mode);
void __glce_DeleteLists(GLuint list, GLsizei range);
GLuint __glce_GenLists(GLsizei range);
void __glce_ListBase(GLuint base);
void __glce_Begin(GLenum mode);
void __glce_Bitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap);
void __glce_Color3b(GLbyte red, GLbyte green, GLbyte blue);
void __glce_Color3bv(const GLbyte *v);
void __glce_Color3d(GLdouble red, GLdouble green, GLdouble blue);
void __glce_Color3dv(const GLdouble *v);
void __glce_Color3f(GLfloat red, GLfloat green, GLfloat blue);
void __glce_Color3fv(const GLfloat *v);
void __glce_Color3i(GLint red, GLint green, GLint blue);
void __glce_Color3iv(const GLint *v);
void __glce_Color3s(GLshort red, GLshort green, GLshort blue);
void __glce_Color3sv(const GLshort *v);
void __glce_Color3ub(GLubyte red, GLubyte green, GLubyte blue);
void __glce_Color3ubv(const GLubyte *v);
void __glce_Color3ui(GLuint red, GLuint green, GLuint blue);
void __glce_Color3uiv(const GLuint *v);
void __glce_Color3us(GLushort red, GLushort green, GLushort blue);
void __glce_Color3usv(const GLushort *v);
void __glce_Color4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void __glce_Color4bv(const GLbyte *v);
void __glce_Color4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void __glce_Color4dv(const GLdouble *v);
void __glce_Color4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glce_Color4fv(const GLfloat *v);
void __glce_Color4i(GLint red, GLint green, GLint blue, GLint alpha);
void __glce_Color4iv(const GLint *v);
void __glce_Color4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
void __glce_Color4sv(const GLshort *v);
void __glce_Color4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void __glce_Color4ubv(const GLubyte *v);
void __glce_Color4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
void __glce_Color4uiv(const GLuint *v);
void __glce_Color4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);
void __glce_Color4usv(const GLushort *v);
void __glce_EdgeFlag(GLboolean flag);
void __glce_EdgeFlagv(const GLboolean *flag);
void __glce_End(void);
void __glce_Indexd(GLdouble c);
void __glce_Indexdv(const GLdouble *c);
void __glce_Indexf(GLfloat c);
void __glce_Indexfv(const GLfloat *c);
void __glce_Indexi(GLint c);
void __glce_Indexiv(const GLint *c);
void __glce_Indexs(GLshort c);
void __glce_Indexsv(const GLshort *c);
void __glce_Normal3b(GLbyte nx, GLbyte ny, GLbyte nz);
void __glce_Normal3bv(const GLbyte *v);
void __glce_Normal3d(GLdouble nx, GLdouble ny, GLdouble nz);
void __glce_Normal3dv(const GLdouble *v);
void __glce_Normal3f(GLfloat nx, GLfloat ny, GLfloat nz);
void __glce_Normal3fv(const GLfloat *v);
void __glce_Normal3i(GLint nx, GLint ny, GLint nz);
void __glce_Normal3iv(const GLint *v);
void __glce_Normal3s(GLshort nx, GLshort ny, GLshort nz);
void __glce_Normal3sv(const GLshort *v);
void __glce_RasterPos2d(GLdouble x, GLdouble y);
void __glce_RasterPos2dv(const GLdouble *v);
void __glce_RasterPos2f(GLfloat x, GLfloat y);
void __glce_RasterPos2fv(const GLfloat *v);
void __glce_RasterPos2i(GLint x, GLint y);
void __glce_RasterPos2iv(const GLint *v);
void __glce_RasterPos2s(GLshort x, GLshort y);
void __glce_RasterPos2sv(const GLshort *v);
void __glce_RasterPos3d(GLdouble x, GLdouble y, GLdouble z);
void __glce_RasterPos3dv(const GLdouble *v);
void __glce_RasterPos3f(GLfloat x, GLfloat y, GLfloat z);
void __glce_RasterPos3fv(const GLfloat *v);
void __glce_RasterPos3i(GLint x, GLint y, GLint z);
void __glce_RasterPos3iv(const GLint *v);
void __glce_RasterPos3s(GLshort x, GLshort y, GLshort z);
void __glce_RasterPos3sv(const GLshort *v);
void __glce_RasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glce_RasterPos4dv(const GLdouble *v);
void __glce_RasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glce_RasterPos4fv(const GLfloat *v);
void __glce_RasterPos4i(GLint x, GLint y, GLint z, GLint w);
void __glce_RasterPos4iv(const GLint *v);
void __glce_RasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glce_RasterPos4sv(const GLshort *v);
void __glce_Rectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void __glce_Rectdv(const GLdouble *v1, const GLdouble *v2);
void __glce_Rectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void __glce_Rectfv(const GLfloat *v1, const GLfloat *v2);
void __glce_Recti(GLint x1, GLint y1, GLint x2, GLint y2);
void __glce_Rectiv(const GLint *v1, const GLint *v2);
void __glce_Rects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void __glce_Rectsv(const GLshort *v1, const GLshort *v2);
void __glce_TexCoord1d(GLdouble s);
void __glce_TexCoord1dv(const GLdouble *v);
void __glce_TexCoord1f(GLfloat s);
void __glce_TexCoord1fv(const GLfloat *v);
void __glce_TexCoord1i(GLint s);
void __glce_TexCoord1iv(const GLint *v);
void __glce_TexCoord1s(GLshort s);
void __glce_TexCoord1sv(const GLshort *v);
void __glce_TexCoord2d(GLdouble s, GLdouble t);
void __glce_TexCoord2dv(const GLdouble *v);
void __glce_TexCoord2f(GLfloat s, GLfloat t);
void __glce_TexCoord2fv(const GLfloat *v);
void __glce_TexCoord2i(GLint s, GLint t);
void __glce_TexCoord2iv(const GLint *v);
void __glce_TexCoord2s(GLshort s, GLshort t);
void __glce_TexCoord2sv(const GLshort *v);
void __glce_TexCoord3d(GLdouble s, GLdouble t, GLdouble r);
void __glce_TexCoord3dv(const GLdouble *v);
void __glce_TexCoord3f(GLfloat s, GLfloat t, GLfloat r);
void __glce_TexCoord3fv(const GLfloat *v);
void __glce_TexCoord3i(GLint s, GLint t, GLint r);
void __glce_TexCoord3iv(const GLint *v);
void __glce_TexCoord3s(GLshort s, GLshort t, GLshort r);
void __glce_TexCoord3sv(const GLshort *v);
void __glce_TexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void __glce_TexCoord4dv(const GLdouble *v);
void __glce_TexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void __glce_TexCoord4fv(const GLfloat *v);
void __glce_TexCoord4i(GLint s, GLint t, GLint r, GLint q);
void __glce_TexCoord4iv(const GLint *v);
void __glce_TexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);
void __glce_TexCoord4sv(const GLshort *v);
void __glce_Vertex2d(GLdouble x, GLdouble y);
void __glce_Vertex2dv(const GLdouble *v);
void __glce_Vertex2f(GLfloat x, GLfloat y);
void __glce_Vertex2fv(const GLfloat *v);
void __glce_Vertex2i(GLint x, GLint y);
void __glce_Vertex2iv(const GLint *v);
void __glce_Vertex2s(GLshort x, GLshort y);
void __glce_Vertex2sv(const GLshort *v);
void __glce_Vertex3d(GLdouble x, GLdouble y, GLdouble z);
void __glce_Vertex3dv(const GLdouble *v);
void __glce_Vertex3f(GLfloat x, GLfloat y, GLfloat z);
void __glce_Vertex3fv(const GLfloat *v);
void __glce_Vertex3i(GLint x, GLint y, GLint z);
void __glce_Vertex3iv(const GLint *v);
void __glce_Vertex3s(GLshort x, GLshort y, GLshort z);
void __glce_Vertex3sv(const GLshort *v);
void __glce_Vertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glce_Vertex4dv(const GLdouble *v);
void __glce_Vertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glce_Vertex4fv(const GLfloat *v);
void __glce_Vertex4i(GLint x, GLint y, GLint z, GLint w);
void __glce_Vertex4iv(const GLint *v);
void __glce_Vertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glce_Vertex4sv(const GLshort *v);
void __glce_ClipPlane(GLenum plane, const GLdouble *equation);
void __glce_ColorMaterial(GLenum face, GLenum mode);
void __glce_CullFace(GLenum mode);
void __glce_Fogf(GLenum pname, GLfloat param);
void __glce_Fogfv(GLenum pname, const GLfloat *params);
void __glce_Fogi(GLenum pname, GLint param);
void __glce_Fogiv(GLenum pname, const GLint *params);
void __glce_FrontFace(GLenum mode);
void __glce_Hint(GLenum target, GLenum mode);
void __glce_Lightf(GLenum light, GLenum pname, GLfloat param);
void __glce_Lightfv(GLenum light, GLenum pname, const GLfloat *params);
void __glce_Lighti(GLenum light, GLenum pname, GLint param);
void __glce_Lightiv(GLenum light, GLenum pname, const GLint *params);
void __glce_LightModelf(GLenum pname, GLfloat param);
void __glce_LightModelfv(GLenum pname, const GLfloat *params);
void __glce_LightModeli(GLenum pname, GLint param);
void __glce_LightModeliv(GLenum pname, const GLint *params);
void __glce_LineStipple(GLint factor, GLushort pattern);
void __glce_LineWidth(GLfloat width);
void __glce_Materialf(GLenum face, GLenum pname, GLfloat param);
void __glce_Materialfv(GLenum face, GLenum pname, const GLfloat *params);
void __glce_Materiali(GLenum face, GLenum pname, GLint param);
void __glce_Materialiv(GLenum face, GLenum pname, const GLint *params);
void __glce_PointSize(GLfloat size);
void __glce_PolygonMode(GLenum face, GLenum mode);
void __glce_PolygonStipple(const GLubyte *mask);
void __glce_Scissor(GLint x, GLint y, GLsizei width, GLsizei height);
void __glce_ShadeModel(GLenum mode);
void __glce_TexParameterf(GLenum target, GLenum pname, GLfloat param);
void __glce_TexParameterfv(GLenum target, GLenum pname, const GLfloat *params);
void __glce_TexParameteri(GLenum target, GLenum pname, GLint param);
void __glce_TexParameteriv(GLenum target, GLenum pname, const GLint *params);
void __glce_TexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const void *pixels);
void __glce_TexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
void __glce_TexEnvf(GLenum target, GLenum pname, GLfloat param);
void __glce_TexEnvfv(GLenum target, GLenum pname, const GLfloat *params);
void __glce_TexEnvi(GLenum target, GLenum pname, GLint param);
void __glce_TexEnviv(GLenum target, GLenum pname, const GLint *params);
void __glce_TexGend(GLenum coord, GLenum pname, GLdouble param);
void __glce_TexGendv(GLenum coord, GLenum pname, const GLdouble *params);
void __glce_TexGenf(GLenum coord, GLenum pname, GLfloat param);
void __glce_TexGenfv(GLenum coord, GLenum pname, const GLfloat *params);
void __glce_TexGeni(GLenum coord, GLenum pname, GLint param);
void __glce_TexGeniv(GLenum coord, GLenum pname, const GLint *params);
void __glce_FeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer);
void __glce_SelectBuffer(GLsizei size, GLuint *buffer);
GLint __glce_RenderMode(GLenum mode);
void __glce_InitNames(void);
void __glce_LoadName(GLuint name);
void __glce_PassThrough(GLfloat token);
void __glce_PopName(void);
void __glce_PushName(GLuint name);
void __glce_DrawBuffer(GLenum buf);
void __glce_Clear(GLbitfield mask);
void __glce_ClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glce_ClearIndex(GLfloat c);
void __glce_ClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glce_ClearStencil(GLint s);
void __glce_ClearDepth(GLdouble depth);
void __glce_StencilMask(GLuint mask);
void __glce_ColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void __glce_DepthMask(GLboolean flag);
void __glce_IndexMask(GLuint mask);
void __glce_Accum(GLenum op, GLfloat value);
void __glce_Disable(GLenum cap);
void __glce_Enable(GLenum cap);
void __glce_Finish(void);
void __glce_Flush(void);
void __glce_PopAttrib(void);
void __glce_PushAttrib(GLbitfield mask);
void __glce_Map1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points);
void __glce_Map1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points);
void __glce_Map2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points);
void __glce_Map2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points);
void __glce_MapGrid1d(GLint un, GLdouble u1, GLdouble u2);
void __glce_MapGrid1f(GLint un, GLfloat u1, GLfloat u2);
void __glce_MapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
void __glce_MapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
void __glce_EvalCoord1d(GLdouble u);
void __glce_EvalCoord1dv(const GLdouble *u);
void __glce_EvalCoord1f(GLfloat u);
void __glce_EvalCoord1fv(const GLfloat *u);
void __glce_EvalCoord2d(GLdouble u, GLdouble v);
void __glce_EvalCoord2dv(const GLdouble *u);
void __glce_EvalCoord2f(GLfloat u, GLfloat v);
void __glce_EvalCoord2fv(const GLfloat *u);
void __glce_EvalMesh1(GLenum mode, GLint i1, GLint i2);
void __glce_EvalPoint1(GLint i);
void __glce_EvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
void __glce_EvalPoint2(GLint i, GLint j);
void __glce_AlphaFunc(GLenum func, GLfloat ref);
void __glce_BlendFunc(GLenum sfactor, GLenum dfactor);
void __glce_LogicOp(GLenum opcode);
void __glce_StencilFunc(GLenum func, GLint ref, GLuint mask);
void __glce_StencilOp(GLenum fail, GLenum zfail, GLenum zpass);
void __glce_DepthFunc(GLenum func);
void __glce_PixelZoom(GLfloat xfactor, GLfloat yfactor);
void __glce_PixelTransferf(GLenum pname, GLfloat param);
void __glce_PixelTransferi(GLenum pname, GLint param);
void __glce_PixelStoref(GLenum pname, GLfloat param);
void __glce_PixelStorei(GLenum pname, GLint param);
void __glce_PixelMapfv(GLenum map, GLsizei mapsize, const GLfloat *values);
void __glce_PixelMapuiv(GLenum map, GLsizei mapsize, const GLuint *values);
void __glce_PixelMapusv(GLenum map, GLsizei mapsize, const GLushort *values);
void __glce_ReadBuffer(GLenum src);
void __glce_CopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
void __glce_ReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void *pixels);
void __glce_DrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void __glce_GetBooleanv(GLenum pname, GLboolean *data);
void __glce_GetClipPlane(GLenum plane, GLdouble *equation);
void __glce_GetDoublev(GLenum pname, GLdouble *data);
GLenum __glce_GetError(void);
void __glce_GetFloatv(GLenum pname, GLfloat *data);
void __glce_GetIntegerv(GLenum pname, GLint *data);
void __glce_GetLightfv(GLenum light, GLenum pname, GLfloat *params);
void __glce_GetLightiv(GLenum light, GLenum pname, GLint *params);
void __glce_GetMapdv(GLenum target, GLenum query, GLdouble *v);
void __glce_GetMapfv(GLenum target, GLenum query, GLfloat *v);
void __glce_GetMapiv(GLenum target, GLenum query, GLint *v);
void __glce_GetMaterialfv(GLenum face, GLenum pname, GLfloat *params);
void __glce_GetMaterialiv(GLenum face, GLenum pname, GLint *params);
void __glce_GetPixelMapfv(GLenum map, GLfloat *values);
void __glce_GetPixelMapuiv(GLenum map, GLuint *values);
void __glce_GetPixelMapusv(GLenum map, GLushort *values);
void __glce_GetPolygonStipple(GLubyte *mask);
const GLubyte * __glce_GetString(GLenum name);
void __glce_GetTexEnvfv(GLenum target, GLenum pname, GLfloat *params);
void __glce_GetTexEnviv(GLenum target, GLenum pname, GLint *params);
void __glce_GetTexGendv(GLenum coord, GLenum pname, GLdouble *params);
void __glce_GetTexGenfv(GLenum coord, GLenum pname, GLfloat *params);
void __glce_GetTexGeniv(GLenum coord, GLenum pname, GLint *params);
void __glce_GetTexImage(GLenum target, GLint level, GLenum format, GLenum type, void *pixels);
void __glce_GetTexParameterfv(GLenum target, GLenum pname, GLfloat *params);
void __glce_GetTexParameteriv(GLenum target, GLenum pname, GLint *params);
void __glce_GetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params);
void __glce_GetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params);
GLboolean __glce_IsEnabled(GLenum cap);
GLboolean __glce_IsList(GLuint list);
void __glce_DepthRange(GLdouble n, GLdouble f);
void __glce_Frustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glce_LoadIdentity(void);
void __glce_LoadMatrixf(const GLfloat *m);
void __glce_LoadMatrixd(const GLdouble *m);
void __glce_MatrixMode(GLenum mode);
void __glce_MultMatrixf(const GLfloat *m);
void __glce_MultMatrixd(const GLdouble *m);
void __glce_Ortho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glce_PopMatrix(void);
void __glce_PushMatrix(void);
void __glce_Rotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void __glce_Rotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void __glce_Scaled(GLdouble x, GLdouble y, GLdouble z);
void __glce_Scalef(GLfloat x, GLfloat y, GLfloat z);
void __glce_Translated(GLdouble x, GLdouble y, GLdouble z);
void __glce_Translatef(GLfloat x, GLfloat y, GLfloat z);
void __glce_Viewport(GLint x, GLint y, GLsizei width, GLsizei height);
void __glce_BlendColorEXT(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glce_BlendEquationEXT(GLenum mode);
void __glce_PolygonOffsetEXT(GLfloat factor, GLfloat bias);
void __glce_TexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void __glce_TexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void __glce_ConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *image);
void __glce_ConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *image);
void __glce_ConvolutionParameterfEXT(GLenum target, GLenum pname, GLfloat params);
void __glce_ConvolutionParameterfvEXT(GLenum target, GLenum pname, const GLfloat *params);
void __glce_ConvolutionParameteriEXT(GLenum target, GLenum pname, GLint params);
void __glce_ConvolutionParameterivEXT(GLenum target, GLenum pname, const GLint *params);
void __glce_CopyConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void __glce_CopyConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void __glce_GetConvolutionFilterEXT(GLenum target, GLenum format, GLenum type, void *image);
void __glce_GetConvolutionParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glce_GetConvolutionParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glce_GetSeparableFilterEXT(GLenum target, GLenum format, GLenum type, void *row, void *column, void *span);
void __glce_SeparableFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *row, const void *column);
void __glce_GetHistogramEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void __glce_GetHistogramParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glce_GetHistogramParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glce_GetMinmaxEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void __glce_GetMinmaxParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glce_GetMinmaxParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glce_HistogramEXT(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void __glce_MinmaxEXT(GLenum target, GLenum internalformat, GLboolean sink);
void __glce_ResetHistogramEXT(GLenum target);
void __glce_ResetMinmaxEXT(GLenum target);
void __glce_TexImage3DEXT(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void __glce_TexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void __glce_ColorPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glce_EdgeFlagPointerEXT(GLsizei stride, GLsizei count, const GLboolean *pointer);
void __glce_GetPointervEXT(GLenum pname, void **params);
void __glce_IndexPointerEXT(GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glce_NormalPointerEXT(GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glce_TexCoordPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glce_VertexPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
GLboolean __glce_AreTexturesResidentEXT(GLsizei n, const GLuint *textures, GLboolean *residences);
void __glce_BindTextureEXT(GLenum target, GLuint texture);
void __glce_DeleteTexturesEXT(GLsizei n, const GLuint *textures);
void __glce_GenTexturesEXT(GLsizei n, GLuint *textures);
GLboolean __glce_IsTextureEXT(GLuint texture);
void __glce_PrioritizeTexturesEXT(GLsizei n, const GLuint *textures, const GLclampf *priorities);
void __glce_CopyTexImage1DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void __glce_CopyTexImage2DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void __glce_CopyTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void __glce_CopyTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void __glce_CopyTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void __glce_ColorPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void __glce_DisableClientState(GLenum array);
void __glce_EdgeFlagPointer(GLsizei stride, const void *pointer);
void __glce_EnableClientState(GLenum array);
void __glce_IndexPointer(GLenum type, GLsizei stride, const void *pointer);
void __glce_InterleavedArrays(GLenum format, GLsizei stride, const void *pointer);
void __glce_NormalPointer(GLenum type, GLsizei stride, const void *pointer);
void __glce_TexCoordPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void __glce_VertexPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void __glce_PolygonOffset(GLfloat factor, GLfloat units);
void __glce_Indexub(GLubyte c);
void __glce_Indexubv(const GLubyte *c);
void __glce_PopClientAttrib(void);
void __glce_PushClientAttrib(GLbitfield mask);
void __glce_SampleMaskSGIS();
void __glce_SamplePatternSGIS();
void __glce_TagSampleBufferSGIX();
void __glce_DetailTexFuncSGIS();
void __glce_GetDetailTexFuncSGIS();
void __glce_SharpenTexFuncSGIS();
void __glce_GetSharpenTexFuncSGIS();
void __glce_ColorTableSGI(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *table);
void __glce_ColorTableParameterfvSGI(GLenum target, GLenum pname, const GLfloat *params);
void __glce_ColorTableParameterivSGI(GLenum target, GLenum pname, const GLint *params);
void __glce_CopyColorTableSGI(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void __glce_GetColorTableSGI(GLenum target, GLenum format, GLenum type, void *table);
void __glce_GetColorTableParameterfvSGI(GLenum target, GLenum pname, GLfloat *params);
void __glce_GetColorTableParameterivSGI(GLenum target, GLenum pname, GLint *params);
void __glce_TexImage4DSGIS();
void __glce_TexSubImage4DSGIS();
void __glce_PixelTexGenSGIX();
void __glce_SpriteParameterfSGIX();
void __glce_SpriteParameterfvSGIX();
void __glce_SpriteParameteriSGIX();
void __glce_SpriteParameterivSGIX();
void __glce_GetTexFilterFuncSGIS(GLenum target, GLenum filter, GLfloat *weights);
void __glce_TexFilterFuncSGIS(GLenum target, GLenum filter, GLsizei n, const GLfloat *weights);
void __glce_PointParameterfSGIS();
void __glce_PointParameterfvSGIS();
void __glce_FogFuncSGIS();
void __glce_GetInstrumentsSGIX();
void __glce_InstrumentsBufferSGIX();
void __glce_PollInstrumentsSGIX();
void __glce_ReadInstrumentsSGIX();
void __glce_StartInstrumentsSGIX();
void __glce_StopInstrumentsSGIX();
void __glce_FlushRasterSGIX();
void __glce_ReferencePlaneSGIX();
void __glce_FrameZoomSGIX();
void __glce_IglooInterfaceSGIX();
void __glce_DeformationMap3dSGIX();
void __glce_DeformationMap3fSGIX();
void __glce_DeformSGIX();
void __glce_LoadIdentityDeformationMapSGIX();
void __glce_GetListParameterfvSGIX();
void __glce_GetListParameterivSGIX();
void __glce_ListParameterfSGIX();
void __glce_ListParameterfvSGIX();
void __glce_ListParameteriSGIX();
void __glce_ListParameterivSGIX();
void __glce_PixelTransformSGI();
void __glce_PixelTransformParameterfSGI();
void __glce_PixelTransformParameterfvSGI();
void __glce_PixelTransformParameteriSGI();
void __glce_PixelTransformParameterivSGI();
void __glce_GetPixelTransformParameterfvSGI();
void __glce_GetPixelTransformParameterivSGI();
void __glce_SubdivPatchSGIX();
void __glce_SubdivPatchParameterfSGIX();
void __glce_SubdivPatchParameteriSGIX();
void __glce_NurbsKnots1dSGIX();
void __glce_NurbsKnots1fSGIX();
void __glce_NurbsKnots2dSGIX();
void __glce_NurbsKnots2fSGIX();
void __glce_FragmentColorMaterialSGIX();
void __glce_FragmentLightfSGIX();
void __glce_FragmentLightfvSGIX();
void __glce_FragmentLightiSGIX();
void __glce_FragmentLightivSGIX();
void __glce_FragmentLightModelfSGIX();
void __glce_FragmentLightModelfvSGIX();
void __glce_FragmentLightModeliSGIX();
void __glce_FragmentLightModelivSGIX();
void __glce_FragmentMaterialfSGIX();
void __glce_FragmentMaterialfvSGIX();
void __glce_FragmentMaterialiSGIX();
void __glce_FragmentMaterialivSGIX();
void __glce_GetFragmentLightfvSGIX();
void __glce_GetFragmentLightivSGIX();
void __glce_GetFragmentMaterialfvSGIX();
void __glce_GetFragmentMaterialivSGIX();
void __glce_LightEnviSGIX();
void __glce_Binormal3bSGIX();
void __glce_Binormal3bvSGIX();
void __glce_Binormal3dSGIX();
void __glce_Binormal3dvSGIX();
void __glce_Binormal3fSGIX();
void __glce_Binormal3fvSGIX();
void __glce_Binormal3iSGIX();
void __glce_Binormal3ivSGIX();
void __glce_Binormal3sSGIX();
void __glce_Binormal3svSGIX();
void __glce_FragmentLightSpaceSGIX();
void __glce_Tangent3bSGIX();
void __glce_Tangent3bvSGIX();
void __glce_Tangent3dSGIX();
void __glce_Tangent3dvSGIX();
void __glce_Tangent3fSGIX();
void __glce_Tangent3fvSGIX();
void __glce_Tangent3iSGIX();
void __glce_Tangent3ivSGIX();
void __glce_Tangent3sSGIX();
void __glce_Tangent3svSGIX();
void __glce_MultiTexCoord1dSGIS();
void __glce_MultiTexCoord1dvSGIS();
void __glce_MultiTexCoord1fSGIS();
void __glce_MultiTexCoord1fvSGIS();
void __glce_MultiTexCoord1iSGIS();
void __glce_MultiTexCoord1ivSGIS();
void __glce_MultiTexCoord1sSGIS();
void __glce_MultiTexCoord1svSGIS();
void __glce_MultiTexCoord2dSGIS();
void __glce_MultiTexCoord2dvSGIS();
void __glce_MultiTexCoord2fSGIS();
void __glce_MultiTexCoord2fvSGIS();
void __glce_MultiTexCoord2iSGIS();
void __glce_MultiTexCoord2ivSGIS();
void __glce_MultiTexCoord2sSGIS();
void __glce_MultiTexCoord2svSGIS();
void __glce_MultiTexCoord3dSGIS();
void __glce_MultiTexCoord3dvSGIS();
void __glce_MultiTexCoord3fSGIS();
void __glce_MultiTexCoord3fvSGIS();
void __glce_MultiTexCoord3iSGIS();
void __glce_MultiTexCoord3ivSGIS();
void __glce_MultiTexCoord3sSGIS();
void __glce_MultiTexCoord3svSGIS();
void __glce_MultiTexCoord4dSGIS();
void __glce_MultiTexCoord4dvSGIS();
void __glce_MultiTexCoord4fSGIS();
void __glce_MultiTexCoord4fvSGIS();
void __glce_MultiTexCoord4iSGIS();
void __glce_MultiTexCoord4ivSGIS();
void __glce_MultiTexCoord4sSGIS();
void __glce_MultiTexCoord4svSGIS();
void __glce_MultiTexCoordPointerSGIS();
void __glce_SelectTextureSGIS();
void __glce_ApplyTextureSGIX();
void __glce_TextureLightSGIX();
void __glce_TextureMaterialSGIX();
void __glce_FogLayersSGIX();
void __glce_ColorSubTable();
void __glce_CopyColorSubTable();
void __glce_DrawRangeElements();
void __glDrawArraysV();
void __glDrawArraysNV();
void __glDrawArraysCV();
void __glDrawArraysNCV();
void __glDrawArraysTV();
void __glDrawArraysNTV();
void __glDrawArraysCTV();
void __glDrawArraysNCTV();
void __glDrawArraysIV();
void __glDrawArraysNIV();
void __glDrawArraysCIV();
void __glDrawArraysNCIV();
void __glDrawArraysTIV();
void __glDrawArraysNTIV();
void __glDrawArraysCTIV();
void __glDrawArraysNCTIV();
void __glDrawArraysEV();
void __glDrawArraysNEV();
void __glDrawArraysCEV();
void __glDrawArraysNCEV();
void __glDrawArraysTEV();
void __glDrawArraysNTEV();
void __glDrawArraysCTEV();
void __glDrawArraysNCTEV();
void __glDrawArraysIEV();
void __glDrawArraysNIEV();
void __glDrawArraysCIEV();
void __glDrawArraysNCIEV();
void __glDrawArraysTIEV();
void __glDrawArraysNTIEV();
void __glDrawArraysCTIEV();
void __glDrawArraysNCTIEV();
void __glDrawArraysN();
void __glMgrlc_Color3b(GLbyte red, GLbyte green, GLbyte blue);
void __glMgrlc_Color3bv(const GLbyte *v);
void __glMgrlc_Color3d(GLdouble red, GLdouble green, GLdouble blue);
void __glMgrlc_Color3dv(const GLdouble *v);
void __glMgrlc_Color3f(GLfloat red, GLfloat green, GLfloat blue);
void __glMgrlc_Color3fv(const GLfloat *v);
void __glMgrlc_Color3i(GLint red, GLint green, GLint blue);
void __glMgrlc_Color3iv(const GLint *v);
void __glMgrlc_Color3s(GLshort red, GLshort green, GLshort blue);
void __glMgrlc_Color3sv(const GLshort *v);
void __glMgrlc_Color3ub(GLubyte red, GLubyte green, GLubyte blue);
void __glMgrlc_Color3ubv(const GLubyte *v);
void __glMgrlc_Color3ui(GLuint red, GLuint green, GLuint blue);
void __glMgrlc_Color3uiv(const GLuint *v);
void __glMgrlc_Color3us(GLushort red, GLushort green, GLushort blue);
void __glMgrlc_Color3usv(const GLushort *v);
void __glMgrlc_Color4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void __glMgrlc_Color4bv(const GLbyte *v);
void __glMgrlc_Color4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void __glMgrlc_Color4dv(const GLdouble *v);
void __glMgrlc_Color4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glMgrlc_Color4fv(const GLfloat *v);
void __glMgrlc_Color4i(GLint red, GLint green, GLint blue, GLint alpha);
void __glMgrlc_Color4iv(const GLint *v);
void __glMgrlc_Color4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
void __glMgrlc_Color4sv(const GLshort *v);
void __glMgrlc_Color4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void __glMgrlc_Color4ubv(const GLubyte *v);
void __glMgrlc_Color4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
void __glMgrlc_Color4uiv(const GLuint *v);
void __glMgrlc_Color4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);
void __glMgrlc_Color4usv(const GLushort *v);
void __glMgrlc_Indexd(GLdouble c);
void __glMgrlc_Indexdv(const GLdouble *c);
void __glMgrlc_Indexf(GLfloat c);
void __glMgrlc_Indexfv(const GLfloat *c);
void __glMgrlc_Indexi(GLint c);
void __glMgrlc_Indexiv(const GLint *c);
void __glMgrlc_Indexs(GLshort c);
void __glMgrlc_Indexsv(const GLshort *c);
void __glMgrlc_Normal3b(GLbyte nx, GLbyte ny, GLbyte nz);
void __glMgrlc_Normal3bv(const GLbyte *v);
void __glMgrlc_Normal3d(GLdouble nx, GLdouble ny, GLdouble nz);
void __glMgrlc_Normal3dv(const GLdouble *v);
void __glMgrlc_Normal3f(GLfloat nx, GLfloat ny, GLfloat nz);
void __glMgrlc_Normal3fv(const GLfloat *v);
void __glMgrlc_Normal3i(GLint nx, GLint ny, GLint nz);
void __glMgrlc_Normal3iv(const GLint *v);
void __glMgrlc_Normal3s(GLshort nx, GLshort ny, GLshort nz);
void __glMgrlc_Normal3sv(const GLshort *v);
void __glMgrlc_RasterPos2d(GLdouble x, GLdouble y);
void __glMgrlc_RasterPos2dv(const GLdouble *v);
void __glMgrlc_RasterPos2f(GLfloat x, GLfloat y);
void __glMgrlc_RasterPos2fv(const GLfloat *v);
void __glMgrlc_RasterPos2i(GLint x, GLint y);
void __glMgrlc_RasterPos2iv(const GLint *v);
void __glMgrlc_RasterPos2s(GLshort x, GLshort y);
void __glMgrlc_RasterPos2sv(const GLshort *v);
void __glMgrlc_RasterPos3d(GLdouble x, GLdouble y, GLdouble z);
void __glMgrlc_RasterPos3dv(const GLdouble *v);
void __glMgrlc_RasterPos3f(GLfloat x, GLfloat y, GLfloat z);
void __glMgrlc_RasterPos3fv(const GLfloat *v);
void __glMgrlc_RasterPos3i(GLint x, GLint y, GLint z);
void __glMgrlc_RasterPos3iv(const GLint *v);
void __glMgrlc_RasterPos3s(GLshort x, GLshort y, GLshort z);
void __glMgrlc_RasterPos3sv(const GLshort *v);
void __glMgrlc_RasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glMgrlc_RasterPos4dv(const GLdouble *v);
void __glMgrlc_RasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glMgrlc_RasterPos4fv(const GLfloat *v);
void __glMgrlc_RasterPos4i(GLint x, GLint y, GLint z, GLint w);
void __glMgrlc_RasterPos4iv(const GLint *v);
void __glMgrlc_RasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glMgrlc_RasterPos4sv(const GLshort *v);
void __glMgrlc_TexCoord1d(GLdouble s);
void __glMgrlc_TexCoord1dv(const GLdouble *v);
void __glMgrlc_TexCoord1f(GLfloat s);
void __glMgrlc_TexCoord1fv(const GLfloat *v);
void __glMgrlc_TexCoord1i(GLint s);
void __glMgrlc_TexCoord1iv(const GLint *v);
void __glMgrlc_TexCoord1s(GLshort s);
void __glMgrlc_TexCoord1sv(const GLshort *v);
void __glMgrlc_TexCoord2d(GLdouble s, GLdouble t);
void __glMgrlc_TexCoord2dv(const GLdouble *v);
void __glMgrlc_TexCoord2f(GLfloat s, GLfloat t);
void __glMgrlc_TexCoord2fv(const GLfloat *v);
void __glMgrlc_TexCoord2i(GLint s, GLint t);
void __glMgrlc_TexCoord2iv(const GLint *v);
void __glMgrlc_TexCoord2s(GLshort s, GLshort t);
void __glMgrlc_TexCoord2sv(const GLshort *v);
void __glMgrlc_TexCoord3d(GLdouble s, GLdouble t, GLdouble r);
void __glMgrlc_TexCoord3dv(const GLdouble *v);
void __glMgrlc_TexCoord3f(GLfloat s, GLfloat t, GLfloat r);
void __glMgrlc_TexCoord3fv(const GLfloat *v);
void __glMgrlc_TexCoord3i(GLint s, GLint t, GLint r);
void __glMgrlc_TexCoord3iv(const GLint *v);
void __glMgrlc_TexCoord3s(GLshort s, GLshort t, GLshort r);
void __glMgrlc_TexCoord3sv(const GLshort *v);
void __glMgrlc_TexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void __glMgrlc_TexCoord4dv(const GLdouble *v);
void __glMgrlc_TexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void __glMgrlc_TexCoord4fv(const GLfloat *v);
void __glMgrlc_TexCoord4i(GLint s, GLint t, GLint r, GLint q);
void __glMgrlc_TexCoord4iv(const GLint *v);
void __glMgrlc_TexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);
void __glMgrlc_TexCoord4sv(const GLshort *v);
void __glMgrlc_Vertex2d(GLdouble x, GLdouble y);
void __glMgrlc_Vertex2dv(const GLdouble *v);
void __glMgrlc_Vertex2f(GLfloat x, GLfloat y);
void __glMgrlc_Vertex2fv(const GLfloat *v);
void __glMgrlc_Vertex2i(GLint x, GLint y);
void __glMgrlc_Vertex2iv(const GLint *v);
void __glMgrlc_Vertex2s(GLshort x, GLshort y);
void __glMgrlc_Vertex2sv(const GLshort *v);
void __glMgrlc_Vertex3d(GLdouble x, GLdouble y, GLdouble z);
void __glMgrlc_Vertex3dv(const GLdouble *v);
void __glMgrlc_Vertex3f(GLfloat x, GLfloat y, GLfloat z);
void __glMgrlc_Vertex3fv(const GLfloat *v);
void __glMgrlc_Vertex3i(GLint x, GLint y, GLint z);
void __glMgrlc_Vertex3iv(const GLint *v);
void __glMgrlc_Vertex3s(GLshort x, GLshort y, GLshort z);
void __glMgrlc_Vertex3sv(const GLshort *v);
void __glMgrlc_Vertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glMgrlc_Vertex4dv(const GLdouble *v);
void __glMgrlc_Vertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glMgrlc_Vertex4fv(const GLfloat *v);
void __glMgrlc_Vertex4i(GLint x, GLint y, GLint z, GLint w);
void __glMgrlc_Vertex4iv(const GLint *v);
void __glMgrlc_Vertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glMgrlc_Vertex4sv(const GLshort *v);
void __glMgrlc_Indexub(GLubyte c);
void __glMgrlc_Indexubv(const GLubyte *c);
void __glMgr_PushTokens(__GLcontext *gc, ...);
void __glMgr_PushPixels(__GLcontext *gc, ...);
void __glMgrim_pipe(__GLcontext *gc, ...);
void __glDoInterpret();
void __glle_Sentinel();
void __glSPInterpret();
void __glsple_Sentinel();
void glNewList(GLuint list, GLenum mode);
void glEndList(void);
void glCallList(GLuint list);
void glCallLists(GLsizei n, GLenum type, const void *lists);
void glDeleteLists(GLuint list, GLsizei range);
GLuint glGenLists(GLsizei range);
void glListBase(GLuint base);
void glBegin(GLenum mode);
void glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap);
void glColor3b(GLbyte red, GLbyte green, GLbyte blue);
void glColor3bv(const GLbyte *v);
void glColor3d(GLdouble red, GLdouble green, GLdouble blue);
void glColor3dv(const GLdouble *v);
void glColor3f(GLfloat red, GLfloat green, GLfloat blue);
void glColor3fv(const GLfloat *v);
void glColor3i(GLint red, GLint green, GLint blue);
void glColor3iv(const GLint *v);
void glColor3s(GLshort red, GLshort green, GLshort blue);
void glColor3sv(const GLshort *v);
void glColor3ub(GLubyte red, GLubyte green, GLubyte blue);
void glColor3ubv(const GLubyte *v);
void glColor3ui(GLuint red, GLuint green, GLuint blue);
void glColor3uiv(const GLuint *v);
void glColor3us(GLushort red, GLushort green, GLushort blue);
void glColor3usv(const GLushort *v);
void glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void glColor4bv(const GLbyte *v);
void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void glColor4dv(const GLdouble *v);
void glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glColor4fv(const GLfloat *v);
void glColor4i(GLint red, GLint green, GLint blue, GLint alpha);
void glColor4iv(const GLint *v);
void glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
void glColor4sv(const GLshort *v);
void glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void glColor4ubv(const GLubyte *v);
void glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
void glColor4uiv(const GLuint *v);
void glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);
void glColor4usv(const GLushort *v);
void glEdgeFlag(GLboolean flag);
void glEdgeFlagv(const GLboolean *flag);
void glEnd(void);
void glIndexd(GLdouble c);
void glIndexdv(const GLdouble *c);
void glIndexf(GLfloat c);
void glIndexfv(const GLfloat *c);
void glIndexi(GLint c);
void glIndexiv(const GLint *c);
void glIndexs(GLshort c);
void glIndexsv(const GLshort *c);
void glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz);
void glNormal3bv(const GLbyte *v);
void glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz);
void glNormal3dv(const GLdouble *v);
void glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz);
void glNormal3fv(const GLfloat *v);
void glNormal3i(GLint nx, GLint ny, GLint nz);
void glNormal3iv(const GLint *v);
void glNormal3s(GLshort nx, GLshort ny, GLshort nz);
void glNormal3sv(const GLshort *v);
void glRasterPos2d(GLdouble x, GLdouble y);
void glRasterPos2dv(const GLdouble *v);
void glRasterPos2f(GLfloat x, GLfloat y);
void glRasterPos2fv(const GLfloat *v);
void glRasterPos2i(GLint x, GLint y);
void glRasterPos2iv(const GLint *v);
void glRasterPos2s(GLshort x, GLshort y);
void glRasterPos2sv(const GLshort *v);
void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z);
void glRasterPos3dv(const GLdouble *v);
void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z);
void glRasterPos3fv(const GLfloat *v);
void glRasterPos3i(GLint x, GLint y, GLint z);
void glRasterPos3iv(const GLint *v);
void glRasterPos3s(GLshort x, GLshort y, GLshort z);
void glRasterPos3sv(const GLshort *v);
void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glRasterPos4dv(const GLdouble *v);
void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glRasterPos4fv(const GLfloat *v);
void glRasterPos4i(GLint x, GLint y, GLint z, GLint w);
void glRasterPos4iv(const GLint *v);
void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
void glRasterPos4sv(const GLshort *v);
void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void glRectdv(const GLdouble *v1, const GLdouble *v2);
void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void glRectfv(const GLfloat *v1, const GLfloat *v2);
void glRecti(GLint x1, GLint y1, GLint x2, GLint y2);
void glRectiv(const GLint *v1, const GLint *v2);
void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void glRectsv(const GLshort *v1, const GLshort *v2);
void glTexCoord1d(GLdouble s);
void glTexCoord1dv(const GLdouble *v);
void glTexCoord1f(GLfloat s);
void glTexCoord1fv(const GLfloat *v);
void glTexCoord1i(GLint s);
void glTexCoord1iv(const GLint *v);
void glTexCoord1s(GLshort s);
void glTexCoord1sv(const GLshort *v);
void glTexCoord2d(GLdouble s, GLdouble t);
void glTexCoord2dv(const GLdouble *v);
void glTexCoord2f(GLfloat s, GLfloat t);
void glTexCoord2fv(const GLfloat *v);
void glTexCoord2i(GLint s, GLint t);
void glTexCoord2iv(const GLint *v);
void glTexCoord2s(GLshort s, GLshort t);
void glTexCoord2sv(const GLshort *v);
void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r);
void glTexCoord3dv(const GLdouble *v);
void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r);
void glTexCoord3fv(const GLfloat *v);
void glTexCoord3i(GLint s, GLint t, GLint r);
void glTexCoord3iv(const GLint *v);
void glTexCoord3s(GLshort s, GLshort t, GLshort r);
void glTexCoord3sv(const GLshort *v);
void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glTexCoord4dv(const GLdouble *v);
void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glTexCoord4fv(const GLfloat *v);
void glTexCoord4i(GLint s, GLint t, GLint r, GLint q);
void glTexCoord4iv(const GLint *v);
void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);
void glTexCoord4sv(const GLshort *v);
void glVertex2d(GLdouble x, GLdouble y);
void glVertex2dv(const GLdouble *v);
void glVertex2f(GLfloat x, GLfloat y);
void glVertex2fv(const GLfloat *v);
void glVertex2i(GLint x, GLint y);
void glVertex2iv(const GLint *v);
void glVertex2s(GLshort x, GLshort y);
void glVertex2sv(const GLshort *v);
void glVertex3d(GLdouble x, GLdouble y, GLdouble z);
void glVertex3dv(const GLdouble *v);
void glVertex3f(GLfloat x, GLfloat y, GLfloat z);
void glVertex3fv(const GLfloat *v);
void glVertex3i(GLint x, GLint y, GLint z);
void glVertex3iv(const GLint *v);
void glVertex3s(GLshort x, GLshort y, GLshort z);
void glVertex3sv(const GLshort *v);
void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertex4dv(const GLdouble *v);
void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertex4fv(const GLfloat *v);
void glVertex4i(GLint x, GLint y, GLint z, GLint w);
void glVertex4iv(const GLint *v);
void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
void glVertex4sv(const GLshort *v);
void glClipPlane(GLenum plane, const GLdouble *equation);
void glColorMaterial(GLenum face, GLenum mode);
void glCullFace(GLenum mode);
void glFogf(GLenum pname, GLfloat param);
void glFogfv(GLenum pname, const GLfloat *params);
void glFogi(GLenum pname, GLint param);
void glFogiv(GLenum pname, const GLint *params);
void glFrontFace(GLenum mode);
void glHint(GLenum target, GLenum mode);
void glLightf(GLenum light, GLenum pname, GLfloat param);
void glLightfv(GLenum light, GLenum pname, const GLfloat *params);
void glLighti(GLenum light, GLenum pname, GLint param);
void glLightiv(GLenum light, GLenum pname, const GLint *params);
void glLightModelf(GLenum pname, GLfloat param);
void glLightModelfv(GLenum pname, const GLfloat *params);
void glLightModeli(GLenum pname, GLint param);
void glLightModeliv(GLenum pname, const GLint *params);
void glLineStipple(GLint factor, GLushort pattern);
void glLineWidth(GLfloat width);
void glMaterialf(GLenum face, GLenum pname, GLfloat param);
void glMaterialfv(GLenum face, GLenum pname, const GLfloat *params);
void glMateriali(GLenum face, GLenum pname, GLint param);
void glMaterialiv(GLenum face, GLenum pname, const GLint *params);
void glPointSize(GLfloat size);
void glPolygonMode(GLenum face, GLenum mode);
void glPolygonStipple(const GLubyte *mask);
void glScissor(GLint x, GLint y, GLsizei width, GLsizei height);
void glShadeModel(GLenum mode);
void glTexParameterf(GLenum target, GLenum pname, GLfloat param);
void glTexParameterfv(GLenum target, GLenum pname, const GLfloat *params);
void glTexParameteri(GLenum target, GLenum pname, GLint param);
void glTexParameteriv(GLenum target, GLenum pname, const GLint *params);
void glTexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexEnvf(GLenum target, GLenum pname, GLfloat param);
void glTexEnvfv(GLenum target, GLenum pname, const GLfloat *params);
void glTexEnvi(GLenum target, GLenum pname, GLint param);
void glTexEnviv(GLenum target, GLenum pname, const GLint *params);
void glTexGend(GLenum coord, GLenum pname, GLdouble param);
void glTexGendv(GLenum coord, GLenum pname, const GLdouble *params);
void glTexGenf(GLenum coord, GLenum pname, GLfloat param);
void glTexGenfv(GLenum coord, GLenum pname, const GLfloat *params);
void glTexGeni(GLenum coord, GLenum pname, GLint param);
void glTexGeniv(GLenum coord, GLenum pname, const GLint *params);
void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer);
void glSelectBuffer(GLsizei size, GLuint *buffer);
GLint glRenderMode(GLenum mode);
void glInitNames(void);
void glLoadName(GLuint name);
void glPassThrough(GLfloat token);
void glPopName(void);
void glPushName(GLuint name);
void glDrawBuffer(GLenum buf);
void glClear(GLbitfield mask);
void glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glClearIndex(GLfloat c);
void glClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glClearStencil(GLint s);
void glClearDepth(GLdouble depth);
void glStencilMask(GLuint mask);
void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void glDepthMask(GLboolean flag);
void glIndexMask(GLuint mask);
void glAccum(GLenum op, GLfloat value);
void glDisable(GLenum cap);
void glEnable(GLenum cap);
void glFinish(void);
void glFlush(void);
void glPopAttrib(void);
void glPushAttrib(GLbitfield mask);
void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points);
void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points);
void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points);
void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points);
void glMapGrid1d(GLint un, GLdouble u1, GLdouble u2);
void glMapGrid1f(GLint un, GLfloat u1, GLfloat u2);
void glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
void glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
void glEvalCoord1d(GLdouble u);
void glEvalCoord1dv(const GLdouble *u);
void glEvalCoord1f(GLfloat u);
void glEvalCoord1fv(const GLfloat *u);
void glEvalCoord2d(GLdouble u, GLdouble v);
void glEvalCoord2dv(const GLdouble *u);
void glEvalCoord2f(GLfloat u, GLfloat v);
void glEvalCoord2fv(const GLfloat *u);
void glEvalMesh1(GLenum mode, GLint i1, GLint i2);
void glEvalPoint1(GLint i);
void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
void glEvalPoint2(GLint i, GLint j);
void glAlphaFunc(GLenum func, GLfloat ref);
void glBlendFunc(GLenum sfactor, GLenum dfactor);
void glLogicOp(GLenum opcode);
void glStencilFunc(GLenum func, GLint ref, GLuint mask);
void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass);
void glDepthFunc(GLenum func);
void glPixelZoom(GLfloat xfactor, GLfloat yfactor);
void glPixelTransferf(GLenum pname, GLfloat param);
void glPixelTransferi(GLenum pname, GLint param);
void glPixelStoref(GLenum pname, GLfloat param);
void glPixelStorei(GLenum pname, GLint param);
void glPixelMapfv(GLenum map, GLsizei mapsize, const GLfloat *values);
void glPixelMapuiv(GLenum map, GLsizei mapsize, const GLuint *values);
void glPixelMapusv(GLenum map, GLsizei mapsize, const GLushort *values);
void glReadBuffer(GLenum src);
void glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void *pixels);
void glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void glGetBooleanv(GLenum pname, GLboolean *data);
void glGetClipPlane(GLenum plane, GLdouble *equation);
void glGetDoublev(GLenum pname, GLdouble *data);
GLenum glGetError(void);
void glGetFloatv(GLenum pname, GLfloat *data);
void glGetIntegerv(GLenum pname, GLint *data);
void glGetLightfv(GLenum light, GLenum pname, GLfloat *params);
void glGetLightiv(GLenum light, GLenum pname, GLint *params);
void glGetMapdv(GLenum target, GLenum query, GLdouble *v);
void glGetMapfv(GLenum target, GLenum query, GLfloat *v);
void glGetMapiv(GLenum target, GLenum query, GLint *v);
void glGetMaterialfv(GLenum face, GLenum pname, GLfloat *params);
void glGetMaterialiv(GLenum face, GLenum pname, GLint *params);
void glGetPixelMapfv(GLenum map, GLfloat *values);
void glGetPixelMapuiv(GLenum map, GLuint *values);
void glGetPixelMapusv(GLenum map, GLushort *values);
void glGetPolygonStipple(GLubyte *mask);
const GLubyte * glGetString(GLenum name);
void glGetTexEnvfv(GLenum target, GLenum pname, GLfloat *params);
void glGetTexEnviv(GLenum target, GLenum pname, GLint *params);
void glGetTexGendv(GLenum coord, GLenum pname, GLdouble *params);
void glGetTexGenfv(GLenum coord, GLenum pname, GLfloat *params);
void glGetTexGeniv(GLenum coord, GLenum pname, GLint *params);
void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, void *pixels);
void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat *params);
void glGetTexParameteriv(GLenum target, GLenum pname, GLint *params);
void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params);
void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params);
GLboolean glIsEnabled(GLenum cap);
GLboolean glIsList(GLuint list);
void glDepthRange(GLdouble n, GLdouble f);
void glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void glLoadIdentity(void);
void glLoadMatrixf(const GLfloat *m);
void glLoadMatrixd(const GLdouble *m);
void glMatrixMode(GLenum mode);
void glMultMatrixf(const GLfloat *m);
void glMultMatrixd(const GLdouble *m);
void glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void glPopMatrix(void);
void glPushMatrix(void);
void glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void glScaled(GLdouble x, GLdouble y, GLdouble z);
void glScalef(GLfloat x, GLfloat y, GLfloat z);
void glTranslated(GLdouble x, GLdouble y, GLdouble z);
void glTranslatef(GLfloat x, GLfloat y, GLfloat z);
void glViewport(GLint x, GLint y, GLsizei width, GLsizei height);
void glBlendColorEXT(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glBlendEquationEXT(GLenum mode);
void glPolygonOffsetEXT(GLfloat factor, GLfloat bias);
void glTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void glTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void glConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *image);
void glConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *image);
void glConvolutionParameterfEXT(GLenum target, GLenum pname, GLfloat params);
void glConvolutionParameterfvEXT(GLenum target, GLenum pname, const GLfloat *params);
void glConvolutionParameteriEXT(GLenum target, GLenum pname, GLint params);
void glConvolutionParameterivEXT(GLenum target, GLenum pname, const GLint *params);
void glCopyConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glCopyConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetConvolutionFilterEXT(GLenum target, GLenum format, GLenum type, void *image);
void glGetConvolutionParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void glGetConvolutionParameterivEXT(GLenum target, GLenum pname, GLint *params);
void glGetSeparableFilterEXT(GLenum target, GLenum format, GLenum type, void *row, void *column, void *span);
void glSeparableFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *row, const void *column);
void glGetHistogramEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void glGetHistogramParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void glGetHistogramParameterivEXT(GLenum target, GLenum pname, GLint *params);
void glGetMinmaxEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void glGetMinmaxParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void glGetMinmaxParameterivEXT(GLenum target, GLenum pname, GLint *params);
void glHistogramEXT(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void glMinmaxEXT(GLenum target, GLenum internalformat, GLboolean sink);
void glResetHistogramEXT(GLenum target);
void glResetMinmaxEXT(GLenum target);
void glTexImage3DEXT(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void glArrayElementEXT(GLint i);
void glColorPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glDrawArraysEXT(GLenum mode, GLint first, GLsizei count);
void glEdgeFlagPointerEXT(GLsizei stride, GLsizei count, const GLboolean *pointer);
void glGetPointervEXT(GLenum pname, void **params);
void glIndexPointerEXT(GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glNormalPointerEXT(GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glTexCoordPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glVertexPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
GLboolean glAreTexturesResidentEXT(GLsizei n, const GLuint *textures, GLboolean *residences);
void glBindTextureEXT(GLenum target, GLuint texture);
void glDeleteTexturesEXT(GLsizei n, const GLuint *textures);
void glGenTexturesEXT(GLsizei n, GLuint *textures);
GLboolean glIsTextureEXT(GLuint texture);
void glPrioritizeTexturesEXT(GLsizei n, const GLuint *textures, const GLclampf *priorities);
void glCopyTexImage1DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyTexImage2DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glColorPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void glDisableClientState(GLenum array);
void glDrawElements(GLenum mode, GLsizei count, GLenum type, const void *indices);
void glEdgeFlagPointer(GLsizei stride, const void *pointer);
void glEnableClientState(GLenum array);
void glIndexPointer(GLenum type, GLsizei stride, const void *pointer);
void glInterleavedArrays(GLenum format, GLsizei stride, const void *pointer);
void glNormalPointer(GLenum type, GLsizei stride, const void *pointer);
void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void glVertexPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void glPolygonOffset(GLfloat factor, GLfloat units);
void glIndexub(GLubyte c);
void glIndexubv(const GLubyte *c);
void glPopClientAttrib(void);
void glPushClientAttrib(GLbitfield mask);
void glSampleMaskSGIS();
void glSamplePatternSGIS();
void glTagSampleBufferSGIX();
void glDetailTexFuncSGIS();
void glGetDetailTexFuncSGIS();
void glSharpenTexFuncSGIS();
void glGetSharpenTexFuncSGIS();
void glColorTableSGI(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *table);
void glColorTableParameterfvSGI(GLenum target, GLenum pname, const GLfloat *params);
void glColorTableParameterivSGI(GLenum target, GLenum pname, const GLint *params);
void glCopyColorTableSGI(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glGetColorTableSGI(GLenum target, GLenum format, GLenum type, void *table);
void glGetColorTableParameterfvSGI(GLenum target, GLenum pname, GLfloat *params);
void glGetColorTableParameterivSGI(GLenum target, GLenum pname, GLint *params);
void glTexImage4DSGIS();
void glTexSubImage4DSGIS();
void glPixelTexGenSGIX();
void glSpriteParameterfSGIX();
void glSpriteParameterfvSGIX();
void glSpriteParameteriSGIX();
void glSpriteParameterivSGIX();
void glGetTexFilterFuncSGIS(GLenum target, GLenum filter, GLfloat *weights);
void glTexFilterFuncSGIS(GLenum target, GLenum filter, GLsizei n, const GLfloat *weights);
void glPointParameterfSGIS();
void glPointParameterfvSGIS();
void glFogFuncSGIS();
void glGetInstrumentsSGIX();
void glInstrumentsBufferSGIX();
void glPollInstrumentsSGIX();
void glReadInstrumentsSGIX();
void glStartInstrumentsSGIX();
void glStopInstrumentsSGIX();
void glFlushRasterSGIX();
void glReferencePlaneSGIX();
void glFrameZoomSGIX();
void glIglooInterfaceSGIX();
void glDeformationMap3dSGIX();
void glDeformationMap3fSGIX();
void glDeformSGIX();
void glLoadIdentityDeformationMapSGIX();
void glGetListParameterfvSGIX();
void glGetListParameterivSGIX();
void glListParameterfSGIX();
void glListParameterfvSGIX();
void glListParameteriSGIX();
void glListParameterivSGIX();
void glPixelTransformSGI();
void glPixelTransformParameterfSGI();
void glPixelTransformParameterfvSGI();
void glPixelTransformParameteriSGI();
void glPixelTransformParameterivSGI();
void glGetPixelTransformParameterfvSGI();
void glGetPixelTransformParameterivSGI();
void glSubdivPatchSGIX();
void glSubdivPatchParameterfSGIX();
void glSubdivPatchParameteriSGIX();
void glNurbsKnots1dSGIX();
void glNurbsKnots1fSGIX();
void glNurbsKnots2dSGIX();
void glNurbsKnots2fSGIX();
void glFragmentColorMaterialSGIX();
void glFragmentLightfSGIX();
void glFragmentLightfvSGIX();
void glFragmentLightiSGIX();
void glFragmentLightivSGIX();
void glFragmentLightModelfSGIX();
void glFragmentLightModelfvSGIX();
void glFragmentLightModeliSGIX();
void glFragmentLightModelivSGIX();
void glFragmentMaterialfSGIX();
void glFragmentMaterialfvSGIX();
void glFragmentMaterialiSGIX();
void glFragmentMaterialivSGIX();
void glGetFragmentLightfvSGIX();
void glGetFragmentLightivSGIX();
void glGetFragmentMaterialfvSGIX();
void glGetFragmentMaterialivSGIX();
void glLightEnviSGIX();
void glBinormal3bSGIX();
void glBinormal3bvSGIX();
void glBinormal3dSGIX();
void glBinormal3dvSGIX();
void glBinormal3fSGIX();
void glBinormal3fvSGIX();
void glBinormal3iSGIX();
void glBinormal3ivSGIX();
void glBinormal3sSGIX();
void glBinormal3svSGIX();
void glFragmentLightSpaceSGIX();
void glTangent3bSGIX();
void glTangent3bvSGIX();
void glTangent3dSGIX();
void glTangent3dvSGIX();
void glTangent3fSGIX();
void glTangent3fvSGIX();
void glTangent3iSGIX();
void glTangent3ivSGIX();
void glTangent3sSGIX();
void glTangent3svSGIX();
void glMultiTexCoord1dSGIS();
void glMultiTexCoord1dvSGIS();
void glMultiTexCoord1fSGIS();
void glMultiTexCoord1fvSGIS();
void glMultiTexCoord1iSGIS();
void glMultiTexCoord1ivSGIS();
void glMultiTexCoord1sSGIS();
void glMultiTexCoord1svSGIS();
void glMultiTexCoord2dSGIS();
void glMultiTexCoord2dvSGIS();
void glMultiTexCoord2fSGIS();
void glMultiTexCoord2fvSGIS();
void glMultiTexCoord2iSGIS();
void glMultiTexCoord2ivSGIS();
void glMultiTexCoord2sSGIS();
void glMultiTexCoord2svSGIS();
void glMultiTexCoord3dSGIS();
void glMultiTexCoord3dvSGIS();
void glMultiTexCoord3fSGIS();
void glMultiTexCoord3fvSGIS();
void glMultiTexCoord3iSGIS();
void glMultiTexCoord3ivSGIS();
void glMultiTexCoord3sSGIS();
void glMultiTexCoord3svSGIS();
void glMultiTexCoord4dSGIS();
void glMultiTexCoord4dvSGIS();
void glMultiTexCoord4fSGIS();
void glMultiTexCoord4fvSGIS();
void glMultiTexCoord4iSGIS();
void glMultiTexCoord4ivSGIS();
void glMultiTexCoord4sSGIS();
void glMultiTexCoord4svSGIS();
void glMultiTexCoordPointerSGIS();
void glSelectTextureSGIS();
void glApplyTextureSGIX();
void glTextureLightSGIX();
void glTextureMaterialSGIX();
void glFogLayersSGIX();
void glColorSubTable();
void glCopyColorSubTable();
void glDrawRangeElements();
void __glMgrim_Color3b(GLbyte red, GLbyte green, GLbyte blue);
void __glMgrim_Color3bv(const GLbyte *v);
void __glMgrim_Color3d(GLdouble red, GLdouble green, GLdouble blue);
void __glMgrim_Color3dv(const GLdouble *v);
void __glMgrim_Color3f(GLfloat red, GLfloat green, GLfloat blue);
void __glMgrim_Color3fv(const GLfloat *v);
void __glMgrim_Color3i(GLint red, GLint green, GLint blue);
void __glMgrim_Color3iv(const GLint *v);
void __glMgrim_Color3s(GLshort red, GLshort green, GLshort blue);
void __glMgrim_Color3sv(const GLshort *v);
void __glMgrim_Color3ub(GLubyte red, GLubyte green, GLubyte blue);
void __glMgrim_Color3ubv(const GLubyte *v);
void __glMgrim_Color3ui(GLuint red, GLuint green, GLuint blue);
void __glMgrim_Color3uiv(const GLuint *v);
void __glMgrim_Color3us(GLushort red, GLushort green, GLushort blue);
void __glMgrim_Color3usv(const GLushort *v);
void __glMgrim_Color4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void __glMgrim_Color4bv(const GLbyte *v);
void __glMgrim_Color4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void __glMgrim_Color4dv(const GLdouble *v);
void __glMgrim_Color4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glMgrim_Color4fv(const GLfloat *v);
void __glMgrim_Color4i(GLint red, GLint green, GLint blue, GLint alpha);
void __glMgrim_Color4iv(const GLint *v);
void __glMgrim_Color4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
void __glMgrim_Color4sv(const GLshort *v);
void __glMgrim_Color4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void __glMgrim_Color4ubv(const GLubyte *v);
void __glMgrim_Color4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
void __glMgrim_Color4uiv(const GLuint *v);
void __glMgrim_Color4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);
void __glMgrim_Color4usv(const GLushort *v);
void __glMgrim_Indexd(GLdouble c);
void __glMgrim_Indexdv(const GLdouble *c);
void __glMgrim_Indexf(GLfloat c);
void __glMgrim_Indexfv(const GLfloat *c);
void __glMgrim_Indexi(GLint c);
void __glMgrim_Indexiv(const GLint *c);
void __glMgrim_Indexs(GLshort c);
void __glMgrim_Indexsv(const GLshort *c);
void __glMgrim_Normal3b(GLbyte nx, GLbyte ny, GLbyte nz);
void __glMgrim_Normal3bv(const GLbyte *v);
void __glMgrim_Normal3d(GLdouble nx, GLdouble ny, GLdouble nz);
void __glMgrim_Normal3dv(const GLdouble *v);
void __glMgrim_Normal3f(GLfloat nx, GLfloat ny, GLfloat nz);
void __glMgrim_Normal3fv(const GLfloat *v);
void __glMgrim_Normal3i(GLint nx, GLint ny, GLint nz);
void __glMgrim_Normal3iv(const GLint *v);
void __glMgrim_Normal3s(GLshort nx, GLshort ny, GLshort nz);
void __glMgrim_Normal3sv(const GLshort *v);
void __glMgrim_RasterPos2d(GLdouble x, GLdouble y);
void __glMgrim_RasterPos2dv(const GLdouble *v);
void __glMgrim_RasterPos2f(GLfloat x, GLfloat y);
void __glMgrim_RasterPos2fv(const GLfloat *v);
void __glMgrim_RasterPos2i(GLint x, GLint y);
void __glMgrim_RasterPos2iv(const GLint *v);
void __glMgrim_RasterPos2s(GLshort x, GLshort y);
void __glMgrim_RasterPos2sv(const GLshort *v);
void __glMgrim_RasterPos3d(GLdouble x, GLdouble y, GLdouble z);
void __glMgrim_RasterPos3dv(const GLdouble *v);
void __glMgrim_RasterPos3f(GLfloat x, GLfloat y, GLfloat z);
void __glMgrim_RasterPos3fv(const GLfloat *v);
void __glMgrim_RasterPos3i(GLint x, GLint y, GLint z);
void __glMgrim_RasterPos3iv(const GLint *v);
void __glMgrim_RasterPos3s(GLshort x, GLshort y, GLshort z);
void __glMgrim_RasterPos3sv(const GLshort *v);
void __glMgrim_RasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glMgrim_RasterPos4dv(const GLdouble *v);
void __glMgrim_RasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glMgrim_RasterPos4fv(const GLfloat *v);
void __glMgrim_RasterPos4i(GLint x, GLint y, GLint z, GLint w);
void __glMgrim_RasterPos4iv(const GLint *v);
void __glMgrim_RasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glMgrim_RasterPos4sv(const GLshort *v);
void __glMgrim_TexCoord1d(GLdouble s);
void __glMgrim_TexCoord1dv(const GLdouble *v);
void __glMgrim_TexCoord1f(GLfloat s);
void __glMgrim_TexCoord1fv(const GLfloat *v);
void __glMgrim_TexCoord1i(GLint s);
void __glMgrim_TexCoord1iv(const GLint *v);
void __glMgrim_TexCoord1s(GLshort s);
void __glMgrim_TexCoord1sv(const GLshort *v);
void __glMgrim_TexCoord2d(GLdouble s, GLdouble t);
void __glMgrim_TexCoord2dv(const GLdouble *v);
void __glMgrim_TexCoord2f(GLfloat s, GLfloat t);
void __glMgrim_TexCoord2fv(const GLfloat *v);
void __glMgrim_TexCoord2i(GLint s, GLint t);
void __glMgrim_TexCoord2iv(const GLint *v);
void __glMgrim_TexCoord2s(GLshort s, GLshort t);
void __glMgrim_TexCoord2sv(const GLshort *v);
void __glMgrim_TexCoord3d(GLdouble s, GLdouble t, GLdouble r);
void __glMgrim_TexCoord3dv(const GLdouble *v);
void __glMgrim_TexCoord3f(GLfloat s, GLfloat t, GLfloat r);
void __glMgrim_TexCoord3fv(const GLfloat *v);
void __glMgrim_TexCoord3i(GLint s, GLint t, GLint r);
void __glMgrim_TexCoord3iv(const GLint *v);
void __glMgrim_TexCoord3s(GLshort s, GLshort t, GLshort r);
void __glMgrim_TexCoord3sv(const GLshort *v);
void __glMgrim_TexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void __glMgrim_TexCoord4dv(const GLdouble *v);
void __glMgrim_TexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void __glMgrim_TexCoord4fv(const GLfloat *v);
void __glMgrim_TexCoord4i(GLint s, GLint t, GLint r, GLint q);
void __glMgrim_TexCoord4iv(const GLint *v);
void __glMgrim_TexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);
void __glMgrim_TexCoord4sv(const GLshort *v);
void __glMgrim_Vertex2d(GLdouble x, GLdouble y);
void __glMgrim_Vertex2dv(const GLdouble *v);
void __glMgrim_Vertex2f(GLfloat x, GLfloat y);
void __glMgrim_Vertex2fv(const GLfloat *v);
void __glMgrim_Vertex2i(GLint x, GLint y);
void __glMgrim_Vertex2iv(const GLint *v);
void __glMgrim_Vertex2s(GLshort x, GLshort y);
void __glMgrim_Vertex2sv(const GLshort *v);
void __glMgrim_Vertex3d(GLdouble x, GLdouble y, GLdouble z);
void __glMgrim_Vertex3dv(const GLdouble *v);
void __glMgrim_Vertex3f(GLfloat x, GLfloat y, GLfloat z);
void __glMgrim_Vertex3fv(const GLfloat *v);
void __glMgrim_Vertex3i(GLint x, GLint y, GLint z);
void __glMgrim_Vertex3iv(const GLint *v);
void __glMgrim_Vertex3s(GLshort x, GLshort y, GLshort z);
void __glMgrim_Vertex3sv(const GLshort *v);
void __glMgrim_Vertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glMgrim_Vertex4dv(const GLdouble *v);
void __glMgrim_Vertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glMgrim_Vertex4fv(const GLfloat *v);
void __glMgrim_Vertex4i(GLint x, GLint y, GLint z, GLint w);
void __glMgrim_Vertex4iv(const GLint *v);
void __glMgrim_Vertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glMgrim_Vertex4sv(const GLshort *v);
void __glMgrim_Indexub(GLubyte c);
void __glMgrim_Indexubv(const GLubyte *c);
