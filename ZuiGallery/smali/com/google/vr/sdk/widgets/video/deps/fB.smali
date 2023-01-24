.class public final Lcom/google/vr/sdk/widgets/video/deps/fB;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# static fields
.field private static final a:Ljava/lang/String; = "DefaultDataSource"

.field private static final b:Ljava/lang/String; = "asset"

.field private static final c:Ljava/lang/String; = "content"

.field private static final d:Ljava/lang/String; = "rtmp"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/fQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private j:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private l:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private m:Lcom/google/vr/sdk/widgets/video/deps/fv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;Lcom/google/vr/sdk/widgets/video/deps/fv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->e:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->f:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    .line 8
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->g:Lcom/google/vr/sdk/widgets/video/deps/fv;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;Ljava/lang/String;IIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            ">;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .line 3
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/fD;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fD;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gC;Lcom/google/vr/sdk/widgets/video/deps/fQ;IIZLcom/google/vr/sdk/widgets/video/deps/fI$f;)V

    invoke-direct {p0, p1, p2, v8}, Lcom/google/vr/sdk/widgets/video/deps/fB;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/fB;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private c()Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fG;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->f:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fG;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    return-object v0
.end method

.method private d()Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->i:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fo;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->f:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fo;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->i:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->i:Lcom/google/vr/sdk/widgets/video/deps/fv;

    return-object v0
.end method

.method private e()Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->j:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fs;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->f:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fs;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->j:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->j:Lcom/google/vr/sdk/widgets/video/deps/fv;

    return-object v0
.end method

.method private f()Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 5

    const-string v0, "Error instantiating RtmpDataSource"

    const-string v1, "DefaultDataSource"

    .line 43
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->k:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 44
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->k:Lcom/google/vr/sdk/widgets/video/deps/fv;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 60
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 57
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v2

    .line 54
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v2

    .line 51
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    const-string v0, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->k:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->g:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->k:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->k:Lcom/google/vr/sdk/widgets/video/deps/fv;

    return-object v0
.end method

.method private g()Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->l:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ft;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ft;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->l:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->l:Lcom/google/vr/sdk/widgets/video/deps/fv;

    return-object v0
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a([BII)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 11
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fB;->d()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    goto :goto_1

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fB;->c()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    goto :goto_1

    :cond_2
    const-string v1, "asset"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fB;->d()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    goto :goto_1

    :cond_3
    const-string v1, "content"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fB;->e()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    goto :goto_1

    :cond_4
    const-string v1, "rtmp"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fB;->f()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    goto :goto_1

    :cond_5
    const-string v1, "data"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fB;->g()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    goto :goto_1

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->g:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 25
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 29
    :try_start_0
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 32
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fB;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->b()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method
