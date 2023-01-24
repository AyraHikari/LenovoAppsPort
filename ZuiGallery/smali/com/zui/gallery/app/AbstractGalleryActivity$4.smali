.class Lcom/zui/gallery/app/AbstractGalleryActivity$4;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$4;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1026
    :try_start_0
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$4;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    check-cast p2, Lcom/zui/gallery/app/BatchService$LocalBinder;

    invoke-virtual {p2}, Lcom/zui/gallery/app/BatchService$LocalBinder;->getService()Lcom/zui/gallery/app/BatchService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$202(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/BatchService;)Lcom/zui/gallery/app/BatchService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1028
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbstractGalleryActivity"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$4;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$202(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/BatchService;)Lcom/zui/gallery/app/BatchService;

    .line 1030
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$4;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$302(Lcom/zui/gallery/app/AbstractGalleryActivity;Z)Z

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1037
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$4;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$202(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/BatchService;)Lcom/zui/gallery/app/BatchService;

    return-void
.end method
