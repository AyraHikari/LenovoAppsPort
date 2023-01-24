.class final Lcom/google/vr/sdk/widgets/video/deps/dX;
.super Lcom/google/vr/sdk/widgets/video/deps/dv;
.source "HlsMediaChunk.java"


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final n:Ljava/lang/String; = "com.apple.streaming.transportStreamTimestamp"

.field private static final o:Ljava/lang/String; = ".aac"

.field private static final p:Ljava/lang/String; = ".ac3"

.field private static final q:Ljava/lang/String; = ".ec3"

.field private static final r:Ljava/lang/String; = ".mp3"

.field private static final s:Ljava/lang/String; = ".mp4"

.field private static final t:Ljava/lang/String; = ".m4"

.field private static final u:Ljava/lang/String; = ".vtt"

.field private static final v:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final A:Lcom/google/vr/sdk/widgets/video/deps/gJ;

.field private final B:Ljava/lang/String;

.field private final C:Lcom/google/vr/sdk/widgets/video/deps/as;

.field private final D:Z

.field private final E:Z

.field private final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Z

.field private final H:Lcom/google/vr/sdk/widgets/video/deps/cl;

.field private final I:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private J:Lcom/google/vr/sdk/widgets/video/deps/as;

.field private K:I

.field private L:I

.field private M:Z

.field private N:Lcom/google/vr/sdk/widgets/video/deps/eb;

.field private volatile O:Z

.field private volatile P:Z

.field public final j:I

.field public final k:I

.field public final l:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

.field private final w:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final x:Lcom/google/vr/sdk/widgets/video/deps/fy;

.field private final y:Z

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/eg$a;Ljava/util/List;ILjava/lang/Object;JJIIZLcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/dX;Ljava/lang/String;[B[B)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            "Lcom/google/vr/sdk/widgets/video/deps/fy;",
            "Lcom/google/vr/sdk/widgets/video/deps/fy;",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;I",
            "Ljava/lang/Object;",
            "JJIIZ",
            "Lcom/google/vr/sdk/widgets/video/deps/gJ;",
            "Lcom/google/vr/sdk/widgets/video/deps/dX;",
            "Ljava/lang/String;",
            "[B[B)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    move/from16 v14, p13

    move-object/from16 v15, p16

    move-object/from16 v0, p17

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    .line 1
    invoke-static {v12, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dX;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Ljava/lang/String;[B[B)Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v1

    iget-object v3, v13, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dv;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJI)V

    .line 2
    iput v14, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->k:I

    move-object/from16 v0, p3

    .line 3
    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->x:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 4
    iput-object v13, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->l:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    move-object/from16 v0, p5

    .line 5
    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->F:Ljava/util/List;

    move/from16 v0, p14

    .line 6
    iput-boolean v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->z:Z

    move-object/from16 v0, p15

    .line 7
    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->A:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    .line 8
    iget-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    instance-of v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dS;

    iput-boolean v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->y:Z

    move-object/from16 v0, p2

    .line 9
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v1, ".aac"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v3, ".ac3"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v3, ".ec3"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v3, ".mp3"

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->G:Z

    if-eqz v15, :cond_5

    .line 15
    iget-object v0, v15, Lcom/google/vr/sdk/widgets/video/deps/dX;->H:Lcom/google/vr/sdk/widgets/video/deps/cl;

    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->H:Lcom/google/vr/sdk/widgets/video/deps/cl;

    .line 16
    iget-object v0, v15, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 17
    iget-object v0, v15, Lcom/google/vr/sdk/widgets/video/deps/dX;->J:Lcom/google/vr/sdk/widgets/video/deps/as;

    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->C:Lcom/google/vr/sdk/widgets/video/deps/as;

    .line 18
    iget-object v0, v15, Lcom/google/vr/sdk/widgets/video/deps/dX;->l:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    if-eq v0, v13, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->D:Z

    .line 19
    iget v3, v15, Lcom/google/vr/sdk/widgets/video/deps/dX;->k:I

    if-ne v3, v14, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    iput-boolean v1, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->E:Z

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 20
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cl;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;-><init>()V

    goto :goto_3

    :cond_6
    move-object v0, v3

    :goto_3
    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->H:Lcom/google/vr/sdk/widgets/video/deps/cl;

    .line 21
    iget-boolean v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->G:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v4, 0xa

    invoke-direct {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    goto :goto_4

    :cond_7
    move-object v0, v3

    :goto_4
    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 22
    iput-object v3, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->C:Lcom/google/vr/sdk/widgets/video/deps/as;

    .line 23
    iput-boolean v1, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->D:Z

    .line 24
    iput-boolean v2, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->E:Z

    .line 25
    :goto_5
    iput-object v12, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->w:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 26
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dX;->j:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/at;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 88
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BIIZ)Z

    move-result v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    return-wide v4

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 91
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v0

    .line 92
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:I

    if-eq v0, v6, :cond_1

    return-wide v4

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 95
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->w()I

    move-result v0

    add-int/lit8 v6, v0, 0xa

    .line 97
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 98
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 99
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v8, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 100
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {v7, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    :cond_2
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v6, v2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BIIZ)Z

    move-result p1

    if-nez p1, :cond_3

    return-wide v4

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->H:Lcom/google/vr/sdk/widgets/video/deps/cl;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BI)Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-result-object p1

    if-nez p1, :cond_4

    return-wide v4

    .line 106
    :cond_4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bW;->a()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    .line 108
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/bW;->a(I)Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    move-result-object v3

    .line 109
    instance-of v6, v3, Lcom/google/vr/sdk/widgets/video/deps/cn;

    if-eqz v6, :cond_5

    .line 110
    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/cn;

    .line 111
    iget-object v6, v3, Lcom/google/vr/sdk/widgets/video/deps/cn;->b:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 112
    iget-object p1, v3, Lcom/google/vr/sdk/widgets/video/deps/cn;->c:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v2, 0x8

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 114
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->t()J

    move-result-wide v0

    return-wide v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-wide v4
.end method

.method private a(J)Lcom/google/vr/sdk/widgets/video/deps/as;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bu;

    invoke-direct {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bu;-><init>(J)V

    goto :goto_2

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v1, ".ac3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v1, ".ec3"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aN;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aN;-><init>(IJ)V

    goto :goto_2

    .line 153
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown extension for audio file: "

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_4
    :goto_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bs;

    invoke-direct {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bs;-><init>(J)V

    .line 154
    :goto_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->N:Lcom/google/vr/sdk/widgets/video/deps/eb;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/as;->a(Lcom/google/vr/sdk/widgets/video/deps/au;)V

    return-object v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/fv;Ljava/lang/String;[B[B)Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 1

    const-string v0, "identity"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dS;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dS;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;[B[B)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method private d()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->C:Lcom/google/vr/sdk/widgets/video/deps/as;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->J:Lcom/google/vr/sdk/widgets/video/deps/as;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->M:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->x:Lcom/google/vr/sdk/widgets/video/deps/fy;

    if-nez v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->K:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fy;->a(J)Lcom/google/vr/sdk/widgets/video/deps/fy;

    move-result-object v0

    .line 45
    :try_start_0
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/ap;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->w:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->w:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 46
    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ap;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 48
    :try_start_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->O:Z

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->J:Lcom/google/vr/sdk/widgets/video/deps/as;

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Lcom/google/vr/sdk/widgets/video/deps/as;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 52
    :try_start_2
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->x:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->K:I

    throw v0

    .line 50
    :cond_1
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->x:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->K:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->M:Z

    return-void

    :catchall_1
    move-exception v0

    .line 55
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method private i()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->y:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 60
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->L:I

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->L:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/fy;->a(J)Lcom/google/vr/sdk/widgets/video/deps/fy;

    move-result-object v0

    :cond_1
    move v3, v2

    .line 63
    :goto_0
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->z:Z

    if-nez v4, :cond_2

    .line 64
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->A:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e()V

    goto :goto_1

    .line 65
    :cond_2
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->A:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->a()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 66
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->A:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->f:J

    invoke-virtual {v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->a(J)V

    .line 67
    :cond_3
    :goto_1
    :try_start_0
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/ap;

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 68
    invoke-interface {v5, v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v11

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ap;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;JJ)V

    .line 69
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->J:Lcom/google/vr/sdk/widgets/video/deps/as;

    if-nez v0, :cond_5

    .line 70
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/dX;->a(Lcom/google/vr/sdk/widgets/video/deps/at;)J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->A:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-virtual {v0, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->b(J)J

    move-result-wide v5

    goto :goto_2

    :cond_4
    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->f:J

    .line 73
    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/dX;->a(J)Lcom/google/vr/sdk/widgets/video/deps/as;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->J:Lcom/google/vr/sdk/widgets/video/deps/as;

    :cond_5
    if-eqz v3, :cond_6

    .line 75
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->L:I

    invoke-interface {v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 77
    :try_start_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->O:Z

    if-nez v0, :cond_7

    .line 78
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->J:Lcom/google/vr/sdk/widgets/video/deps/as;

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/as;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 81
    :try_start_2
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->L:I

    throw v0

    .line 79
    :cond_7
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->L:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    .line 85
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->P:Z

    return-void

    :catchall_1
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    throw v0
.end method

.method private j()Lcom/google/vr/sdk/widgets/video/deps/as;
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->l:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    const-string/jumbo v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v3, ".webvtt"

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v3, ".vtt"

    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->E:Z

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->C:Lcom/google/vr/sdk/widgets/video/deps/as;

    goto/16 :goto_4

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    const-string v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->B:Ljava/lang/String;

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    const-string v4, ".m4"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x10

    .line 132
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->F:Ljava/util/List;

    if-eqz v1, :cond_3

    const/16 v0, 0x30

    goto :goto_0

    .line 135
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 136
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    .line 137
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 138
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gx;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    or-int/lit8 v0, v0, 0x2

    .line 140
    :cond_4
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gx;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "video/avc"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    or-int/lit8 v0, v0, 0x4

    .line 142
    :cond_5
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/bN;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->A:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/bw;

    invoke-direct {v5, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bw;-><init>(ILjava/util/List;)V

    const/4 v0, 0x2

    invoke-direct {v3, v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/bN;-><init>(ILcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/bO$c;)V

    move v1, v2

    move-object v0, v3

    goto :goto_4

    .line 130
    :cond_6
    :goto_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aU;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->A:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-direct {v0, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/aU;-><init>(ILcom/google/vr/sdk/widgets/video/deps/gJ;)V

    goto :goto_3

    .line 124
    :cond_7
    :goto_2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ed;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->A:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-direct {v0, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ed;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gJ;)V

    :goto_3
    move v1, v2

    :goto_4
    if-eqz v1, :cond_8

    .line 144
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->N:Lcom/google/vr/sdk/widgets/video/deps/eb;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/as;->a(Lcom/google/vr/sdk/widgets/video/deps/au;)V

    :cond_8
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->O:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eb;)V
    .locals 2

    .line 28
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->N:Lcom/google/vr/sdk/widgets/video/deps/eb;

    .line 29
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->j:I

    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->D:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(IZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->O:Z

    return v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->J:Lcom/google/vr/sdk/widgets/video/deps/as;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->G:Z

    if-nez v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dX;->j()Lcom/google/vr/sdk/widgets/video/deps/as;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->J:Lcom/google/vr/sdk/widgets/video/deps/as;

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dX;->d()V

    .line 39
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->O:Z

    if-nez v0, :cond_1

    .line 40
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dX;->i()V

    :cond_1
    return-void
.end method

.method public f()J
    .locals 2

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->L:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dX;->P:Z

    return v0
.end method
