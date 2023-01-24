.class Lcom/google/vr/ndk/base/ExternalSurface$1;
.super Ljava/lang/Object;
.source "ExternalSurface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/ExternalSurface;-><init>(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/ExternalSurface;

.field final synthetic val$listener:Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/ExternalSurface;Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/vr/ndk/base/ExternalSurface$1;->this$0:Lcom/google/vr/ndk/base/ExternalSurface;

    iput-object p2, p0, Lcom/google/vr/ndk/base/ExternalSurface$1;->val$listener:Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/google/vr/ndk/base/ExternalSurface$1;->this$0:Lcom/google/vr/ndk/base/ExternalSurface;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/ExternalSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/ExternalSurface$1;->val$listener:Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;

    invoke-interface {v1, v0}, Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;->onSurfaceAvailable(Landroid/view/Surface;)V

    return-void

    .line 70
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/vr/ndk/base/ExternalSurface;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No valid Surface during onSurfaceAvailable callback. The native GvrContext might have been shut down already."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
