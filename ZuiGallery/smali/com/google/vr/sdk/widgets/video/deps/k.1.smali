.class final Lcom/google/vr/sdk/widgets/video/deps/k;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/vr/sdk/widgets/video/deps/cV$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/cW$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/fk$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/k$c;,
        Lcom/google/vr/sdk/widgets/video/deps/k$a;,
        Lcom/google/vr/sdk/widgets/video/deps/k$d;,
        Lcom/google/vr/sdk/widgets/video/deps/k$b;
    }
.end annotation


# static fields
.field private static final A:I = 0x3e8

.field private static final B:I = 0x64

.field private static final C:I = 0x3938700

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field private static final j:Ljava/lang/String; = "ExoPlayerImplInternal"

.field private static final k:I = 0x0

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:I = 0x3

.field private static final o:I = 0x4

.field private static final p:I = 0x5

.field private static final q:I = 0x6

.field private static final r:I = 0x7

.field private static final s:I = 0x8

.field private static final t:I = 0x9

.field private static final u:I = 0xa

.field private static final v:I = 0xb

.field private static final w:I = 0xc

.field private static final x:I = 0xd

.field private static final y:I = 0xa

.field private static final z:I = 0xa


# instance fields
.field private final D:[Lcom/google/vr/sdk/widgets/video/deps/u;

.field private final E:[Lcom/google/vr/sdk/widgets/video/deps/v;

.field private final F:Lcom/google/vr/sdk/widgets/video/deps/fk;

.field private final G:Lcom/google/vr/sdk/widgets/video/deps/p;

.field private final H:Lcom/google/vr/sdk/widgets/video/deps/gH;

.field private final I:Landroid/os/Handler;

.field private final J:Landroid/os/HandlerThread;

.field private final K:Landroid/os/Handler;

.field private final L:Lcom/google/vr/sdk/widgets/video/deps/h;

.field private final M:Lcom/google/vr/sdk/widgets/video/deps/z$b;

.field private final N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

.field private final O:Lcom/google/vr/sdk/widgets/video/deps/q;

.field private P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

.field private Q:Lcom/google/vr/sdk/widgets/video/deps/s;

.field private R:Lcom/google/vr/sdk/widgets/video/deps/u;

.field private S:Lcom/google/vr/sdk/widgets/video/deps/gw;

.field private T:Lcom/google/vr/sdk/widgets/video/deps/cW;

.field private U:[Lcom/google/vr/sdk/widgets/video/deps/u;

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:I

.field private aa:I

.field private ab:Z

.field private ac:I

.field private ad:I

.field private ae:J

.field private af:I

.field private ag:Lcom/google/vr/sdk/widgets/video/deps/k$c;

.field private ah:J

.field private ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

.field private aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

.field private ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

.field private al:Lcom/google/vr/sdk/widgets/video/deps/z;


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/u;Lcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;ZIZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/k$b;Lcom/google/vr/sdk/widgets/video/deps/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->F:Lcom/google/vr/sdk/widgets/video/deps/fk;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->G:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 5
    iput-boolean p4, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->W:Z

    .line 6
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aa:I

    .line 7
    iput-boolean p6, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ab:Z

    .line 8
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 p3, 0x1

    .line 9
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    .line 10
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 11
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->L:Lcom/google/vr/sdk/widgets/video/deps/h;

    .line 12
    array-length p3, p1

    new-array p3, p3, [Lcom/google/vr/sdk/widgets/video/deps/v;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->E:[Lcom/google/vr/sdk/widgets/video/deps/v;

    const/4 p3, 0x0

    move p4, p3

    .line 13
    :goto_0
    array-length p5, p1

    if-ge p4, p5, :cond_0

    .line 14
    aget-object p5, p1, p4

    invoke-interface {p5, p4}, Lcom/google/vr/sdk/widgets/video/deps/u;->setIndex(I)V

    .line 15
    iget-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->E:[Lcom/google/vr/sdk/widgets/video/deps/v;

    aget-object p6, p1, p4

    invoke-interface {p6}, Lcom/google/vr/sdk/widgets/video/deps/u;->getCapabilities()Lcom/google/vr/sdk/widgets/video/deps/v;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gH;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/gH;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    new-array p1, p3, [Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 18
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 19
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/z$b;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->M:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    .line 20
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/z$a;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 21
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/q;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    .line 22
    invoke-virtual {p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/fk;->a(Lcom/google/vr/sdk/widgets/video/deps/fk$a;)V

    .line 23
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/s;->a:Lcom/google/vr/sdk/widgets/video/deps/s;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Q:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 24
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->J:Landroid/os/HandlerThread;

    .line 25
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 26
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->J:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    return-void
.end method

.method private a(ILcom/google/vr/sdk/widgets/video/deps/z;Lcom/google/vr/sdk/widgets/video/deps/z;)I
    .locals 9

    .line 639
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    move p1, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 641
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->M:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aa:I

    iget-boolean v8, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ab:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Lcom/google/vr/sdk/widgets/video/deps/z$b;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 644
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    const/4 v3, 0x1

    .line 645
    invoke-virtual {p2, v4, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object p1

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    .line 646
    invoke-virtual {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 332
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->g()V

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->X:Z

    const/4 v1, 0x2

    .line 334
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(I)V

    .line 336
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 337
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->e()V

    :cond_0
    move-object v4, v3

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 341
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JLcom/google/vr/sdk/widgets/video/deps/k$a;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_1

    .line 343
    :cond_2
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->e()V

    .line 344
    :goto_1
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    goto :goto_0

    .line 345
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-ne p1, v4, :cond_4

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eq p1, v2, :cond_6

    .line 346
    :cond_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v2, p1

    move v5, v0

    :goto_3
    if-ge v5, v2, :cond_5

    aget-object v6, p1, v5

    .line 347
    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/u;->disable()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    new-array p1, v0, [Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 349
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 350
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    .line 351
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->R:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 352
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    :cond_6
    if-eqz v4, :cond_8

    .line 354
    iput-object v3, v4, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 355
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 356
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 357
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Lcom/google/vr/sdk/widgets/video/deps/k$a;)V

    .line 358
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->i:Z

    if-eqz p1, :cond_7

    .line 359
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cV;->b(J)J

    move-result-wide p1

    move-wide p2, p1

    .line 360
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(J)V

    .line 361
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->p()V

    goto :goto_4

    .line 362
    :cond_8
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 363
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 364
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 365
    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(J)V

    .line 366
    :goto_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private a(IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->M:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Lcom/google/vr/sdk/widgets/video/deps/z$b;Lcom/google/vr/sdk/widgets/video/deps/z$a;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/k$a;I)Lcom/google/vr/sdk/widgets/video/deps/k$a;
    .locals 2

    .line 617
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    .line 618
    invoke-virtual {v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/q$a;I)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v0

    iput-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    .line 619
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-nez v0, :cond_0

    goto :goto_1

    .line 621
    :cond_0
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method private a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    add-long/2addr p1, v0

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    .line 378
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gH;->a(J)V

    .line 379
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 380
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    invoke-interface {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/u;->resetPosition(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(JJ)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-gtz p3, :cond_0

    .line 289
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 290
    :cond_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private a(Landroid/util/Pair;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/google/vr/sdk/widgets/video/deps/z;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 518
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 519
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/z;

    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 520
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-virtual {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/z;)V

    .line 521
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_6

    .line 523
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->af:I

    const-wide/16 v7, 0x0

    if-lez v2, :cond_2

    .line 524
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ag:Lcom/google/vr/sdk/widgets/video/deps/k$c;

    invoke-direct {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Lcom/google/vr/sdk/widgets/video/deps/k$c;)Landroid/util/Pair;

    move-result-object v2

    .line 525
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->af:I

    .line 526
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->af:I

    .line 527
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ag:Lcom/google/vr/sdk/widgets/video/deps/k$c;

    if-nez v2, :cond_0

    .line 529
    invoke-direct {v0, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 530
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 531
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 532
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    .line 533
    invoke-virtual {v2, v3, v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IJ)Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    move-result-object v10

    .line 534
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    move-wide v11, v7

    goto :goto_0

    :cond_1
    move-wide v11, v13

    :goto_0
    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 535
    invoke-direct {v0, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Ljava/lang/Object;I)V

    goto :goto_2

    .line 536
    :cond_2
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;->b:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    .line 537
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 538
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 539
    :cond_3
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ab:Z

    .line 540
    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(Z)I

    move-result v2

    .line 541
    invoke-direct {v0, v2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(IJ)Landroid/util/Pair;

    move-result-object v2

    .line 542
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 543
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 544
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-virtual {v2, v3, v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IJ)Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    move-result-object v10

    .line 545
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    move-wide v11, v7

    goto :goto_1

    :cond_4
    move-wide v11, v13

    :goto_1
    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 546
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 548
    :cond_5
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 550
    :cond_6
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v7, v7, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    .line 551
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v8, :cond_7

    goto :goto_3

    .line 552
    :cond_7
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    :goto_3
    if-nez v8, :cond_8

    .line 553
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v9

    if-lt v7, v9, :cond_8

    .line 554
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Ljava/lang/Object;)V

    return-void

    :cond_8
    const/4 v9, 0x1

    if-nez v8, :cond_9

    .line 557
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v2, v7, v10, v9}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v10

    iget-object v10, v10, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_9
    iget-object v10, v8, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b:Ljava/lang/Object;

    .line 558
    :goto_4
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v11, v10}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    .line 560
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-direct {v0, v7, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(ILcom/google/vr/sdk/widgets/video/deps/z;Lcom/google/vr/sdk/widgets/video/deps/z;)I

    move-result v2

    if-ne v2, v11, :cond_a

    .line 562
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Ljava/lang/Object;)V

    return-void

    .line 564
    :cond_a
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 565
    invoke-virtual {v3, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v2

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c:I

    .line 566
    invoke-direct {v0, v2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(IJ)Landroid/util/Pair;

    move-result-object v2

    .line 567
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 568
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 569
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v2, v3, v6, v9}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    if-eqz v8, :cond_c

    .line 571
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    .line 572
    iget-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    invoke-virtual {v6, v11}, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a(I)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v6

    iput-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    .line 573
    :goto_5
    iget-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v6, :cond_c

    .line 574
    iget-object v8, v8, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 575
    iget-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b:Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 576
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v7, v8, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    invoke-virtual {v6, v7, v3}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/q$a;I)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v6

    iput-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    goto :goto_5

    .line 577
    :cond_b
    iget-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    invoke-virtual {v6, v11}, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a(I)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v6

    iput-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    goto :goto_5

    .line 578
    :cond_c
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-direct {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(I)V

    .line 579
    invoke-direct {v0, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)J

    move-result-wide v3

    .line 580
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)V

    iput-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 581
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Ljava/lang/Object;)V

    return-void

    :cond_d
    if-eq v10, v7, :cond_e

    .line 584
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    invoke-virtual {v2, v10}, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a(I)Lcom/google/vr/sdk/widgets/video/deps/k$b;

    move-result-object v2

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 585
    :cond_e
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 586
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v12, v7, Lcom/google/vr/sdk/widgets/video/deps/k$b;->c:J

    invoke-virtual {v2, v10, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IJ)Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    move-result-object v15

    .line 587
    invoke-virtual {v15}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, v15, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v7, v7, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    if-eq v2, v7, :cond_11

    .line 588
    :cond_f
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;->c:J

    invoke-direct {v0, v15, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)J

    move-result-wide v16

    .line 589
    invoke-virtual {v15}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v5, v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;->c:J

    :cond_10
    move-wide/from16 v18, v5

    .line 590
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    move-object v14, v2

    invoke-direct/range {v14 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 591
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Ljava/lang/Object;)V

    return-void

    :cond_11
    if-nez v8, :cond_12

    .line 594
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Ljava/lang/Object;)V

    return-void

    .line 596
    :cond_12
    invoke-direct {v0, v8, v10}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/k$a;I)Lcom/google/vr/sdk/widgets/video/deps/k$a;

    move-result-object v2

    move v13, v10

    .line 597
    :goto_6
    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v5, :cond_16

    .line 599
    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 600
    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->M:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->aa:I

    iget-boolean v7, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ab:Z

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Lcom/google/vr/sdk/widgets/video/deps/z$b;IZ)I

    move-result v13

    if-eq v13, v11, :cond_13

    .line 601
    iget-object v6, v5, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b:Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 602
    invoke-virtual {v7, v13, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v7

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 603
    invoke-direct {v0, v5, v13}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/k$a;I)Lcom/google/vr/sdk/widgets/video/deps/k$a;

    move-result-object v2

    goto :goto_6

    .line 604
    :cond_13
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v6, :cond_14

    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    iget v7, v5, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    if-ge v6, v7, :cond_14

    move v4, v9

    :cond_14
    if-nez v4, :cond_15

    .line 606
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    .line 607
    invoke-direct {v0, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)J

    move-result-wide v7

    .line 608
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v6, v3, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v9, v3, Lcom/google/vr/sdk/widgets/video/deps/k$b;->c:J

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    goto :goto_7

    .line 610
    :cond_15
    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 611
    iput-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 612
    invoke-direct {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/k$a;)V

    .line 615
    :cond_16
    :goto_7
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/k$a;)V
    .locals 0

    :goto_0
    if-eqz p1, :cond_0

    .line 773
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->e()V

    .line 774
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/k$c;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 292
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 293
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->af:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->af:I

    .line 294
    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->ag:Lcom/google/vr/sdk/widgets/video/deps/k$c;

    return-void

    .line 296
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Lcom/google/vr/sdk/widgets/video/deps/k$c;)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-nez v2, :cond_2

    .line 298
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->ab:Z

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(Z)I

    move-result v2

    iget-object v10, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->M:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    .line 300
    invoke-virtual {v0, v2, v10}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->f:I

    .line 301
    :goto_0
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    invoke-direct {v2, v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(IJ)V

    iput-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 302
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    invoke-virtual {v4, v8, v3, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 303
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    invoke-direct {v2, v0, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(IJ)V

    iput-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 304
    invoke-direct {v1, v8}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(I)V

    .line 305
    invoke-direct {v1, v9}, Lcom/google/vr/sdk/widgets/video/deps/k;->f(Z)V

    return-void

    .line 307
    :cond_2
    iget-wide v10, v0, Lcom/google/vr/sdk/widgets/video/deps/k$c;->c:J

    cmp-long v0, v10, v6

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v9

    .line 308
    :goto_1
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 309
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 311
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    .line 312
    invoke-virtual {v2, v6, v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IJ)Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    move-result-object v11

    .line 313
    invoke-virtual {v11}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    move-wide v12, v4

    goto :goto_2

    :cond_4
    move v2, v0

    move-wide v12, v14

    .line 316
    :goto_2
    :try_start_0
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-virtual {v11, v0}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v4, 0x3e8

    div-long v6, v12, v4

    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    div-long/2addr v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v6, v8

    if-nez v0, :cond_5

    .line 317
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 318
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 321
    :cond_5
    :try_start_1
    invoke-direct {v1, v11, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v12, v4

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    or-int v0, v2, v3

    .line 324
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    move-object v10, v2

    move-wide v12, v4

    invoke-direct/range {v10 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    iput-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 325
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v0

    .line 328
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    iput-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 329
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    throw v0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 444
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/u;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 445
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/u;->stop()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 622
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method private a(Ljava/lang/Object;I)V
    .locals 5

    .line 624
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ab:Z

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(Z)I

    move-result v2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->M:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    .line 626
    invoke-virtual {v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->f:I

    .line 627
    :goto_0
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(IJ)V

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Ljava/lang/Object;I)V

    .line 629
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    const/4 p1, 0x4

    .line 630
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(I)V

    .line 631
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->f(Z)V

    return-void
.end method

.method private a([ZI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 800
    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/deps/u;

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 802
    :goto_0
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v5, v4

    if-ge v2, v5, :cond_7

    .line 803
    aget-object v4, v4, v2

    .line 804
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/fl;->b:Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-virtual {v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 806
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    add-int/lit8 v15, v3, 0x1

    aput-object v4, v6, v3

    .line 807
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/u;->getState()I

    move-result v3

    if-nez v3, :cond_5

    .line 808
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/fl;->d:[Lcom/google/vr/sdk/widgets/video/deps/w;

    aget-object v7, v3, v2

    .line 809
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->W:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v1

    .line 810
    :goto_1
    aget-boolean v8, p1, v2

    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    move v12, v6

    goto :goto_2

    :cond_1
    move v12, v1

    .line 811
    :goto_2
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/fi;->e()I

    move-result v6

    new-array v8, v6, [Lcom/google/vr/sdk/widgets/video/deps/m;

    move v9, v1

    :goto_3
    if-ge v9, v6, :cond_2

    .line 813
    invoke-interface {v5, v9}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 815
    :cond_2
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/db;

    aget-object v9, v5, v2

    iget-wide v10, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 816
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a()J

    move-result-wide v13

    move-object v6, v4

    .line 817
    invoke-interface/range {v6 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/u;->enable(Lcom/google/vr/sdk/widgets/video/deps/w;[Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/db;JZJ)V

    .line 818
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/u;->getMediaClock()Lcom/google/vr/sdk/widgets/video/deps/gw;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 820
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    if-nez v6, :cond_3

    .line 822
    iput-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    .line 823
    iput-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->R:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 824
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->Q:Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-interface {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gw;->a(Lcom/google/vr/sdk/widgets/video/deps/s;)Lcom/google/vr/sdk/widgets/video/deps/s;

    goto :goto_4

    .line 821
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/RuntimeException;)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object v1

    throw v1

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 826
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/u;->start()V

    :cond_5
    move v3, v15

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JLcom/google/vr/sdk/widgets/video/deps/k$a;)Z
    .locals 2

    .line 368
    iget-object v0, p4, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p4, Lcom/google/vr/sdk/widgets/video/deps/k$a;->h:Z

    if-eqz p1, :cond_1

    .line 369
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v0, p4, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 370
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 371
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 372
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(I)J

    move-result-wide p1

    iget-object p3, p4, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide p3, p3, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/k$c;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/k$c;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 649
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/k$c;->a:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 650
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 652
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->M:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget v4, p1, Lcom/google/vr/sdk/widgets/video/deps/k$c;->b:I

    iget-wide v5, p1, Lcom/google/vr/sdk/widgets/video/deps/k$c;->c:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Lcom/google/vr/sdk/widgets/video/deps/z$b;Lcom/google/vr/sdk/widgets/video/deps/z$a;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    if-ne v1, v0, :cond_1

    return-object p1

    .line 658
    :cond_1
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 659
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v2

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    .line 660
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 662
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 663
    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(ILcom/google/vr/sdk/widgets/video/deps/z;Lcom/google/vr/sdk/widgets/video/deps/z;)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 665
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object p1

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 655
    :catch_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/o;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/k$c;->b:I

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/k$c;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/o;-><init>(Lcom/google/vr/sdk/widgets/video/deps/z;IJ)V

    throw v0
.end method

.method private b(I)V
    .locals 3

    .line 134
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    if-eq v0, p1, :cond_0

    .line 135
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    .line 136
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cW;Z)V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    .line 143
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->f(Z)V

    .line 144
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->G:Lcom/google/vr/sdk/widgets/video/deps/p;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/p;->a()V

    if-eqz p2, :cond_0

    .line 146
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p2, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(IJ)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->T:Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 148
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->L:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {p1, p2, v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V

    const/4 p1, 0x2

    .line 149
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(I)V

    .line 150
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/k$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-ne v0, p1, :cond_0

    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 780
    :goto_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v5, v4

    if-ge v2, v5, :cond_6

    .line 781
    aget-object v4, v4, v2

    .line 782
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/u;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    aput-boolean v5, v0, v2

    .line 783
    iget-object v5, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/fl;->b:Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-virtual {v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 786
    :cond_2
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_5

    if-eqz v5, :cond_3

    .line 787
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/u;->isCurrentStreamFinal()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 788
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/u;->getStream()Lcom/google/vr/sdk/widgets/video/deps/db;

    move-result-object v5

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/db;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_5

    .line 789
    :cond_3
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->R:Lcom/google/vr/sdk/widgets/video/deps/u;

    if-ne v4, v5, :cond_4

    .line 790
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gH;->a(Lcom/google/vr/sdk/widgets/video/deps/gw;)V

    const/4 v5, 0x0

    .line 791
    iput-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    .line 792
    iput-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->R:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 793
    :cond_4
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    .line 794
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/u;->disable()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 796
    :cond_6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 797
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 798
    invoke-direct {p0, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/k;->a([ZI)V

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/s;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gw;->a(Lcom/google/vr/sdk/widgets/video/deps/s;)Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object p1

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gH;->a(Lcom/google/vr/sdk/widgets/video/deps/s;)Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object p1

    .line 386
    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Q:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 387
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 633
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method private b(Ljava/lang/Object;I)V
    .locals 4

    .line 635
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/k$d;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/vr/sdk/widgets/video/deps/k$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/k$b;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 636
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private b(J)Z
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->h:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    .line 509
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 163
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aa:I

    .line 164
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(I)V

    .line 165
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->e()V

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c()V

    .line 757
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-nez p1, :cond_1

    .line 758
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 759
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q$a;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(J)V

    .line 760
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Lcom/google/vr/sdk/widgets/video/deps/k$a;)V

    .line 761
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->p()V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Z)V
    .locals 3

    .line 138
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Y:Z

    if-eq v0, p1, :cond_0

    .line 139
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Y:Z

    .line 140
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private c([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 429
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 430
    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/h$c;->a:Lcom/google/vr/sdk/widgets/video/deps/h$b;

    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/h$c;->b:I

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/h$c;->c:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/h$b;->handleMessage(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    if-ne p1, v1, :cond_2

    .line 433
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 434
    :cond_2
    monitor-enter p0

    .line 435
    :try_start_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ad:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ad:I

    .line 436
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 437
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 439
    monitor-enter p0

    .line 440
    :try_start_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ad:I

    .line 441
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 442
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->p()V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->X:Z

    .line 153
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->W:Z

    if-nez p1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->g()V

    .line 156
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->h()V

    goto :goto_0

    .line 157
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->f()V

    .line 159
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 161
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private e()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 175
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->M:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aa:I

    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ab:Z

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Lcom/google/vr/sdk/widgets/video/deps/z$b;IZ)I

    move-result v1

    .line 176
    :goto_2
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-boolean v2, v2, Lcom/google/vr/sdk/widgets/video/deps/q$a;->f:Z

    if-nez v2, :cond_2

    .line 177
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 178
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    if-eq v3, v1, :cond_3

    goto :goto_3

    .line 180
    :cond_3
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    goto :goto_1

    .line 182
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    .line 183
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v3, :cond_5

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    goto :goto_4

    :cond_5
    move v3, v2

    .line 184
    :goto_4
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v4, :cond_6

    .line 185
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/k$a;)V

    const/4 v4, 0x0

    .line 186
    iput-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 187
    :cond_6
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    .line 188
    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/q$a;)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v4

    iput-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    .line 189
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gt v1, v4, :cond_7

    move v1, v5

    goto :goto_5

    :cond_7
    move v1, v6

    :goto_5
    if-nez v1, :cond_8

    .line 191
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    :cond_8
    if-eq v3, v2, :cond_9

    .line 192
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    if-gt v3, v0, :cond_9

    goto :goto_6

    :cond_9
    move v5, v6

    :goto_6
    if-nez v5, :cond_a

    .line 193
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v0, :cond_a

    .line 194
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    .line 195
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    invoke-direct {p0, v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)J

    move-result-wide v3

    .line 196
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/k$b;->c:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    :cond_a
    return-void
.end method

.method private e(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 167
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ab:Z

    .line 168
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Z)V

    .line 169
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->e()V

    return-void
.end method

.method private f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->X:Z

    .line 199
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gH;->a()V

    .line 200
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 201
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/u;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(Z)V
    .locals 8

    .line 401
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->X:Z

    .line 403
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gH;->d()V

    const/4 v1, 0x0

    .line 404
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    .line 405
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->R:Lcom/google/vr/sdk/widgets/video/deps/u;

    const-wide/32 v2, 0x3938700

    .line 406
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    .line 407
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 408
    :try_start_0
    invoke-direct {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    .line 409
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/u;->disable()V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    .line 412
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 414
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 415
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v2, :cond_1

    goto :goto_3

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 417
    :goto_3
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/k$a;)V

    .line 418
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 419
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 420
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 421
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->c(Z)V

    if-eqz p1, :cond_3

    .line 423
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->T:Lcom/google/vr/sdk/widgets/video/deps/cW;

    if-eqz p1, :cond_2

    .line 424
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->b()V

    .line 425
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->T:Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 426
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/z;)V

    .line 427
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    :cond_3
    return-void
.end method

.method private g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gH;->d()V

    .line 205
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 206
    invoke-direct {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(J)V

    goto :goto_1

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->R:Lcom/google/vr/sdk/widgets/video/deps/u;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/u;->isEnded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/gw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    .line 216
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gH;->a(J)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gH;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b(J)J

    move-result-wide v0

    .line 219
    :goto_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iput-wide v0, v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ae:J

    .line 221
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->d()J

    move-result-wide v3

    .line 223
    :goto_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    cmp-long v1, v3, v1

    if-nez v1, :cond_4

    .line 224
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/q$a;->e:J

    :cond_4
    iput-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->e:J

    return-void
.end method

.method private i()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->n()V

    .line 228
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    const-wide/16 v4, 0xa

    if-nez v3, :cond_0

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->m()V

    .line 230
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(JJ)V

    return-void

    :cond_0
    const-string v3, "doSomeWork"

    .line 232
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->h()V

    .line 234
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v6, v6, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    invoke-interface {v3, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a(J)V

    .line 237
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v6, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_0
    if-ge v9, v6, :cond_6

    aget-object v12, v3, v9

    .line 238
    iget-wide v13, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ae:J

    invoke-interface {v12, v13, v14, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/u;->render(JJ)V

    if-eqz v11, :cond_1

    .line 239
    invoke-interface {v12}, Lcom/google/vr/sdk/widgets/video/deps/u;->isEnded()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 240
    :goto_1
    invoke-interface {v12}, Lcom/google/vr/sdk/widgets/video/deps/u;->isReady()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v12}, Lcom/google/vr/sdk/widgets/video/deps/u;->isEnded()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-nez v7, :cond_4

    .line 242
    invoke-interface {v12}, Lcom/google/vr/sdk/widgets/video/deps/u;->maybeThrowStreamError()V

    :cond_4
    if-eqz v10, :cond_5

    if-eqz v7, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    if-nez v10, :cond_7

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->m()V

    .line 247
    :cond_7
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    if-eqz v3, :cond_8

    .line 248
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/gw;->c()Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object v3

    .line 249
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->Q:Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-virtual {v3, v6}, Lcom/google/vr/sdk/widgets/video/deps/s;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 250
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->Q:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 251
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    invoke-virtual {v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/gH;->a(Lcom/google/vr/sdk/widgets/video/deps/gw;)V

    .line 252
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 253
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 254
    :cond_8
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v6, v3, Lcom/google/vr/sdk/widgets/video/deps/q$a;->e:J

    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v11, :cond_a

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v6, v11

    if-eqz v11, :cond_9

    .line 255
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v11, v11, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    cmp-long v11, v6, v11

    if-gtz v11, :cond_a

    :cond_9
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v11, v11, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-boolean v11, v11, Lcom/google/vr/sdk/widgets/video/deps/q$a;->g:Z

    if-eqz v11, :cond_a

    .line 256
    invoke-direct {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(I)V

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->g()V

    goto :goto_7

    .line 258
    :cond_a
    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    if-ne v11, v9, :cond_d

    .line 259
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v11, v11

    if-lez v11, :cond_c

    if-eqz v10, :cond_b

    .line 260
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-boolean v7, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->X:Z

    iget-wide v10, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    .line 261
    invoke-virtual {v6, v7, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a(ZJ)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v16, 0x1

    goto :goto_5

    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    .line 262
    :cond_c
    invoke-direct {v0, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(J)Z

    move-result v6

    move/from16 v16, v6

    :goto_5
    if-eqz v16, :cond_f

    .line 264
    invoke-direct {v0, v8}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(I)V

    .line 265
    iget-boolean v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->W:Z

    if-eqz v6, :cond_f

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->f()V

    goto :goto_7

    :cond_d
    if-ne v11, v8, :cond_f

    .line 268
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v11, v11

    if-lez v11, :cond_e

    goto :goto_6

    .line 269
    :cond_e
    invoke-direct {v0, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(J)Z

    move-result v10

    :goto_6
    if-nez v10, :cond_f

    .line 271
    iget-boolean v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->W:Z

    iput-boolean v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->X:Z

    .line 272
    invoke-direct {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(I)V

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->g()V

    .line 274
    :cond_f
    :goto_7
    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    if-ne v6, v9, :cond_10

    .line 275
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v7, v6

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v7, :cond_10

    aget-object v10, v6, v15

    .line 276
    invoke-interface {v10}, Lcom/google/vr/sdk/widgets/video/deps/u;->maybeThrowStreamError()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 278
    :cond_10
    iget-boolean v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->W:Z

    if-eqz v6, :cond_11

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    if-eq v6, v8, :cond_12

    :cond_11
    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->Z:I

    if-ne v6, v9, :cond_13

    .line 279
    :cond_12
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(JJ)V

    goto :goto_9

    .line 280
    :cond_13
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v4, v4

    if-eqz v4, :cond_14

    if-eq v6, v3, :cond_14

    const-wide/16 v3, 0x3e8

    .line 281
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(JJ)V

    goto :goto_9

    .line 282
    :cond_14
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    :goto_9
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    return-void
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x1

    .line 389
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->f(Z)V

    .line 390
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->G:Lcom/google/vr/sdk/widgets/video/deps/p;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/p;->b()V

    .line 391
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(I)V

    return-void
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x1

    .line 393
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->f(Z)V

    .line 394
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->G:Lcom/google/vr/sdk/widgets/video/deps/p;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/p;->c()V

    .line 395
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(I)V

    .line 396
    monitor-enter p0

    .line 397
    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->V:Z

    .line 398
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 399
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private l()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz v0, :cond_10

    .line 451
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->h:Z

    if-nez v3, :cond_1

    goto/16 :goto_7

    .line 453
    :cond_1
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 459
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eq v2, v5, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 460
    :goto_1
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    invoke-direct {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/k$a;)V

    .line 461
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iput-object v3, v5, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 462
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iput-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 463
    iput-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 464
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v6, v6

    new-array v6, v6, [Z

    .line 465
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v7, v7, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    invoke-virtual {v5, v7, v8, v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a(JZ[Z)J

    move-result-wide v7

    .line 466
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v9, v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_3

    .line 467
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iput-wide v7, v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    .line 468
    invoke-direct {p0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(J)V

    .line 470
    :cond_3
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v2, v2

    new-array v2, v2, [Z

    move v5, v4

    move v7, v5

    .line 471
    :goto_2
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v9, v8

    if-ge v5, v9, :cond_a

    .line 472
    aget-object v8, v8, v5

    .line 473
    invoke-interface {v8}, Lcom/google/vr/sdk/widgets/video/deps/u;->getState()I

    move-result v9

    if-eqz v9, :cond_4

    move v9, v1

    goto :goto_3

    :cond_4
    move v9, v4

    :goto_3
    aput-boolean v9, v2, v5

    .line 474
    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/db;

    aget-object v9, v9, v5

    if-eqz v9, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 477
    :cond_5
    aget-boolean v10, v2, v5

    if-eqz v10, :cond_9

    .line 478
    invoke-interface {v8}, Lcom/google/vr/sdk/widgets/video/deps/u;->getStream()Lcom/google/vr/sdk/widgets/video/deps/db;

    move-result-object v10

    if-eq v9, v10, :cond_8

    .line 479
    iget-object v10, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->R:Lcom/google/vr/sdk/widgets/video/deps/u;

    if-ne v8, v10, :cond_7

    if-nez v9, :cond_6

    .line 481
    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->H:Lcom/google/vr/sdk/widgets/video/deps/gH;

    iget-object v10, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    invoke-virtual {v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/gH;->a(Lcom/google/vr/sdk/widgets/video/deps/gw;)V

    .line 482
    :cond_6
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->S:Lcom/google/vr/sdk/widgets/video/deps/gw;

    .line 483
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->R:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 484
    :cond_7
    invoke-direct {p0, v8}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    .line 485
    invoke-interface {v8}, Lcom/google/vr/sdk/widgets/video/deps/u;->disable()V

    goto :goto_4

    .line 486
    :cond_8
    aget-boolean v9, v6, v5

    if-eqz v9, :cond_9

    .line 487
    iget-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    invoke-interface {v8, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/u;->resetPosition(J)V

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 489
    :cond_a
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 491
    invoke-direct {p0, v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/k;->a([ZI)V

    goto :goto_6

    .line 493
    :cond_b
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 494
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    :goto_5
    if-eqz v0, :cond_c

    .line 496
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->e()V

    .line 497
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    goto :goto_5

    .line 498
    :cond_c
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 499
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->h:Z

    if-eqz v0, :cond_d

    .line 500
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->b:J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    .line 501
    invoke-virtual {v2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b(J)J

    move-result-wide v2

    .line 502
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 503
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a(JZ)J

    .line 504
    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->p()V

    .line 505
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->h()V

    .line 506
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 455
    :cond_e
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-ne v0, v3, :cond_f

    move v2, v4

    .line 457
    :cond_f
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    goto/16 :goto_0

    :cond_10
    :goto_7
    return-void
.end method

.method private m()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->h:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-ne v0, v1, :cond_3

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->U:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 513
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/u;->hasReadStreamToEnd()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a_()V

    :cond_3
    return-void
.end method

.method private n()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->T:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a()V

    return-void

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->o()V

    .line 672
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->Y:Z

    if-nez v0, :cond_3

    .line 675
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->p()V

    goto :goto_1

    .line 673
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/k;->c(Z)V

    .line 676
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-nez v0, :cond_4

    return-void

    .line 678
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eq v0, v2, :cond_5

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->f:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 679
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->e()V

    .line 680
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Lcom/google/vr/sdk/widgets/video/deps/k$a;)V

    .line 681
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v4, v2, Lcom/google/vr/sdk/widgets/video/deps/q$a;->b:J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v6, v2, Lcom/google/vr/sdk/widgets/video/deps/q$a;->d:J

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 682
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->h()V

    .line 683
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 684
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->g:Z

    if-eqz v0, :cond_8

    .line 685
    :goto_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 686
    aget-object v0, v0, v1

    .line 687
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/db;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 688
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/u;->getStream()Lcom/google/vr/sdk/widgets/video/deps/db;

    move-result-object v3

    if-ne v3, v2, :cond_6

    .line 689
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/u;->hasReadStreamToEnd()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 690
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/u;->setCurrentStreamFinal()V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    move v0, v1

    .line 693
    :goto_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 694
    aget-object v2, v2, v0

    .line 695
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/db;

    aget-object v3, v3, v0

    .line 696
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/u;->getStream()Lcom/google/vr/sdk/widgets/video/deps/db;

    move-result-object v4

    if-ne v4, v3, :cond_a

    if-eqz v3, :cond_9

    .line 697
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/u;->hasReadStreamToEnd()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    return-void

    .line 700
    :cond_b
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->h:Z

    if-eqz v0, :cond_12

    .line 701
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    .line 702
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 703
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    .line 704
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    .line 705
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/cV;->c()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    move v3, v1

    :goto_6
    move v4, v1

    .line 706
    :goto_7
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v6, v5

    if-ge v4, v6, :cond_12

    .line 707
    aget-object v5, v5, v4

    .line 708
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/fl;->b:Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-virtual {v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v6

    if-nez v6, :cond_d

    goto :goto_9

    :cond_d
    if-eqz v3, :cond_e

    .line 711
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/u;->setCurrentStreamFinal()V

    goto :goto_9

    .line 712
    :cond_e
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/u;->isCurrentStreamFinal()Z

    move-result v6

    if-nez v6, :cond_11

    .line 713
    iget-object v6, v2, Lcom/google/vr/sdk/widgets/video/deps/fl;->b:Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-virtual {v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v6

    .line 714
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/fl;->d:[Lcom/google/vr/sdk/widgets/video/deps/w;

    aget-object v7, v7, v4

    .line 715
    iget-object v8, v2, Lcom/google/vr/sdk/widgets/video/deps/fl;->d:[Lcom/google/vr/sdk/widgets/video/deps/w;

    aget-object v8, v8, v4

    if-eqz v6, :cond_10

    .line 716
    invoke-virtual {v8, v7}, Lcom/google/vr/sdk/widgets/video/deps/w;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 717
    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/fi;->e()I

    move-result v7

    new-array v8, v7, [Lcom/google/vr/sdk/widgets/video/deps/m;

    move v9, v1

    :goto_8
    if-ge v9, v7, :cond_f

    .line 719
    invoke-interface {v6, v9}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 721
    :cond_f
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/db;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->aj:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 722
    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a()J

    move-result-wide v9

    .line 723
    invoke-interface {v5, v8, v6, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/u;->replaceStream([Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/db;J)V

    goto :goto_9

    .line 725
    :cond_10
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/u;->setCurrentStreamFinal()V

    :cond_11
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_12
    return-void
.end method

.method private o()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->P:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/k$b;)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v0

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->g:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ak:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    return-void

    .line 736
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->O:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 737
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    .line 738
    invoke-virtual/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/q$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 740
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->T:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a()V

    return-void

    .line 742
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-nez v1, :cond_4

    const-wide/32 v1, 0x3938700

    goto :goto_1

    .line 744
    :cond_4
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/q$a;->e:J

    add-long/2addr v1, v3

    :goto_1
    move-wide v4, v1

    .line 745
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    const/4 v12, 0x1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    add-int/2addr v1, v12

    :goto_2
    move v10, v1

    .line 746
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->al:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->N:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v1, v2, v3, v12}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v1

    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    .line 747
    new-instance v13, Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->D:[Lcom/google/vr/sdk/widgets/video/deps/u;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->E:[Lcom/google/vr/sdk/widgets/video/deps/v;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->F:Lcom/google/vr/sdk/widgets/video/deps/fk;

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->G:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->T:Lcom/google/vr/sdk/widgets/video/deps/cW;

    move-object v1, v13

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/k$a;-><init>([Lcom/google/vr/sdk/widgets/video/deps/u;[Lcom/google/vr/sdk/widgets/video/deps/v;JLcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;Lcom/google/vr/sdk/widgets/video/deps/cW;Ljava/lang/Object;ILcom/google/vr/sdk/widgets/video/deps/q$a;)V

    .line 748
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    if-eqz v1, :cond_6

    .line 749
    iput-object v13, v1, Lcom/google/vr/sdk/widgets/video/deps/k$a;->j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 750
    :cond_6
    iput-object v13, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    .line 751
    iget-object v1, v13, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->b:J

    invoke-interface {v1, p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a(Lcom/google/vr/sdk/widgets/video/deps/cV$a;J)V

    .line 752
    invoke-direct {p0, v12}, Lcom/google/vr/sdk/widgets/video/deps/k;->c(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method private p()V
    .locals 3

    .line 767
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c(J)Z

    move-result v0

    .line 768
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->c(Z)V

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ai:Lcom/google/vr/sdk/widgets/video/deps/k$a;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ah:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cW;Z)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 0

    .line 829
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/s;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/z;IJ)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/k$c;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/k$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/z;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public varargs a([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->V:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ac:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ac:I

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->V:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 66
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->V:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 70
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 76
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->J:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public varargs declared-synchronized b([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    .locals 3

    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->V:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ac:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ac:I

    .line 54
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    .line 56
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->ad:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v0, :cond_1

    .line 57
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 63
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Landroid/os/Looper;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->J:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->I:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const-string v0, "ExoPlayerImplInternal"

    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 88
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    return v4

    .line 95
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move v4, v2

    :cond_0
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/k;->e(Z)V

    return v2

    .line 93
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->c(I)V

    return v2

    .line 115
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/h$c;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->c([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V

    return v2

    .line 113
    :pswitch_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->l()V

    return v2

    .line 111
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->d(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return v2

    .line 107
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->c(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return v2

    .line 109
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Landroid/util/Pair;)V

    return v2

    .line 105
    :pswitch_7
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->k()V

    return v2

    .line 103
    :pswitch_8
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->j()V

    return v2

    .line 101
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Lcom/google/vr/sdk/widgets/video/deps/s;)V

    return v2

    .line 99
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/k$c;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/k$c;)V

    return v2

    .line 97
    :pswitch_b
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->i()V

    return v2

    .line 91
    :pswitch_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move v4, v2

    :cond_1
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/k;->d(Z)V

    return v2

    .line 89
    :pswitch_d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/cW;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    move v4, v2

    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Lcom/google/vr/sdk/widgets/video/deps/cW;Z)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/g; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    const-string v3, "Internal runtime error."

    .line 129
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/RuntimeException;)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 132
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->j()V

    return v2

    :catch_1
    move-exception p1

    const-string v3, "Source error."

    .line 124
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/io/IOException;)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 126
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->j()V

    return v2

    :catch_2
    move-exception p1

    const-string v3, "Renderer error."

    .line 119
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k;->K:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 121
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/k;->j()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
