.class public Lcom/google/vr/ndk/base/BufferViewport;
.super Ljava/lang/Object;
.source "BufferViewport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/BufferViewport$Reprojection;,
        Lcom/google/vr/ndk/base/BufferViewport$EyeType;
    }
.end annotation


# static fields
.field public static final BUFFER_INDEX_EXTERNAL_SURFACE:I = -0x1

.field public static final EXTERNAL_SURFACE_ID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field nativeBufferViewport:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/google/vr/ndk/base/BufferViewport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/BufferViewport;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferViewport"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 75
    instance-of v0, p1, Lcom/google/vr/ndk/base/BufferViewport;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 78
    :cond_0
    check-cast p1, Lcom/google/vr/ndk/base/BufferViewport;

    .line 79
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    iget-wide v2, p1, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportEqual(JJ)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/google/vr/ndk/base/BufferViewport;->TAG:Ljava/lang/String;

    const-string v1, "BufferViewport.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/BufferViewport;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getExternalSurfaceId()I
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetExternalSurfaceId(J)I

    move-result v0

    return v0
.end method

.method public getOpacity()F
    .locals 2

    .line 273
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetOpacity(J)F

    move-result v0

    return v0
.end method

.method public getReprojection()I
    .locals 2

    .line 241
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetReprojection(J)I

    move-result v0

    return v0
.end method

.method public getSourceBufferIndex()I
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetSourceBufferIndex(J)I

    move-result v0

    return v0
.end method

.method public getSourceFov(Landroid/graphics/RectF;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceFovOut"
        }
    .end annotation

    .line 134
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetSourceFov(JLandroid/graphics/RectF;)V

    return-void
.end method

.method public getSourceUv(Landroid/graphics/RectF;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceUvOut"
        }
    .end annotation

    .line 115
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetSourceUv(JLandroid/graphics/RectF;)V

    return-void
.end method

.method public getTargetEye()I
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetTargetEye(J)I

    move-result v0

    return v0
.end method

.method public getTransform([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    .line 155
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetTransform(J[F)V

    return-void
.end method

.method public getVignetteFraction(Landroid/graphics/PointF;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fractionOut"
        }
    .end annotation

    const v0, 0x3d23d70a    # 0.04f

    .line 298
    invoke-virtual {p1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 299
    sget-object p1, Lcom/google/vr/ndk/base/BufferViewport;->TAG:Ljava/lang/String;

    const-string v0, "getVignetteFraction requires experimental GVR SDK"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setExternalSurface(Lcom/google/vr/ndk/base/ExternalSurface;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 231
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/ExternalSurface;->getNativeExternalSurface()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 231
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetExternalSurface(JJ)V

    return-void
.end method

.method public setExternalSurfaceId(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetExternalSurfaceId(JI)V

    return-void
.end method

.method public setOpacity(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opacity"
        }
    .end annotation

    .line 282
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetOpacity(JF)V

    return-void
.end method

.method public setReprojection(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reprojection"
        }
    .end annotation

    .line 254
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetReprojection(JI)V

    return-void
.end method

.method public setSourceBufferIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 196
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetSourceBufferIndex(JI)V

    return-void
.end method

.method public setSourceFov(Landroid/graphics/RectF;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceFov"
        }
    .end annotation

    .line 143
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetSourceFov(JFFFF)V

    return-void
.end method

.method public setSourceLayer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layerIndex"
        }
    .end annotation

    .line 264
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetSourceLayer(JI)V

    return-void
.end method

.method public setSourceUv(Landroid/graphics/RectF;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceUv"
        }
    .end annotation

    .line 124
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetSourceUv(JFFFF)V

    return-void
.end method

.method public setTargetEye(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eye"
        }
    .end annotation

    .line 180
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetTargetEye(JI)V

    return-void
.end method

.method public setTransform([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    .line 166
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetTransform(J[F)V

    return-void
.end method

.method public setVignetteFraction(Landroid/graphics/PointF;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fraction"
        }
    .end annotation

    .line 313
    sget-object p1, Lcom/google/vr/ndk/base/BufferViewport;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setVignetteFraction requires experimental GVR SDK"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 103
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 104
    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportDestroy(J)V

    .line 105
    iput-wide v2, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    :cond_0
    return-void
.end method
