.class Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;
.super Landroid/database/ContentObserver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupSyncNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1380
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 0

    monitor-enter p0

    .line 1385
    :try_start_0
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$400(Lcom/zui/gallery/app/AbstractGalleryActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1386
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$GroupSyncNotifier;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$500(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
