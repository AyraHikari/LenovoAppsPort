.class Lcom/zui/gallery/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/zui/gallery/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/TileImageView;)V
    .locals 1

    .line 594
    iput-object p1, p0, Lcom/zui/gallery/ui/TileImageView$TileUploader;->this$0:Lcom/zui/gallery/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/TileImageView;Lcom/zui/gallery/ui/TileImageView$1;)V
    .locals 0

    .line 594
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/TileImageView$TileUploader;-><init>(Lcom/zui/gallery/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/zui/gallery/glrenderer/GLCanvas;Z)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    move v1, v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_6

    .line 605
    iget-object v3, p0, Lcom/zui/gallery/ui/TileImageView$TileUploader;->this$0:Lcom/zui/gallery/ui/TileImageView;

    monitor-enter v3

    .line 606
    :try_start_0
    iget-object p2, p0, Lcom/zui/gallery/ui/TileImageView$TileUploader;->this$0:Lcom/zui/gallery/ui/TileImageView;

    invoke-static {p2}, Lcom/zui/gallery/ui/TileImageView;->access$300(Lcom/zui/gallery/ui/TileImageView;)Lcom/zui/gallery/ui/TileImageView$TileQueue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->pop()Lcom/zui/gallery/ui/TileImageView$Tile;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v4, "TileImageView"

    .line 608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "synchronized onGLIdle tile state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_3

    goto :goto_2

    .line 612
    :cond_3
    invoke-virtual {p2}, Lcom/zui/gallery/ui/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 613
    invoke-virtual {p2}, Lcom/zui/gallery/ui/TileImageView$Tile;->isLoaded()Z

    move-result v3

    const-string v4, "TileImageView"

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGLIdle tile state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget v4, p2, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 616
    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/TileImageView$Tile;->updateContent(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    if-nez v3, :cond_5

    .line 617
    invoke-virtual {p2, p1, v2, v2}, Lcom/zui/gallery/ui/TileImageView$Tile;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 610
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_2
    if-nez p2, :cond_7

    .line 621
    iget-object p1, p0, Lcom/zui/gallery/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7
    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    return v0
.end method
