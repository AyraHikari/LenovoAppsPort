.class public final Lcom/google/vr/sdk/widgets/video/deps/fo;
.super Ljava/lang/Object;
.source "AssetDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fo$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/AssetManager;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/net/Uri;

.field private d:Ljava/io/InputStream;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fo;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

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
            "Lcom/google/vr/sdk/widgets/video/deps/fo;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->a:Landroid/content/res/AssetManager;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fo$a;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:J

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

    .line 34
    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_4

    .line 40
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    return v3

    .line 41
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fo$a;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fo$a;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 43
    :cond_4
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 44
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:J

    .line 45
    :cond_5
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz p2, :cond_6

    .line 46
    invoke-interface {p2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;I)V

    :cond_6
    return p1

    :catch_0
    move-exception p1

    .line 38
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/fo$a;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fo$a;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fo$a;
        }
    .end annotation

    .line 7
    :try_start_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->c:Landroid/net/Uri;

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "/"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->d:Ljava/io/InputStream;

    .line 14
    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 15
    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_5

    .line 17
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 18
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:J

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v0, v5

    if-nez v0, :cond_3

    .line 21
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:Z

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_4

    .line 27
    invoke-interface {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    .line 28
    :cond_4
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:J

    return-wide v0

    .line 16
    :cond_5
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fo$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fo$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fo$a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->c:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->d:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->d:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->d:Ljava/io/InputStream;

    .line 53
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:Z

    if-eqz v0, :cond_1

    .line 54
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:Z

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 58
    :try_start_1
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fo$a;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/fo$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->d:Ljava/io/InputStream;

    .line 60
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:Z

    if-eqz v0, :cond_2

    .line 61
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:Z

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_2
    throw v2
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->c:Landroid/net/Uri;

    return-object v0
.end method
