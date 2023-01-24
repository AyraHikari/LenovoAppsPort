.class public Lcom/zui/gallery/jpegstream/JPEGOutputStream;
.super Ljava/io/FilterOutputStream;
.source "JPEGOutputStream.java"


# instance fields
.field private JNIPointer:J

.field private mConfigChanged:Z

.field private mFormat:I

.field private mHeight:I

.field private mQuality:I

.field private mTmpBuffer:[B

.field private mValidConfig:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_jpegstream"

    .line 142
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->JNIPointer:J

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 25
    iput-object p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mTmpBuffer:[B

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mWidth:I

    .line 27
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mHeight:I

    .line 28
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mQuality:I

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mFormat:I

    .line 30
    iput-boolean p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mValidConfig:Z

    .line 31
    iput-boolean p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mConfigChanged:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IIII)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->JNIPointer:J

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 25
    iput-object p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mTmpBuffer:[B

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mWidth:I

    .line 27
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mHeight:I

    .line 28
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mQuality:I

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mFormat:I

    .line 30
    iput-boolean p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mValidConfig:Z

    .line 31
    iput-boolean p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mConfigChanged:Z

    .line 40
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->setConfig(IIII)Z

    return-void
.end method

.method private native cleanup()V
.end method

.method private native setup(Ljava/io/OutputStream;IIII)I
.end method

.method private native writeInputBytes([BII)I
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->cleanup()V

    .line 76
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    throw v0
.end method

.method public setConfig(IIII)Z
    .locals 3

    const/16 v0, 0x64

    .line 45
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v1, 0x0

    if-eq p4, v0, :cond_0

    const/16 v2, 0x104

    if-eq p4, v2, :cond_0

    const/4 v2, 0x3

    if-eq p4, v2, :cond_0

    const/4 v2, 0x4

    if-eq p4, v2, :cond_0

    return v1

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 60
    iput p1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mWidth:I

    .line 61
    iput p2, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mHeight:I

    .line 62
    iput p4, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mFormat:I

    .line 63
    iput p3, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mQuality:I

    .line 64
    iput-boolean v0, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mValidConfig:Z

    .line 65
    iput-boolean v0, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mConfigChanged:Z

    return v0

    :cond_1
    return v1
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mTmpBuffer:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 123
    invoke-virtual {p0, v0}, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v1, p2, p3

    .line 81
    array-length v2, p1

    if-gt v1, v2, :cond_6

    .line 86
    iget-boolean v1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mValidConfig:Z

    if-nez v1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-boolean v1, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mConfigChanged:Z

    if-eqz v1, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->cleanup()V

    .line 91
    iget-object v3, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->out:Ljava/io/OutputStream;

    iget v4, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mWidth:I

    iget v5, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mHeight:I

    iget v6, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mFormat:I

    iget v7, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mQuality:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->setup(Ljava/io/OutputStream;IIII)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_1

    .line 100
    iput-boolean v0, p0, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->mConfigChanged:Z

    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error to writing jpeg headers."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad arguments to write"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_3
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->writeInputBytes([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p1, :cond_4

    .line 107
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->cleanup()V

    :cond_4
    if-ltz p1, :cond_5

    return-void

    .line 111
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error writing jpeg stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 107
    invoke-direct {p0}, Lcom/zui/gallery/jpegstream/JPEGOutputStream;->cleanup()V

    .line 109
    throw p1

    .line 82
    :cond_6
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length p1, p1

    .line 84
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

    .line 82
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
