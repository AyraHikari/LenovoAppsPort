.class public Lcom/google/vr/cardboard/VrParamsProviderJni;
.super Ljava/lang/Object;
.source "VrParamsProviderJni.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VrParamsProviderJni"

.field private static volatile displayMetricsOverride:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/google/vr/cardboard/VrParamsProviderJni;->displayMetricsOverride:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "window"

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 173
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeUpdateNativePhoneParamsPointer(JIIFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePhoneParams",
            "widthPixels",
            "heightPixels",
            "xDpi",
            "yDpi",
            "borderSizeMeters"
        }
    .end annotation
.end method

.method private static readDeviceParams(Landroid/content/Context;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    .line 68
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method private static readPhoneParams(Landroid/content/Context;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "nativePhoneParams"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "VrParamsProviderJni"

    const-string v0, "Missing context for phone params lookup. Results may be invalid."

    .line 122
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x0

    .line 126
    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getBorderSizeMeters(Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)F

    move-result v0

    .line 123
    invoke-static {p1, p2, p0, v0}, Lcom/google/vr/cardboard/VrParamsProviderJni;->updateNativePhoneParamsPointer(JLandroid/util/DisplayMetrics;F)V

    return-void

    .line 131
    :cond_0
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderJni;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 132
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    .line 133
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->readPhoneParams()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object v1

    .line 134
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->hasXPpi()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 137
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->getXPpi()F

    move-result p0

    iput p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 139
    :cond_1
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->hasYPpi()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 140
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->getYPpi()F

    move-result p0

    iput p0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 144
    :cond_2
    invoke-static {v1}, Lcom/google/vr/cardboard/DisplayUtils;->getBorderSizeMeters(Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)F

    move-result p0

    .line 143
    invoke-static {p1, p2, v0, p0}, Lcom/google/vr/cardboard/VrParamsProviderJni;->updateNativePhoneParamsPointer(JLandroid/util/DisplayMetrics;F)V

    return-void
.end method

.method private static readSdkConfigurationParams(Landroid/content/Context;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method private static readUserPrefs(Landroid/content/Context;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 156
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    .line 157
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->readUserPrefs()Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;

    move-result-object v0

    .line 158
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public static setDisplayOverride(Landroid/view/Display;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "display"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-object p0, Lcom/google/vr/cardboard/VrParamsProviderJni;->displayMetricsOverride:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private static updateNativePhoneParamsPointer(JLandroid/util/DisplayMetrics;F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePhoneParams",
            "displayMetrics",
            "borderSizeMeters"
        }
    .end annotation

    .line 185
    iget v2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, p2, Landroid/util/DisplayMetrics;->xdpi:F

    iget v5, p2, Landroid/util/DisplayMetrics;->ydpi:F

    move-wide v0, p0

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/vr/cardboard/VrParamsProviderJni;->nativeUpdateNativePhoneParamsPointer(JIIFFF)V

    return-void
.end method

.method private static writeDeviceParams(Landroid/content/Context;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "protoBytes"
        }
    .end annotation

    .line 94
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 98
    :try_start_0
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 100
    :goto_0
    invoke-interface {p0, p1}, Lcom/google/vr/cardboard/VrParamsProvider;->writeDeviceParams(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    return p1

    :goto_1
    :try_start_1
    const-string v0, "VrParamsProviderJni"

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error parsing protocol buffer: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    const/4 p0, 0x0

    return p0

    :goto_2
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    throw p1
.end method
