.class Lcom/google/vr/ndk/base/FadeOverlayView$1;
.super Ljava/lang/Object;
.source "FadeOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/FadeOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/FadeOverlayView;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/FadeOverlayView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/google/vr/ndk/base/FadeOverlayView$1;->this$0:Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView$1;->this$0:Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-static {v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->access$000(Lcom/google/vr/ndk/base/FadeOverlayView;)V

    return-void
.end method
