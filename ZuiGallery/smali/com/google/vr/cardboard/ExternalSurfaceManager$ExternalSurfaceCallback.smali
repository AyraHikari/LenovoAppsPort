.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalSurfaceCallback"
.end annotation


# instance fields
.field private final frameListener:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final surfaceListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceListener",
            "frameListener",
            "handler"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->surfaceListener:Ljava/lang/Runnable;

    .line 279
    iput-object p2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->frameListener:Ljava/lang/Runnable;

    .line 280
    iput-object p3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancelPosts()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->surfaceListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->frameListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 306
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public postOnFrameAvailable()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->frameListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public postOnSurfaceAvailable()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->surfaceListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
