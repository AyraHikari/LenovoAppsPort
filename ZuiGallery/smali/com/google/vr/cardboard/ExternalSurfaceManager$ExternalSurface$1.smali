.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeAttachToCurrentGLContext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "st"
        }
    .end annotation

    .line 351
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$200(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 354
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$300(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 355
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$300(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->postOnFrameAvailable()V

    :cond_0
    return-void
.end method
