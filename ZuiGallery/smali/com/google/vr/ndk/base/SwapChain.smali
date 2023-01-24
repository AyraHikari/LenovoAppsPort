.class public Lcom/google/vr/ndk/base/SwapChain;
.super Ljava/lang/Object;
.source "SwapChain.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentFrame:I

.field private final frames:[Lcom/google/vr/ndk/base/Frame;

.field private nativeSwapChain:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/google/vr/ndk/base/SwapChain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/SwapChain;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeSwapChain"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/vr/ndk/base/Frame;

    .line 45
    iput-object p1, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    .line 46
    new-instance p2, Lcom/google/vr/ndk/base/Frame;

    invoke-direct {p2}, Lcom/google/vr/ndk/base/Frame;-><init>()V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 47
    iget-object p1, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    new-instance p2, Lcom/google/vr/ndk/base/Frame;

    invoke-direct {p2}, Lcom/google/vr/ndk/base/Frame;-><init>()V

    const/4 v1, 0x1

    aput-object p2, p1, v1

    .line 48
    iput v0, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    return-void
.end method


# virtual methods
.method public acquireFrame()Lcom/google/vr/ndk/base/Frame;
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/Frame;->getNativeFrame()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/Frame;->getNativeFrame()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 87
    iget v0, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    .line 88
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainAcquireFrame(J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    iget v3, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/ndk/base/Frame;->setNativeFrame(J)V

    .line 93
    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    iget v1, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    aget-object v0, v0, v1

    return-object v0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Previous frame not submitted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/google/vr/ndk/base/SwapChain;->TAG:Ljava/lang/String;

    const-string v1, "SwapChain.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/SwapChain;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBufferCount()I
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainGetBufferCount(J)I

    move-result v0

    return v0
.end method

.method public getBufferSize(ILandroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferIndex",
            "sizeOut"
        }
    .end annotation

    .line 112
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainGetBufferSize(JILandroid/graphics/Point;)V

    return-void
.end method

.method public resizeBuffer(ILandroid/graphics/Point;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferIndex",
            "newSize"
        }
    .end annotation

    .line 125
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1, p1, v2, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainResizeBuffer(JIII)V

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 130
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 131
    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainDestroy(J)V

    .line 132
    iput-wide v2, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    :cond_0
    return-void
.end method
