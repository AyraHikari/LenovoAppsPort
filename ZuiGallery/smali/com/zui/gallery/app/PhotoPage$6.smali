.class Lcom/zui/gallery/app/PhotoPage$6;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 2297
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$6;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 0

    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 2

    .line 2310
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$6;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onProgressComplete(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressStart()V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0

    return-void
.end method
