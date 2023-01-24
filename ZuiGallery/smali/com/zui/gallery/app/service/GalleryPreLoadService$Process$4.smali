.class Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$4;
.super Ljava/lang/Object;
.source "GalleryPreLoadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->newTask()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$4;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 602
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$4;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    iget-object v0, v0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$500(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    move-object v7, v1

    .line 606
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$4;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$2100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 613
    invoke-static {}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$1300()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 614
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$4;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    const/4 v2, 0x1

    invoke-static {v1, v7, v2}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1400(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;Landroid/database/Cursor;Z)Lcom/zui/gallery/data/LocalMediaItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 621
    iget-object v2, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$4;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v2}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1500(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 622
    iget-object v2, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$4;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v2}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1600(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v7, :cond_0

    .line 631
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v0, "GalleryPreLoadService"

    const-string v1, " add newTask data thread  interrupted "

    .line 627
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    .line 631
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_3
    throw v0
.end method
