.class Lcom/zui/gallery/data/LocalAlbumSet$SyncLoader;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncLoader"
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
.field final synthetic this$0:Lcom/zui/gallery/data/LocalAlbumSet;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/data/LocalAlbumSet;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSet$SyncLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/LocalAlbumSet$1;)V
    .locals 0

    .line 1330
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/LocalAlbumSet$SyncLoader;-><init>(Lcom/zui/gallery/data/LocalAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 1330
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/LocalAlbumSet$SyncLoader;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 2

    const-string v0, "LogLocalAlbumSet"

    :try_start_0
    const-string/jumbo v1, "startSync"

    .line 1337
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet$SyncLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 1339
    invoke-static {v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1338
    invoke-static {v1, p1}, Lcom/zui/gallery/data/GroupBucketHelper;->syncGropMemberShipWithMediaStore(Landroid/content/ContentResolver;Lcom/zui/gallery/util/ThreadPool$JobContext;)V

    const-string p1, "endSync"

    .line 1340
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "LocalAlubmset  Synce exception "

    .line 1342
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
