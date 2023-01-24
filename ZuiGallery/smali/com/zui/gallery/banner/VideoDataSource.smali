.class public Lcom/zui/gallery/banner/VideoDataSource;
.super Landroid/media/MediaDataSource;
.source "VideoDataSource.java"


# instance fields
.field private videoBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/zui/gallery/banner/VideoDataSource;->videoBuffer:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoDataSource;->videoBuffer:[B

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/banner/VideoDataSource;->videoBuffer:[B

    array-length v1, v1

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const/4 p1, -0x1

    .line 25
    monitor-exit v0

    return p1

    :cond_0
    int-to-long v3, p5

    add-long v5, p1, v3

    cmp-long v7, v5, v1

    if-lez v7, :cond_1

    sub-long/2addr v5, v1

    sub-long/2addr v3, v5

    long-to-int p5, v3

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/banner/VideoDataSource;->videoBuffer:[B

    long-to-int p1, p1

    invoke-static {v1, p1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    monitor-exit v0

    return p5

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
