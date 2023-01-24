.class Lcom/zui/gallery/app/AlbumSetAddPage$5;
.super Ljava/lang/Object;
.source "AlbumSetAddPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 488
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dialog dismissed, mShouldShowProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$900(Lcom/zui/gallery/app/AlbumSetAddPage;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlbumSetAddPage"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$900(Lcom/zui/gallery/app/AlbumSetAddPage;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$700(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
