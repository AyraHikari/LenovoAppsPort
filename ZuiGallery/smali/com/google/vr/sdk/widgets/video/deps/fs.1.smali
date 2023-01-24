.class public final Lcom/google/vr/sdk/widgets/video/deps/fs;
.super Ljava/lang/Object;
.source "ContentDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fs$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fs;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/net/Uri;

.field private d:Landroid/content/res/AssetFileDescriptor;

.field private e:Ljava/io/InputStream;

.field private f:J

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fs;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fs;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->a:Landroid/content/ContentResolver;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fs$a;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v6, p3

    .line 36
    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->e:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_4

    .line 42
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    return v3

    .line 43
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fs$a;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fs$a;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 45
    :cond_4
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 46
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    .line 47
    :cond_5
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz p2, :cond_6

    .line 48
    invoke-interface {p2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;I)V

    :cond_6
    return p1

    :catch_0
    move-exception p1

    .line 40
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/fs$a;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fs$a;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fs$a;
        }
    .end annotation

    .line 7
    :try_start_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->c:Landroid/net/Uri;

    .line 8
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->a:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_5

    .line 11
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->e:Ljava/io/InputStream;

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->e:Ljava/io/InputStream;

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 14
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    .line 16
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 17
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 22
    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    goto :goto_0

    :cond_1
    sub-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:Z

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_3

    .line 29
    invoke-interface {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    .line 30
    :cond_3
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    return-wide v0

    .line 15
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 10
    :cond_5
    new-instance p1, Ljava/io/FileNotFoundException;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->c:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not open file descriptor for: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 26
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fs$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fs$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fs$a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->c:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->e:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->e:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :cond_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->e:Ljava/io/InputStream;

    .line 55
    :try_start_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :cond_1
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    .line 58
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:Z

    if-eqz v0, :cond_2

    .line 59
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:Z

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 63
    :try_start_2
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fs$a;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/fs$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :goto_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    .line 65
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:Z

    if-eqz v0, :cond_3

    .line 66
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:Z

    .line 67
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_3

    .line 68
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 71
    :try_start_3
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fs$a;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/fs$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :goto_1
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->e:Ljava/io/InputStream;

    .line 73
    :try_start_4
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 74
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    :cond_4
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    .line 76
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:Z

    if-eqz v0, :cond_5

    .line 77
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:Z

    .line 78
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_5

    .line 79
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    .line 86
    :cond_5
    throw v2

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 81
    :try_start_5
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fs$a;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/fs$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 82
    :goto_2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Landroid/content/res/AssetFileDescriptor;

    .line 83
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:Z

    if-eqz v0, :cond_6

    .line 84
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:Z

    .line 85
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_6

    .line 86
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_6
    throw v2
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->c:Landroid/net/Uri;

    return-object v0
.end method
