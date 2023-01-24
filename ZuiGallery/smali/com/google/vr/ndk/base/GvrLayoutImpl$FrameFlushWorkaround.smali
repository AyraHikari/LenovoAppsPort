.class Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;
.super Ljava/lang/Object;
.source "GvrLayoutImpl.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrLayoutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameFlushWorkaround"
.end annotation


# static fields
.field private static final DEFAULT_FRAME_FLUSH_COUNT:I = 0x5


# instance fields
.field private final choreographer:Landroid/view/Choreographer;

.field private framesRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;->choreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vsync"
        }
    .end annotation

    .line 954
    iget p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;->framesRemaining:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;->framesRemaining:I

    if-lez p1, :cond_0

    .line 955
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 945
    iget v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;->framesRemaining:I

    if-lez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    const/4 v0, 0x5

    .line 948
    iput v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;->framesRemaining:I

    .line 949
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
