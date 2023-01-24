.class public Lcom/zui/gallery/common/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/common/ApiHelper$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final AT_LEAST_16:Z

.field public static final CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

.field public static final ENABLE_PHOTO_EDITOR:Z

.field public static final HAS_ACTION_BAR:Z

.field public static final HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

.field public static final HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

.field public static final HAS_CAMERA_FOCUS_AREA:Z

.field public static final HAS_CAMERA_HDR:Z

.field public static final HAS_CAMERA_METERING_AREA:Z

.field public static final HAS_CANCELLATION_SIGNAL:Z

.field public static final HAS_DISPLAY_LISTENER:Z

.field public static final HAS_EFFECTS_RECORDING:Z = false

.field public static final HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

.field public static final HAS_FACE_DETECTION:Z

.field public static final HAS_GET_CAMERA_DISABLED:Z

.field public static final HAS_GET_SUPPORTED_VIDEO_SIZE:Z

.field public static final HAS_GLES20_REQUIRED:Z

.field public static final HAS_INTENT_EXTRA_LOCAL_ONLY:Z

.field public static final HAS_MEDIA_ACTION_SOUND:Z

.field public static final HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

.field public static final HAS_MEDIA_MUXER:Z

.field public static final HAS_MEDIA_PROVIDER_FILES_TABLE:Z

.field public static final HAS_MOTION_EVENT_TRANSFORM:Z

.field public static final HAS_MTP:Z

.field public static final HAS_OBJECT_ANIMATION:Z

.field public static final HAS_OPTIONS_IN_MUTABLE:Z

.field public static final HAS_ORIENTATION_LOCK:Z

.field public static final HAS_POST_ON_ANIMATION:Z

.field public static final HAS_RELEASE_SURFACE_TEXTURE:Z

.field public static final HAS_REMOTE_VIEWS_SERVICE:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

.field public static final HAS_ROTATION_ANIMATION:Z

.field public static final HAS_SET_BEAM_PUSH_URIS:Z

.field public static final HAS_SET_DEFALT_BUFFER_SIZE:Z

.field public static final HAS_SET_ICON_ATTRIBUTE:Z

.field public static final HAS_SET_SYSTEM_UI_VISIBILITY:Z

.field public static final HAS_SURFACE_TEXTURE:Z

.field public static final HAS_SURFACE_TEXTURE_RECORDING:Z

.field public static final HAS_TIME_LAPSE_RECORDING:Z

.field public static final HAS_VIEW_PROPERTY_ANIMATOR:Z

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

.field public static final HAS_VIEW_TRANSFORM_PROPERTIES:Z

.field public static final HAS_ZOOM_WHEN_RECORDING:Z

.field public static final USE_888_PIXEL_FORMAT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->AT_LEAST_16:Z

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->ENABLE_PHOTO_EDITOR:Z

    .line 51
    const-class v0, Landroid/view/View;

    const-string v5, "SYSTEM_UI_FLAG_LAYOUT_STABLE"

    .line 52
    invoke-static {v0, v5}, Lcom/zui/gallery/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    .line 54
    const-class v0, Landroid/view/View;

    const-string v5, "SYSTEM_UI_FLAG_HIDE_NAVIGATION"

    .line 55
    invoke-static {v0, v5}, Lcom/zui/gallery/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    .line 57
    const-class v0, Landroid/provider/MediaStore$MediaColumns;

    const-string v5, "WIDTH"

    .line 58
    invoke-static {v0, v5}, Lcom/zui/gallery/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v0, v5, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 69
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v2

    const-string v6, "android.graphics.SurfaceTexture"

    const-string v7, "setDefaultBufferSize"

    invoke-static {v6, v7, v0}, Lcom/zui/gallery/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    new-array v0, v3, [Ljava/lang/Class;

    const-string v7, "release"

    .line 73
    invoke-static {v6, v7, v0}, Lcom/zui/gallery/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v0, v6, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MTP:Z

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v3

    :goto_8
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v3

    :goto_9
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_REMOTE_VIEWS_SERVICE:Z

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    move v0, v3

    :goto_a
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    .line 91
    const-class v0, Landroid/view/View;

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    const-string v8, "setSystemUiVisibility"

    .line 92
    invoke-static {v0, v8, v7}, Lcom/zui/gallery/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    :try_start_0
    const-string v0, "android.hardware.Camera$FaceDetectionListener"

    .line 98
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    const-class v7, Landroid/hardware/Camera;

    const-string v8, "setFaceDetectionListener"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v0, v9, v3

    .line 101
    invoke-static {v7, v8, v9}, Lcom/zui/gallery/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Landroid/hardware/Camera;

    const-string/jumbo v7, "startFaceDetection"

    new-array v8, v3, [Ljava/lang/Class;

    .line 102
    invoke-static {v0, v7, v8}, Lcom/zui/gallery/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Landroid/hardware/Camera;

    const-string/jumbo v7, "stopFaceDetection"

    new-array v8, v3, [Ljava/lang/Class;

    .line 103
    invoke-static {v0, v7, v8}, Lcom/zui/gallery/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v7, "getMaxNumDetectedFaces"

    new-array v8, v3, [Ljava/lang/Class;

    .line 104
    invoke-static {v0, v7, v8}, Lcom/zui/gallery/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_b

    :catchall_0
    :cond_b
    move v0, v3

    .line 107
    :goto_b
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_FACE_DETECTION:Z

    .line 110
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Landroid/content/ComponentName;

    aput-object v8, v7, v3

    const-string v8, "getCameraDisabled"

    .line 111
    invoke-static {v0, v8, v7}, Lcom/zui/gallery/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_GET_CAMERA_DISABLED:Z

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_c

    move v0, v2

    goto :goto_c

    :cond_c
    move v0, v3

    :goto_c
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_ACTION_SOUND:Z

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_d

    move v0, v2

    goto :goto_d

    :cond_d
    move v0, v3

    :goto_d
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_e

    move v0, v2

    goto :goto_e

    :cond_e
    move v0, v3

    :goto_e
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_f

    move v0, v2

    goto :goto_f

    :cond_f
    move v0, v3

    :goto_f
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_CAMERA_FOCUS_AREA:Z

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_10

    move v0, v2

    goto :goto_10

    :cond_10
    move v0, v3

    :goto_10
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_CAMERA_METERING_AREA:Z

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_11

    move v0, v2

    goto :goto_11

    :cond_11
    move v0, v3

    :goto_11
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MOTION_EVENT_TRANSFORM:Z

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v0, v7, :cond_12

    move v0, v2

    goto :goto_12

    :cond_12
    move v0, v3

    :goto_12
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_13

    move v0, v2

    goto :goto_13

    :cond_13
    move v0, v3

    :goto_13
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_14

    move v0, v2

    goto :goto_14

    :cond_14
    move v0, v3

    :goto_14
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_SET_ICON_ATTRIBUTE:Z

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_15

    move v0, v2

    goto :goto_15

    :cond_15
    move v0, v3

    :goto_15
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_16

    move v0, v2

    goto :goto_16

    :cond_16
    move v0, v3

    :goto_16
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_17

    move v0, v2

    goto :goto_17

    :cond_17
    move v0, v3

    :goto_17
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_ACTION_BAR:Z

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_18

    move v0, v2

    goto :goto_18

    :cond_18
    move v0, v3

    :goto_18
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_19

    move v0, v2

    goto :goto_19

    :cond_19
    move v0, v3

    :goto_19
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_CAMERA_HDR:Z

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1a

    move v0, v2

    goto :goto_1a

    :cond_1a
    move v0, v3

    :goto_1a
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1b

    move v0, v2

    goto :goto_1b

    :cond_1b
    move v0, v3

    :goto_1b
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_1c

    move v0, v2

    goto :goto_1c

    :cond_1c
    move v0, v3

    :goto_1c
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1d

    move v0, v2

    goto :goto_1d

    :cond_1d
    move v0, v3

    :goto_1d
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1e

    move v0, v2

    goto :goto_1e

    :cond_1e
    move v0, v3

    :goto_1e
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1f

    move v0, v2

    goto :goto_1f

    :cond_1f
    move v0, v3

    :goto_1f
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_OBJECT_ANIMATION:Z

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_20

    move v0, v2

    goto :goto_20

    :cond_20
    move v0, v3

    :goto_20
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    .line 180
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "rotationAnimation"

    .line 181
    invoke-static {v0, v4}, Lcom/zui/gallery/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_ROTATION_ANIMATION:Z

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v0, v4, :cond_21

    move v0, v2

    goto :goto_21

    :cond_21
    move v0, v3

    :goto_21
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_ORIENTATION_LOCK:Z

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_22

    move v0, v2

    goto :goto_22

    :cond_22
    move v0, v3

    :goto_22
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_CANCELLATION_SIGNAL:Z

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_23

    move v0, v2

    goto :goto_23

    :cond_23
    move v0, v3

    :goto_23
    sput-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_MUXER:Z

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_24

    goto :goto_24

    :cond_24
    move v2, v3

    :goto_24
    sput-boolean v2, Lcom/zui/gallery/common/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 198
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 199
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p3
.end method

.method private static hasField(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 207
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 228
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 217
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 218
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method
