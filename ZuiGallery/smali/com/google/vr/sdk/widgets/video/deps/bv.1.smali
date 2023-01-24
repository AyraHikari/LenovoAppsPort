.class public final Lcom/google/vr/sdk/widgets/video/deps/bv;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bz;


# static fields
.field private static final a:Ljava/lang/String; = "AdtsReader"

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x5

.field private static final g:I = 0x2

.field private static final h:I = 0x8

.field private static final i:I = 0x100

.field private static final j:I = 0x200

.field private static final k:I = 0x300

.field private static final l:I = 0x400

.field private static final m:I = 0xa

.field private static final n:I = 0x6

.field private static final o:[B


# instance fields
.field private A:Z

.field private B:J

.field private C:I

.field private D:J

.field private E:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private F:J

.field private final p:Z

.field private final q:Lcom/google/vr/sdk/widgets/video/deps/gz;

.field private final r:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private v:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 124
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/bv;->o:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bv;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->q:Lcom/google/vr/sdk/widgets/video/deps/gz;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bv;->o:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 6
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bv;->c()V

    .line 7
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->p:Z

    .line 8
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->s:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/aA;JII)V
    .locals 1

    const/4 v0, 0x3

    .line 49
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->w:I

    .line 50
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    .line 51
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->E:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 52
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->F:J

    .line 53
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->C:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z
    .locals 2

    .line 36
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 37
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 38
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 7

    .line 58
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 59
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    .line 60
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_7

    add-int/lit8 v3, v1, 0x1

    .line 62
    aget-byte v1, v0, v1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    .line 63
    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->y:I

    const/16 v6, 0x200

    if-ne v5, v6, :cond_1

    const/16 v5, 0xf0

    if-lt v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_1
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->z:Z

    .line 65
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bv;->e()V

    .line 66
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-void

    .line 68
    :cond_1
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->y:I

    or-int/2addr v1, v4

    const/16 v5, 0x149

    if-eq v1, v5, :cond_5

    const/16 v5, 0x1ff

    if-eq v1, v5, :cond_4

    const/16 v5, 0x344

    if-eq v1, v5, :cond_3

    const/16 v5, 0x433

    if-eq v1, v5, :cond_2

    const/16 v1, 0x100

    if-eq v4, v1, :cond_6

    .line 79
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->y:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bv;->d()V

    .line 76
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-void

    :cond_3
    const/16 v1, 0x400

    .line 73
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->y:I

    goto :goto_2

    .line 69
    :cond_4
    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->y:I

    goto :goto_2

    :cond_5
    const/16 v1, 0x300

    .line 71
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->y:I

    :cond_6
    :goto_2
    move v1, v3

    goto :goto_0

    .line 82
    :cond_7
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->w:I

    .line 41
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    const/16 v0, 0x100

    .line 42
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->y:I

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 7

    .line 116
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->C:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->E:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 118
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    .line 119
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->C:I

    if-ne p1, v4, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->E:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->D:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    .line 121
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->D:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->F:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->D:J

    .line 122
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bv;->c()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->w:I

    .line 45
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/bv;->o:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->C:I

    .line 47
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x2

    .line 55
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->w:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->x:I

    return-void
.end method

.method private f()V
    .locals 9

    .line 84
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->v:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 85
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 86
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->v:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 87
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->w()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    .line 88
    invoke-direct/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/bv;->a(Lcom/google/vr/sdk/widgets/video/deps/aA;JII)V

    return-void
.end method

.method private g()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 90
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->q:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    .line 91
    iget-boolean v0, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->A:Z

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 92
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->q:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-eq v0, v2, :cond_0

    const/16 v4, 0x3d

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdtsReader"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 96
    :cond_0
    iget-object v4, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->q:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v4

    .line 97
    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->q:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 98
    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->q:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v5

    .line 99
    invoke-static {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gp;->a(III)[B

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gp;->a([B)Landroid/util/Pair;

    move-result-object v4

    .line 101
    iget-object v7, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->t:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 102
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 103
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->s:Ljava/lang/String;

    const-string v8, "audio/mp4a-latm"

    move-object/from16 v17, v0

    .line 104
    invoke-static/range {v7 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    .line 105
    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    int-to-long v7, v7

    div-long/2addr v4, v7

    iput-wide v4, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->B:J

    .line 106
    iget-object v4, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->u:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 107
    iput-boolean v3, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->A:Z

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->q:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 110
    :goto_0
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->q:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 111
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->q:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x5

    .line 112
    iget-boolean v1, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->z:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x2

    :cond_2
    move v5, v0

    .line 114
    iget-object v1, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->u:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v2, v6, Lcom/google/vr/sdk/widgets/video/deps/bv;->B:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/bv;->a(Lcom/google/vr/sdk/widgets/video/deps/aA;JII)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bv;->c()V

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->D:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 3

    .line 12
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 13
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->t:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->u:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 15
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->p:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 17
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->v:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 18
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "application/id3"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ar;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ar;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->v:Lcom/google/vr/sdk/widgets/video/deps/aA;

    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lez v0, :cond_6

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->w:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bv;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    goto :goto_0

    .line 29
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->z:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    .line 30
    :goto_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->q:Lcom/google/vr/sdk/widgets/video/deps/gz;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bv;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bv;->g()V

    goto :goto_0

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bv;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bv;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bv;->f()V

    goto :goto_0

    .line 25
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bv;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
