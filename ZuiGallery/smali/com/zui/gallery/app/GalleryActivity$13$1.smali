.class Lcom/zui/gallery/app/GalleryActivity$13$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/GalleryActivity$13;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/GalleryActivity$13;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity$13;)V
    .locals 0

    .line 1531
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13$1;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1534
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$13$1;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/GalleryActivity$13$1$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/GalleryActivity$13$1$1;-><init>(Lcom/zui/gallery/app/GalleryActivity$13$1;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    return-void
.end method
