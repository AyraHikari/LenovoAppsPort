.class public final Lcom/google/vr/sdk/widgets/video/deps/aq;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/av;


# static fields
.field private static final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/as;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 34
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/vr/sdk/widgets/video/deps/as;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/aq;->a:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->e:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)Lcom/google/vr/sdk/widgets/video/deps/aq;
    .locals 0

    monitor-enter p0

    .line 4
    :try_start_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()[Lcom/google/vr/sdk/widgets/video/deps/as;
    .locals 7

    monitor-enter p0

    .line 14
    :try_start_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/aq;->a:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xb

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/as;

    .line 15
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/aJ;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->b:I

    invoke-direct {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/aJ;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 16
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/aU;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->c:I

    invoke-direct {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/aU;-><init>(I)V

    aput-object v4, v0, v2

    const/4 v2, 0x2

    .line 17
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/aZ;

    invoke-direct {v4}, Lcom/google/vr/sdk/widgets/video/deps/aZ;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x3

    .line 18
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/aN;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->d:I

    invoke-direct {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/aN;-><init>(I)V

    aput-object v4, v0, v2

    const/4 v2, 0x4

    .line 19
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/bu;

    invoke-direct {v4}, Lcom/google/vr/sdk/widgets/video/deps/bu;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x5

    .line 20
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/bs;

    invoke-direct {v4}, Lcom/google/vr/sdk/widgets/video/deps/bs;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x6

    .line 21
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/bN;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->e:I

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->f:I

    invoke-direct {v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/bN;-><init>(II)V

    aput-object v4, v0, v2

    const/4 v2, 0x7

    .line 22
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/aC;

    invoke-direct {v4}, Lcom/google/vr/sdk/widgets/video/deps/aC;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x8

    .line 23
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/bi;

    invoke-direct {v4}, Lcom/google/vr/sdk/widgets/video/deps/bi;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x9

    .line 24
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/bI;

    invoke-direct {v4}, Lcom/google/vr/sdk/widgets/video/deps/bI;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xa

    .line 25
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/bP;

    invoke-direct {v4}, Lcom/google/vr/sdk/widgets/video/deps/bP;-><init>()V

    aput-object v4, v0, v2

    .line 26
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/aq;->a:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 27
    :try_start_1
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/aq;->a:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/as;

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)Lcom/google/vr/sdk/widgets/video/deps/aq;
    .locals 0

    monitor-enter p0

    .line 6
    :try_start_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(I)Lcom/google/vr/sdk/widgets/video/deps/aq;
    .locals 0

    monitor-enter p0

    .line 8
    :try_start_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(I)Lcom/google/vr/sdk/widgets/video/deps/aq;
    .locals 0

    monitor-enter p0

    .line 10
    :try_start_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(I)Lcom/google/vr/sdk/widgets/video/deps/aq;
    .locals 0

    monitor-enter p0

    .line 12
    :try_start_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aq;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
