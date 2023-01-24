.class Lcom/zui/gallery/filtershow/FilterShowActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "FilterShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$3;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finish aciton isOnStop:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$3;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$100(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isScreenShotLaunch ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterShowActivity"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "is_gallery"

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 440
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish aciton isGallery:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string p1, "finish aciton for anther onCreate"

    .line 442
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$3;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$3;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$3;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 445
    sget-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$3;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$100(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "finish needRebound"

    .line 446
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$3;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->needRebound:Z

    :cond_2
    :goto_0
    return-void
.end method
