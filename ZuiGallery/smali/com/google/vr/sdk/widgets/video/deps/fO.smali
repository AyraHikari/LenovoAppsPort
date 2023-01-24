.class public final Lcom/google/vr/sdk/widgets/video/deps/fO;
.super Ljava/lang/Object;
.source "RawResourceDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fO$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "rawresource"


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fO;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/net/Uri;

.field private e:Landroid/content/res/AssetFileDescriptor;

.field private f:Ljava/io/InputStream;

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fO;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

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
            "Lcom/google/vr/sdk/widgets/video/deps/fO;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->b:Landroid/content/res/Resources;

    .line 6
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    return-void
.end method

.method public static a(I)Landroid/net/Uri;
    .locals 3

    const-string v0, "rawresource:///"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fO$a;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 35
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->g:J

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

    .line 38
    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->f:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_4

    .line 44
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->g:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    return v3

    .line 45
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fO$a;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fO$a;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 47
    :cond_4
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->g:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 48
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->g:J

    .line 49
    :cond_5
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz p2, :cond_6

    .line 50
    invoke-interface {p2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;I)V

    :cond_6
    return p1

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/fO$a;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fO$a;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fO$a;
        }
    .end annotation

    .line 8
    :try_start_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->d:Landroid/net/Uri;

    const-string v1, "rawresource"

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_4

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    :try_start_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->b:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    .line 16
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->f:Ljava/io/InputStream;

    .line 17
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->f:Ljava/io/InputStream;

    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 19
    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 21
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 22
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->g:J

    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    sub-long v2, v0, v2

    :goto_0
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->g:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->h:Z

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_2

    .line 31
    invoke-interface {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    .line 32
    :cond_2
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->g:J

    return-wide v0

    .line 20
    :cond_3
    :try_start_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 14
    :catch_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fO$a;

    const-string v0, "Resource identifier must be an integer."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fO$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fO$a;

    const-string v0, "URI must use scheme rawresource"

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fO$a;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 28
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fO$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fO$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fO$a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->d:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->f:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->f:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :cond_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->f:Ljava/io/InputStream;

    .line 57
    :try_start_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_1
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    .line 60
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->h:Z

    if-eqz v0, :cond_2

    .line 61
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->h:Z

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 65
    :try_start_2
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fO$a;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/fO$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :goto_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    .line 67
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->h:Z

    if-eqz v0, :cond_3

    .line 68
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->h:Z

    .line 69
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_3

    .line 70
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 73
    :try_start_3
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fO$a;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/fO$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :goto_1
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->f:Ljava/io/InputStream;

    .line 75
    :try_start_4
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 76
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 77
    :cond_4
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    .line 78
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->h:Z

    if-eqz v0, :cond_5

    .line 79
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->h:Z

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_5

    .line 81
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    .line 88
    :cond_5
    throw v2

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 83
    :try_start_5
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fO$a;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/fO$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 84
    :goto_2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->e:Landroid/content/res/AssetFileDescriptor;

    .line 85
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->h:Z

    if-eqz v0, :cond_6

    .line 86
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->h:Z

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_6

    .line 88
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_6
    throw v2
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fO;->d:Landroid/net/Uri;

    return-object v0
.end method
