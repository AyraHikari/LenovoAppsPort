.class Lcom/zui/gallery/filtershow/FilterShowActivity$24;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field final synthetic val$mKeyguard:Landroid/app/KeyguardManager;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/app/KeyguardManager;)V
    .locals 0

    .line 3922
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24;->val$mKeyguard:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3925
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24;->val$mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 3926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop isScreenShotLaunch ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isOnStop ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$100(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isLocked ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FilterShowActivity"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$100(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2900(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const-string v0, "Finish for onstop"

    .line 3928
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 3931
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$24;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$3400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$24$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$24$1;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity$24;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
