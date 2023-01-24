.class Lcom/zui/gallery/app/GalleryActivity$3;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$3;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "GalleryActivity"

    const-string v0, "cloudtest onServiceConnected"

    .line 213
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$3;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/cloud/CloudManager;->setIBinder(Landroid/os/IBinder;)V

    .line 215
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$3;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/GalleryActivity$3;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/cloud/CloudManager;->registerSyncListener(Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;)V

    .line 217
    new-instance p1, Lcom/zui/gallery/app/GalleryActivity$3$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/GalleryActivity$3$1;-><init>(Lcom/zui/gallery/app/GalleryActivity$3;)V

    .line 225
    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity$3$1;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "GalleryActivity"

    const-string v0, "cloudtest onServiceDisconnected finish"

    .line 230
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$3;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/cloud/CloudManager;->setIBinder(Landroid/os/IBinder;)V

    return-void
.end method
