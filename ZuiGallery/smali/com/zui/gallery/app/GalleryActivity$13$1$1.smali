.class Lcom/zui/gallery/app/GalleryActivity$13$1$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/GalleryActivity$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zui/gallery/app/GalleryActivity$13$1;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity$13$1;)V
    .locals 0

    .line 1534
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13$1$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 1534
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/GalleryActivity$13$1$1;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 0

    .line 1537
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13$1$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$1;

    iget-object p1, p1, Lcom/zui/gallery/app/GalleryActivity$13$1;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object p1, p1, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudUtils;->initAutoSyncCloudAlbumPath(Lcom/zui/gallery/app/GalleryApp;)V

    const/4 p1, 0x0

    return-object p1
.end method
