.class Lcom/google/vr/ndk/base/GvrLayoutImpl$3;
.super Ljava/lang/Object;
.source "GvrLayoutImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/GvrLayoutImpl;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$3;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$3;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->access$200(Lcom/google/vr/ndk/base/GvrLayoutImpl;)Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->onPause()V

    return-void
.end method
