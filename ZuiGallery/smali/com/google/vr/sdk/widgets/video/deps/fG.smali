.class public final Lcom/google/vr/sdk/widgets/video/deps/fG;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fG$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fG;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/io/RandomAccessFile;

.field private c:Landroid/net/Uri;

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fG;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fG;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->a:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fG$a;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 24
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->b:Ljava/io/RandomAccessFile;

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    .line 29
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->d:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->d:J

    .line 30
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->a:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz p2, :cond_2

    .line 31
    invoke-interface {p2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;I)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/fG$a;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fG$a;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fG$a;
        }
    .end annotation

    .line 6
    :try_start_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->c:Landroid/net/Uri;

    .line 7
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->b:Ljava/io/RandomAccessFile;

    .line 8
    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 10
    :cond_0
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    :goto_0
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->e:Z

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->a:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    .line 19
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->d:J

    return-wide v0

    .line 12
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fG$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fG$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fG$a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->c:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->b:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->b:Ljava/io/RandomAccessFile;

    .line 38
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->e:Z

    if-eqz v0, :cond_1

    .line 39
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->e:Z

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->a:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 43
    :try_start_1
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fG$a;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/fG$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->b:Ljava/io/RandomAccessFile;

    .line 45
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->e:Z

    if-eqz v0, :cond_2

    .line 46
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->e:Z

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->a:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_2

    .line 48
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_2
    throw v2
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fG;->c:Landroid/net/Uri;

    return-object v0
.end method
