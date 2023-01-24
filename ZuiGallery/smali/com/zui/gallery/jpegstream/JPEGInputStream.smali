.class public Lcom/zui/gallery/jpegstream/JPEGInputStream;
.super Ljava/io/FilterInputStream;
.source "JPEGInputStream.java"


# instance fields
.field private JNIPointer:J

.field private mConfigChanged:Z

.field private mFormat:I

.field private mHeight:I

.field private mTmpBuffer:[B

.field private mValidConfig:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_jpegstream"

    .line 191
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->JNIPointer:J

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mValidConfig:Z

    .line 29
    iput-boolean p1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mConfigChanged:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mFormat:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 31
    iput-object v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mTmpBuffer:[B

    .line 32
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mWidth:I

    .line 33
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->JNIPointer:J

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mValidConfig:Z

    .line 29
    iput-boolean p1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mConfigChanged:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mFormat:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 31
    iput-object v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mTmpBuffer:[B

    .line 32
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mWidth:I

    .line 33
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mHeight:I

    .line 41
    invoke-virtual {p0, p2}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->setConfig(I)Z

    return-void
.end method

.method private applyConfigChange()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-boolean v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mConfigChanged:Z

    if-eqz v0, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->cleanup()V

    .line 166
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 167
    iget-object v2, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->in:Ljava/io/InputStream;

    iget v3, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mFormat:I

    invoke-direct {p0, v0, v2, v3}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->setup(Landroid/graphics/Point;Ljava/io/InputStream;I)I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    if-nez v2, :cond_0

    .line 176
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mWidth:I

    .line 177
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mHeight:I

    .line 178
    iput-boolean v1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mConfigChanged:Z

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error to reading jpeg headers."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments to read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private native cleanup()V
.end method

.method private native readDecodedBytes([BII)I
.end method

.method private native setup(Landroid/graphics/Point;Ljava/io/InputStream;I)I
.end method

.method private native skipDecodedBytes(I)I
.end method


# virtual methods
.method public available()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->cleanup()V

    .line 77
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 157
    :try_start_0
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 160
    throw v0
.end method

.method public getDimensions()Landroid/graphics/Point;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mValidConfig:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->applyConfigChange()V

    .line 64
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mWidth:I

    iget v2, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 83
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mTmpBuffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->read([BII)I

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mTmpBuffer:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v1, p2, p3

    .line 103
    array-length v2, p1

    if-gt v1, v2, :cond_4

    .line 108
    iget-boolean v1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mValidConfig:Z

    if-nez v1, :cond_0

    return v0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->applyConfigChange()V

    .line 114
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->readDecodedBytes([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->cleanup()V

    :cond_1
    if-gez p1, :cond_3

    const/4 p2, -0x4

    if-ne p1, p2, :cond_2

    const/4 p1, -0x1

    return p1

    .line 125
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error reading jpeg stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    .line 117
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->cleanup()V

    .line 119
    throw p1

    .line 104
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length p1, p1

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, " buffer length %d, offset %d, length %d"

    .line 104
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 133
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reset not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConfig(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v1, 0x104

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mFormat:I

    .line 56
    iput-boolean v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mValidConfig:Z

    .line 57
    iput-boolean v0, p0, Lcom/zui/gallery/jpegstream/JPEGInputStream;->mConfigChanged:Z

    return v0
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    and-long/2addr p1, v2

    long-to-int p1, p1

    .line 142
    invoke-direct {p0, p1}, Lcom/zui/gallery/jpegstream/JPEGInputStream;->skipDecodedBytes(I)I

    move-result p1

    if-gez p1, :cond_2

    const/4 p2, -0x4

    if-ne p1, p2, :cond_1

    return-wide v0

    .line 148
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error skipping jpeg stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    int-to-long p1, p1

    return-wide p1
.end method
