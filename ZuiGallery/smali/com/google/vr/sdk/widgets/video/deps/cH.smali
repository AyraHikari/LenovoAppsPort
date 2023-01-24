.class public abstract Lcom/google/vr/sdk/widgets/video/deps/cH;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cH$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/cB;"
    }
.end annotation


# static fields
.field private static final a:I = 0x20000


# instance fields
.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/gD;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fS;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/fV;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/fV;

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private h:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private volatile i:I

.field private volatile j:I

.field private volatile k:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/cC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->b:Landroid/net/Uri;

    .line 3
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/cC;->a()Lcom/google/vr/sdk/widgets/video/deps/fS;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->d:Lcom/google/vr/sdk/widgets/video/deps/fS;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/cC;->a(Z)Lcom/google/vr/sdk/widgets/video/deps/fV;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->e:Lcom/google/vr/sdk/widgets/video/deps/fV;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/cC;->a(Z)Lcom/google/vr/sdk/widgets/video/deps/fV;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->f:Lcom/google/vr/sdk/widgets/video/deps/fV;

    .line 6
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/cC;->b()Lcom/google/vr/sdk/widgets/video/deps/gD;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->c:Lcom/google/vr/sdk/widgets/video/deps/gD;

    .line 7
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->h()V

    return-void
.end method

.method private declared-synchronized a(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cH$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cH;->c(Z)Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->h:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->h:[Ljava/lang/Object;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->g:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->h:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/cH;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/cH;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p1

    .line 77
    :goto_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;-><init>()V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->i:I

    const/4 v1, 0x0

    .line 79
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->j:I

    const-wide/16 v1, 0x0

    .line 80
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->k:J

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 82
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/cH$a;

    .line 83
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/cH$a;->b:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->d:Lcom/google/vr/sdk/widgets/video/deps/fS;

    invoke-static {v2, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fZ$a;)V

    .line 84
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->k:J

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->a:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->k:J

    .line 85
    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->a:J

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 86
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->j:I

    .line 87
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 89
    :cond_2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->d:Lcom/google/vr/sdk/widgets/video/deps/fS;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fS;Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->g:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cH;->c(Z)Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object p1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->b:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->g:Ljava/lang/Object;

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->g:Ljava/lang/Object;

    return-object p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cB$a;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->d()F

    move-result v0

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->k:J

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cB$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cB;FJ)V

    :cond_0
    return-void
.end method

.method private c(Z)Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 0

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->f:Lcom/google/vr/sdk/widgets/video/deps/fV;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->e:Lcom/google/vr/sdk/widgets/video/deps/fV;

    :goto_0
    return-object p1
.end method

.method private h()V
    .locals 2

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->i:I

    .line 65
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->j:I

    const-wide/16 v0, -0x1

    .line 66
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->k:J

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            "Landroid/net/Uri;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/fv;Ljava/lang/Object;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            "TM;Z)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cH$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/fv;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            "TM;[TK;Z)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cH$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 13
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->b(Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 17
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->a(Z)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 20
    :goto_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->h()V

    .line 21
    throw v0

    :catch_2
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/cB$a;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->c:Lcom/google/vr/sdk/widgets/video/deps/gD;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gD;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 24
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->b(Z)Ljava/lang/Object;

    .line 25
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->a(Z)Ljava/util/List;

    move-result-object v2

    .line 26
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cH;->b(Lcom/google/vr/sdk/widgets/video/deps/cB$a;)V

    .line 27
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/high16 v3, 0x20000

    new-array v3, v3, [B

    .line 29
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    invoke-direct {v12}, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;-><init>()V

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 31
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/cH$a;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/cH$a;->b:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->d:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->e:Lcom/google/vr/sdk/widgets/video/deps/fV;

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->c:Lcom/google/vr/sdk/widgets/video/deps/gD;

    const/16 v9, -0x3e8

    const/4 v11, 0x1

    move-object v7, v3

    move-object v10, v12

    invoke-static/range {v4 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fV;[BLcom/google/vr/sdk/widgets/video/deps/gD;ILcom/google/vr/sdk/widgets/video/deps/fZ$a;Z)V

    .line 32
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->k:J

    iget-wide v6, v12, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->b:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->k:J

    .line 33
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->j:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->j:I

    .line 34
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cH;->b(Lcom/google/vr/sdk/widgets/video/deps/cB$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->c:Lcom/google/vr/sdk/widgets/video/deps/gD;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gD;->e(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 38
    :try_start_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->c:Lcom/google/vr/sdk/widgets/video/deps/gD;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gD;->e(I)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->h:[Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->h()V

    return-void
.end method

.method public final b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 48
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->b(Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->h()V

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->g:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 54
    :try_start_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->f:Lcom/google/vr/sdk/widgets/video/deps/fV;

    invoke-virtual {p0, v3, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/cH$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/cH$a;->b:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/cH;->a(Landroid/net/Uri;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    :cond_0
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->g:Ljava/lang/Object;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->b:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public final c()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->k:J

    return-wide v0
.end method

.method public d()F
    .locals 3

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->i:I

    .line 44
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->j:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v2, v1, v0

    :goto_0
    return v2

    :cond_2
    :goto_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cH;->b(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->i:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH;->j:I

    return v0
.end method
