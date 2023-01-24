.class public Lcom/google/vr/cardboard/ExternalSurfaceManager;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isAttachedToGlContext:Z

.field private nextID:I

.field private volatile surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

.field private final surfaceDataUpdateLock:Ljava/lang/Object;

.field private final updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nativeSurfaceManager"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$1;

    invoke-direct {v0, p1, p2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$1;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateSurfaceCallback"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nextID:I

    .line 82
    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    return-void
.end method

.method static synthetic access$000(JIIJ[F)V
    .locals 0

    .line 23
    invoke-static/range {p0 .. p6}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nativeUpdateSurface(JIIJ[F)V

    return-void
.end method

.method private createExternalSurfaceImpl(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    new-instance v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v1, v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;)V

    .line 139
    iget v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nextID:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nextID:I

    .line 140
    iget-object v3, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-direct {v5, v2, p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;-><init>(ILcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iput-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 142
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static native nativeUpdateSurface(JIIJ[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeSurfaceManager",
            "surfaceId",
            "textureId",
            "timestamp",
            "transformMatrix"
        }
    .end annotation
.end method


# virtual methods
.method public consumerAttachToCurrentGLContext()V
    .locals 2

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->isAttachedToGlContext:Z

    .line 201
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 202
    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 203
    invoke-virtual {v1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeAttachToCurrentGLContext()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public consumerDetachFromCurrentGLContext()V
    .locals 2

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->isAttachedToGlContext:Z

    .line 215
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 216
    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 217
    invoke-virtual {v1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeDetachFromCurrentGLContext()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public consumerUpdateManagedSurfaces()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 233
    iget-boolean v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->isAttachedToGlContext:Z

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 237
    invoke-virtual {v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeAttachToCurrentGLContext()V

    .line 238
    iget-object v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    invoke-virtual {v2, v3}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->updateSurfaceTexture(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 243
    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    invoke-virtual {v1, v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->shutdown(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public createExternalSurface()I
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->createExternalSurfaceImpl(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)I

    move-result v0

    return v0
.end method

.method public createExternalSurface(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "surfaceListener",
            "frameListener",
            "handler"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 132
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->createExternalSurfaceImpl(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)I

    move-result p1

    return p1

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface listener and handler must both be non-null for external Surface creation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSurface(I)Landroid/view/Surface;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 185
    iget-object v1, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-virtual {p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->getSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 188
    :cond_0
    sget-object v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->TAG:Ljava/lang/String;

    const/16 v1, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Surface with ID "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist, returning null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSurfaceCount()I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public releaseExternalSurface(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    new-instance v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v1, v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;)V

    .line 154
    iget-object v2, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    if-eqz v2, :cond_0

    .line 156
    iget-object v3, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iput-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    goto :goto_0

    .line 159
    :cond_0
    sget-object v1, Lcom/google/vr/cardboard/ExternalSurfaceManager;->TAG:Ljava/lang/String;

    const/16 v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Not releasing nonexistent surface ID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shutdown()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 93
    new-instance v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>()V

    iput-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 94
    iget-object v2, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 95
    iget-object v4, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    invoke-virtual {v3, v4}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->shutdown(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 98
    iget-object v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    invoke-virtual {v2, v3}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->shutdown(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V

    goto :goto_1

    .line 100
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
