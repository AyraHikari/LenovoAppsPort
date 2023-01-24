.class public final Lcom/google/vr/sdk/widgets/video/deps/bB;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bB$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x6

.field private static final b:I = 0x7

.field private static final c:I = 0x8


# instance fields
.field private final d:Lcom/google/vr/sdk/widgets/video/deps/bL;

.field private final e:Z

.field private final f:Z

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/bG;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/bG;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/bG;

.field private j:J

.field private final k:[Z

.field private l:Ljava/lang/String;

.field private m:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

.field private o:Z

.field private p:J

.field private final q:Lcom/google/vr/sdk/widgets/video/deps/gA;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bL;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->d:Lcom/google/vr/sdk/widgets/video/deps/bL;

    .line 3
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->e:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->f:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->k:[Z

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bG;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bG;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bG;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->i:Lcom/google/vr/sdk/widgets/video/deps/bG;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-void
.end method

.method private a(JIIJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 60
    iget-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->o:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    :cond_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b(I)Z

    .line 62
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b(I)Z

    .line 63
    iget-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->o:Z

    const/4 v3, 0x3

    if-nez v2, :cond_1

    .line 64
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a([BII)Lcom/google/vr/sdk/widgets/video/deps/gy$b;

    move-result-object v2

    .line 69
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {v4, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/gy;->b([BII)Lcom/google/vr/sdk/widgets/video/deps/gy$a;

    move-result-object v3

    .line 70
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->m:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->l:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    iget v9, v2, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->b:I

    iget v10, v2, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->c:I

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v13, -0x1

    iget v14, v2, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->d:F

    const/16 v16, 0x0

    const-string/jumbo v5, "video/avc"

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-static/range {v4 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->o:Z

    .line 72
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a(Lcom/google/vr/sdk/widgets/video/deps/gy$b;)V

    .line 73
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a(Lcom/google/vr/sdk/widgets/video/deps/gy$a;)V

    .line 74
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    .line 75
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {v1, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a([BII)Lcom/google/vr/sdk/widgets/video/deps/gy$b;

    move-result-object v1

    .line 79
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a(Lcom/google/vr/sdk/widgets/video/deps/gy$b;)V

    .line 80
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {v1, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/gy;->b([BII)Lcom/google/vr/sdk/widgets/video/deps/gy$a;

    move-result-object v1

    .line 83
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a(Lcom/google/vr/sdk/widgets/video/deps/gy$a;)V

    .line 84
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    .line 85
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->i:Lcom/google/vr/sdk/widgets/video/deps/bG;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->i:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->i:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a([BI)I

    move-result v1

    .line 87
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->i:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    invoke-virtual {v2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 88
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 89
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->d:Lcom/google/vr/sdk/widgets/video/deps/bL;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    move-wide/from16 v3, p5

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/bL;->a(JLcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 90
    :cond_4
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    move-wide/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a(JI)V

    return-void
.end method

.method private a(JIJ)V
    .locals 7

    .line 48
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a(I)V

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a(I)V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->i:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a(I)V

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a(JIJ)V

    return-void
.end method

.method private a([BII)V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a([BII)V

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a([BII)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->i:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a([BII)V

    .line 58
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a([BII)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->k:[Z

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a([Z)V

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->g:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->h:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->i:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->b()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->j:J

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->p:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 4

    .line 18
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 19
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->l:Ljava/lang/String;

    .line 20
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->m:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 21
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->m:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->e:Z

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->f:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aA;ZZ)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->n:Lcom/google/vr/sdk/widgets/video/deps/bB$a;

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->d:Lcom/google/vr/sdk/widgets/video/deps/bL;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bL;->a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 14

    .line 26
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    .line 27
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v1

    .line 28
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 29
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->j:J

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->j:J

    .line 30
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->m:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 31
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->k:[Z

    invoke-static {v2, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 33
    invoke-direct {p0, v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bB;->a([BII)V

    return-void

    .line 35
    :cond_0
    invoke-static {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gy;->b([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    .line 38
    invoke-direct {p0, v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bB;->a([BII)V

    :cond_1
    sub-int v10, v1, p1

    .line 40
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->j:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    .line 42
    iget-wide v12, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->p:J

    move-object v7, p0

    move-wide v8, v4

    .line 43
    invoke-direct/range {v7 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/bB;->a(JIIJ)V

    .line 44
    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bB;->p:J

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/bB;->a(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method
