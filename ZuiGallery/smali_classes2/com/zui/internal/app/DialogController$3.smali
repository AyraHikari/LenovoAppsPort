.class Lcom/zui/internal/app/DialogController$3;
.super Landroid/view/OrientationEventListener;
.source "DialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/DialogController;->prepareWatchOrientation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/DialogController;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/DialogController;Landroid/content/Context;I)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/zui/internal/app/DialogController$3;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 433
    iget-object p1, p0, Lcom/zui/internal/app/DialogController$3;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {p1}, Lcom/zui/internal/app/DialogController;->access$600(Lcom/zui/internal/app/DialogController;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$3;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->access$700(Lcom/zui/internal/app/DialogController;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 444
    invoke-static {}, Lcom/zui/internal/app/DialogController;->access$800()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged:mCancelableOnOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/internal/app/DialogController$3;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {v1}, Lcom/zui/internal/app/DialogController;->access$900(Lcom/zui/internal/app/DialogController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object p1, p0, Lcom/zui/internal/app/DialogController$3;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {p1}, Lcom/zui/internal/app/DialogController;->access$900(Lcom/zui/internal/app/DialogController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$3;->this$0:Lcom/zui/internal/app/DialogController;

    iget-object p1, p1, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of p1, p1, Landroid/app/Dialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$3;->this$0:Lcom/zui/internal/app/DialogController;

    iget-object p1, p1, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 447
    :try_start_0
    iget-object p1, p0, Lcom/zui/internal/app/DialogController$3;->this$0:Lcom/zui/internal/app/DialogController;

    iget-object p1, p1, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    invoke-static {}, Lcom/zui/internal/app/DialogController;->access$800()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IllegalArgumentException: can not dismiss dialog"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
