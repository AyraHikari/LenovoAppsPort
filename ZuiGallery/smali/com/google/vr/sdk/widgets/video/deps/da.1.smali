.class public final Lcom/google/vr/sdk/widgets/video/deps/da;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/aA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/da$a;,
        Lcom/google/vr/sdk/widgets/video/deps/da$b;
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field private static final b:I = 0x20


# instance fields
.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fn;

.field private final d:I

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/cZ$a;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

.field private j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private l:Z

.field private m:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private n:J

.field private o:J

.field private p:Z

.field private q:Lcom/google/vr/sdk/widgets/video/deps/da$b;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fn;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->c:Lcom/google/vr/sdk/widgets/video/deps/fn;

    .line 3
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->d()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->d:I

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/cZ;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    .line 5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->f:Lcom/google/vr/sdk/widgets/video/deps/cZ$a;

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->d:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(JI)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 9
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/m;J)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 212
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 213
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(J)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private a(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(J)V

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 118
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->d:Lcom/google/vr/sdk/widgets/video/deps/fm;

    .line 120
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:[B

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-virtual {v2, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->e:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(J[BI)V
    .locals 5

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(J)V

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/da$a;->d:Lcom/google/vr/sdk/widgets/video/deps/fm;

    .line 132
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:[B

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-virtual {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a(J)I

    move-result v3

    sub-int v4, p4, v0

    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 135
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->e:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/T;Lcom/google/vr/sdk/widgets/video/deps/cZ$a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 73
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->b:J

    .line 74
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 75
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(J[BI)V

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    .line 77
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    and-int/lit8 v5, v5, 0x7f

    .line 80
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/T;->d:Lcom/google/vr/sdk/widgets/video/deps/Q;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/Q;->a:[B

    if-nez v9, :cond_1

    .line 81
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/T;->d:Lcom/google/vr/sdk/widgets/video/deps/Q;

    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v9, Lcom/google/vr/sdk/widgets/video/deps/Q;->a:[B

    .line 82
    :cond_1
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/T;->d:Lcom/google/vr/sdk/widgets/video/deps/Q;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/Q;->a:[B

    invoke-direct {v0, v3, v4, v9, v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(J[BI)V

    int-to-long v9, v5

    add-long/2addr v3, v9

    if-eqz v8, :cond_2

    .line 85
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 86
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 88
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v6

    :cond_2
    move v10, v6

    .line 90
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/T;->d:Lcom/google/vr/sdk/widgets/video/deps/Q;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/Q;->d:[I

    if-eqz v5, :cond_3

    .line 91
    array-length v6, v5

    if-ge v6, v10, :cond_4

    .line 92
    :cond_3
    new-array v5, v10, [I

    :cond_4
    move-object v11, v5

    .line 93
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/T;->d:Lcom/google/vr/sdk/widgets/video/deps/Q;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/Q;->e:[I

    if-eqz v5, :cond_5

    .line 94
    array-length v6, v5

    if-ge v6, v10, :cond_6

    .line 95
    :cond_5
    new-array v5, v10, [I

    :cond_6
    move-object v12, v5

    if-eqz v8, :cond_7

    mul-int/lit8 v5, v10, 0x6

    .line 98
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 99
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 101
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    :goto_1
    if-ge v7, v10, :cond_8

    .line 103
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v5

    aput v5, v11, v7

    .line 104
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v5

    aput v5, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 107
    :cond_7
    aput v7, v11, v7

    .line 108
    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->a:I

    iget-wide v8, v2, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->b:J

    sub-long v8, v3, v8

    long-to-int v6, v8

    sub-int/2addr v5, v6

    aput v5, v12, v7

    .line 109
    :cond_8
    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->c:Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    .line 110
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/T;->d:Lcom/google/vr/sdk/widgets/video/deps/Q;

    iget-object v13, v5, Lcom/google/vr/sdk/widgets/video/deps/aA$a;->b:[B

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/T;->d:Lcom/google/vr/sdk/widgets/video/deps/Q;

    iget-object v14, v1, Lcom/google/vr/sdk/widgets/video/deps/Q;->a:[B

    iget v15, v5, Lcom/google/vr/sdk/widgets/video/deps/aA$a;->a:I

    iget v1, v5, Lcom/google/vr/sdk/widgets/video/deps/aA$a;->c:I

    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/aA$a;->d:I

    move/from16 v16, v1

    move/from16 v17, v5

    invoke-virtual/range {v9 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/Q;->a(I[I[I[B[BIII)V

    .line 111
    iget-wide v5, v2, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->b:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 112
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->b:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->b:J

    .line 113
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->a:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->a:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/da$a;)V
    .locals 5

    .line 192
    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->c:Z

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a:J

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->d:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 195
    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/fm;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 198
    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->d:Lcom/google/vr/sdk/widgets/video/deps/fm;

    aput-object v3, v1, v2

    .line 199
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a()Lcom/google/vr/sdk/widgets/video/deps/da$a;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->c:Lcom/google/vr/sdk/widgets/video/deps/fn;

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->a([Lcom/google/vr/sdk/widgets/video/deps/fm;)V

    return-void
.end method

.method private b(J)V
    .locals 2

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->e:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)I
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->c:Z

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->c:Lcom/google/vr/sdk/widgets/video/deps/fn;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->a()Lcom/google/vr/sdk/widgets/video/deps/fm;

    move-result-object v1

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->d:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fm;Lcom/google/vr/sdk/widgets/video/deps/da$a;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private c(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->c:Lcom/google/vr/sdk/widgets/video/deps/fn;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->d:Lcom/google/vr/sdk/widgets/video/deps/fm;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->a(Lcom/google/vr/sdk/widgets/video/deps/fm;)V

    .line 146
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a()Lcom/google/vr/sdk/widgets/video/deps/da$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a:J

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    :cond_2
    return-void
.end method

.method private d(I)V
    .locals 4

    .line 206
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    .line 207
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->e:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 163
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->c(I)I

    move-result p2

    .line 164
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->d:Lcom/google/vr/sdk/widgets/video/deps/fm;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:[B

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    .line 165
    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a(J)I

    move-result v1

    .line 166
    invoke-interface {p1, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 170
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 171
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->d(I)V

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;ZZJ)I
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->k:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->f:Lcom/google/vr/sdk/widgets/video/deps/cZ$a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;ZZLcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/cZ$a;)I

    move-result p3

    const/4 p4, -0x5

    if-eq p3, p4, :cond_5

    const/4 p1, -0x4

    if-eq p3, p1, :cond_1

    const/4 p1, -0x3

    if-ne p3, p1, :cond_0

    return p1

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 63
    :cond_1
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/T;->c()Z

    move-result p3

    if-nez p3, :cond_4

    .line 64
    iget-wide p3, p2, Lcom/google/vr/sdk/widgets/video/deps/T;->f:J

    cmp-long p3, p3, p5

    if-gez p3, :cond_2

    const/high16 p3, -0x80000000

    .line 65
    invoke-virtual {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/T;->b(I)V

    .line 66
    :cond_2
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/T;->g()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 67
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->f:Lcom/google/vr/sdk/widgets/video/deps/cZ$a;

    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/T;Lcom/google/vr/sdk/widgets/video/deps/cZ$a;)V

    .line 68
    :cond_3
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->f:Lcom/google/vr/sdk/widgets/video/deps/cZ$a;

    iget p3, p3, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->a:I

    invoke-virtual {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/T;->e(I)V

    .line 69
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->f:Lcom/google/vr/sdk/widgets/video/deps/cZ$a;

    iget-wide p3, p3, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->b:J

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    iget-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->f:Lcom/google/vr/sdk/widgets/video/deps/cZ$a;

    iget p5, p5, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->a:I

    invoke-direct {p0, p3, p4, p2, p5}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(JLjava/nio/ByteBuffer;I)V

    :cond_4
    return p1

    .line 61
    :cond_5
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->k:Lcom/google/vr/sdk/widgets/video/deps/m;

    return p4
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Z)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b(I)V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->n:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 153
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->n:J

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->l:Z

    :cond_0
    return-void
.end method

.method public a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V
    .locals 12

    move-object v0, p0

    move-wide v1, p1

    .line 182
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->l:Z

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->m:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 184
    :cond_0
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->p:Z

    if-eqz v3, :cond_3

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2

    .line 185
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b(J)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 187
    iput-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->p:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 188
    :cond_3
    :goto_1
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->n:J

    add-long v5, v1, v3

    .line 189
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    move/from16 v3, p4

    int-to-long v7, v3

    sub-long/2addr v1, v7

    move/from16 v4, p5

    int-to-long v7, v4

    sub-long v8, v1, v7

    .line 190
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    move v7, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a(JIJILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    return-void
.end method

.method public a(JZZ)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b(JZZ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->c(J)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/da$b;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->q:Lcom/google/vr/sdk/widgets/video/deps/da$b;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 174
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->c(I)I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->d:Lcom/google/vr/sdk/widgets/video/deps/fm;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:[B

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    .line 176
    invoke-virtual {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a(J)I

    move-result v2

    .line 177
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    sub-int/2addr p2, v0

    .line 179
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->d(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->n:J

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/m;J)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)Z

    move-result v1

    .line 158
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->m:Lcom/google/vr/sdk/widgets/video/deps/m;

    const/4 p1, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->l:Z

    .line 160
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->q:Lcom/google/vr/sdk/widgets/video/deps/da$b;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 161
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/da$b;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a(Z)V

    .line 14
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/da$a;)V

    .line 15
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->d:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(JI)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 16
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 17
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 18
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    .line 19
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->c:Lcom/google/vr/sdk/widgets/video/deps/fn;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->b()V

    return-void
.end method

.method public b(JZZ)I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a(JZZ)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->p:Z

    return-void
.end method

.method public b(I)V
    .locals 5

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 33
    :goto_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 34
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->e:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->e:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 36
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/da$a;)V

    .line 37
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->d:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(JI)V

    iput-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->e:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 38
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->e:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    goto :goto_1

    :cond_2
    move-object v1, p1

    .line 39
    :goto_1
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    if-ne v1, v0, :cond_4

    .line 41
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;->e:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    goto :goto_3

    .line 28
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/da$a;)V

    .line 29
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->o:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->d:I

    invoke-direct {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(JI)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 30
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    .line 31
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->j:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    :cond_4
    :goto_3
    return-void
.end method

.method public c()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->c()I

    move-result v0

    return v0
.end method

.method public g()Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g()V

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->h:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->i:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    return-void
.end method

.method public j()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->i()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->c(J)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->c(J)V

    return-void
.end method

.method public l()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da;->e:Lcom/google/vr/sdk/widgets/video/deps/cZ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->h()I

    move-result v0

    return v0
.end method
