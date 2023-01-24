.class Lcom/google/vr/ndk/base/ExternalSurface$2;
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

    .line 80
    iput-object p2, p0, Lcom/google/vr/ndk/base/ExternalSurface$2;->val$listener:Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/vr/ndk/base/ExternalSurface$2;->val$listener:Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;

    invoke-interface {v0}, Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;->onFrameAvailable()V

    return-void
.end method
