.class public final Lcom/google/vr/sdk/widgets/video/deps/fT;
.super Ljava/lang/Object;
.source "CacheDataSink.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fT$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x5000


# instance fields
.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fS;

.field private final c:J

.field private final d:I

.field private e:Lcom/google/vr/sdk/widgets/video/deps/fy;

.field private f:Ljava/io/File;

.field private g:Ljava/io/OutputStream;

.field private h:Ljava/io/FileOutputStream;

.field private i:J

.field private j:J

.field private k:Lcom/google/vr/sdk/widgets/video/deps/gF;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;J)V
    .locals 1

    const/16 v0, 0x5000

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/fT;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;JI)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;JI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fS;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->b:Lcom/google/vr/sdk/widgets/video/deps/fS;

    .line 5
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->c:J

    .line 6
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->d:I

    return-void
.end method

.method private b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->c:J

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->j:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    .line 45
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->b:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->j:J

    add-long/2addr v4, v0

    invoke-interface/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fS;->a(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->f:Ljava/io/File;

    .line 46
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->f:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->h:Ljava/io/FileOutputStream;

    .line 47
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->d:I

    if-lez v1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->k:Lcom/google/vr/sdk/widgets/video/deps/gF;

    if-nez v1, :cond_1

    .line 49
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gF;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->h:Ljava/io/FileOutputStream;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->d:I

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gF;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->k:Lcom/google/vr/sdk/widgets/video/deps/gF;

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gF;->a(Ljava/io/OutputStream;)V

    .line 51
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->k:Lcom/google/vr/sdk/widgets/video/deps/gF;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->g:Ljava/io/OutputStream;

    goto :goto_2

    .line 52
    :cond_2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->g:Ljava/io/OutputStream;

    :goto_2
    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->i:J

    return-void
.end method

.method private c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->h:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->g:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    .line 62
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->g:Ljava/io/OutputStream;

    .line 63
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->f:Ljava/io/File;

    .line 64
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->f:Ljava/io/File;

    .line 66
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->b:Lcom/google/vr/sdk/widgets/video/deps/fS;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fS;->a(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception v0

    .line 69
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->g:Ljava/io/OutputStream;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    .line 70
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->g:Ljava/io/OutputStream;

    .line 71
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->f:Ljava/io/File;

    .line 72
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->f:Ljava/io/File;

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 76
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fT$a;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fT;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fT$a;

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fT$a;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fT$a;
        }
    .end annotation

    .line 8
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fy;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->j:J

    .line 14
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fT;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fT$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fT$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fT$a;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 23
    :try_start_0
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->i:J

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 24
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fT;->c()V

    .line 25
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fT;->b()V

    :cond_1
    sub-int v1, p3, v0

    int-to-long v1, v1

    .line 26
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->c:J

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->i:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 27
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->g:Ljava/io/OutputStream;

    add-int v3, p2, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v1

    .line 29
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->i:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->i:J

    .line 30
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->j:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fT;->j:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/fT$a;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fT$a;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_2
    return-void
.end method
