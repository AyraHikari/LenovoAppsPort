.class public Lcom/google/vr/ndk/base/BufferSpec;
.super Ljava/lang/Object;
.source "BufferSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/BufferSpec$DepthStencilFormat;,
        Lcom/google/vr/ndk/base/BufferSpec$ColorFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field nativeBufferSpec:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/google/vr/ndk/base/BufferSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/BufferSpec;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferSpec"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    return-void
.end method

.method public static isValidColorFormat(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidDepthStencilFormat(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/google/vr/ndk/base/BufferSpec;->TAG:Ljava/lang/String;

    const-string v1, "BufferSpec.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/BufferSpec;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getSamples()I
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecGetSamples(J)I

    move-result v0

    return v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferSizeOut"
        }
    .end annotation

    .line 96
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecGetSize(JLandroid/graphics/Point;)V

    return-void
.end method

.method public setColorFormat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/google/vr/ndk/base/BufferSpec;->isValidColorFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecSetColorFormat(JI)V

    return-void

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid color format."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDepthStencilFormat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lcom/google/vr/ndk/base/BufferSpec;->isValidDepthStencilFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecSetDepthStencilFormat(JI)V

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid depth-stencil format."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMultiviewLayers(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numLayers"
        }
    .end annotation

    .line 161
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecSetMultiviewLayers(JI)V

    return-void
.end method

.method public setSamples(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "samples"
        }
    .end annotation

    .line 124
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecSetSamples(JI)V

    return-void
.end method

.method public setSize(Landroid/graphics/Point;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .line 105
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecSetSize(JII)V

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 83
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 84
    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecDestroy(J)V

    .line 85
    iput-wide v2, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    :cond_0
    return-void
.end method
