.class public Lcom/google/vr/ndk/base/BufferViewportList;
.super Ljava/lang/Object;
.source "BufferViewportList.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field nativeBufferViewportList:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/google/vr/ndk/base/BufferViewportList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/BufferViewportList;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferViewportList"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/google/vr/ndk/base/BufferViewportList;->TAG:Ljava/lang/String;

    const-string v1, "BufferViewportList.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/BufferViewportList;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get(ILcom/google/vr/ndk/base/BufferViewport;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "bufferViewportOut"
        }
    .end annotation

    .line 74
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    iget-wide v2, p2, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListGetItem(JIJ)V

    return-void
.end method

.method public set(ILcom/google/vr/ndk/base/BufferViewport;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "bufferViewport"
        }
    .end annotation

    .line 86
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    iget-wide v2, p2, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListSetItem(JIJ)V

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 61
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 62
    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListDestroy(J)V

    .line 63
    iput-wide v2, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    :cond_0
    return-void
.end method

.method public size()I
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListGetSize(J)I

    move-result v0

    return v0
.end method
