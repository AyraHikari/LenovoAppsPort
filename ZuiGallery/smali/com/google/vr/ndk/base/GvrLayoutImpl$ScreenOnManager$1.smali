.class Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$1;
.super Ljava/lang/Object;
.source "GvrLayoutImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

.field final synthetic val$newIsEnabled:Z


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$newIsEnabled"
        }
    .end annotation

    .line 1287
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$1;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    iput-boolean p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$1;->val$newIsEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1290
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$1;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->access$600(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$1;->val$newIsEnabled:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$1;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->access$602(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;Z)Z

    .line 1294
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$1;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->access$700(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;)V

    return-void
.end method
