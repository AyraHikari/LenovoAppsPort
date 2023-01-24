.class public Lcom/meicam/sdk/NvsCaptureAudioFx;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsCaptureAudioFx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeGetBuiltinCaptureAudioFxName(J)Ljava/lang/String;
.end method

.method private native nativeGetIndex(J)I
.end method


# virtual methods
.method public getBuiltinCaptureAudioFxName()Ljava/lang/String;
    .locals 2

    .line 45
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 46
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureAudioFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureAudioFx;->nativeGetBuiltinCaptureAudioFxName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 2

    .line 59
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 60
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureAudioFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureAudioFx;->nativeGetIndex(J)I

    move-result v0

    return v0
.end method
