.class public final Lcom/google/vr/sdk/widgets/video/deps/bC;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bC$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "H265Reader"

.field private static final b:I = 0x9

.field private static final c:I = 0x10

.field private static final d:I = 0x15

.field private static final e:I = 0x20

.field private static final f:I = 0x21

.field private static final g:I = 0x22

.field private static final h:I = 0x27

.field private static final i:I = 0x28


# instance fields
.field private final j:Lcom/google/vr/sdk/widgets/video/deps/bL;

.field private k:Ljava/lang/String;

.field private l:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private m:Lcom/google/vr/sdk/widgets/video/deps/bC$a;

.field private n:Z

.field private final o:[Z

.field private final p:Lcom/google/vr/sdk/widgets/video/deps/bG;

.field private final q:Lcom/google/vr/sdk/widgets/video/deps/bG;

.field private final r:Lcom/google/vr/sdk/widgets/video/deps/bG;

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/bG;

.field private final t:Lcom/google/vr/sdk/widgets/video/deps/bG;

.field private u:J

.field private v:J

.field private final w:Lcom/google/vr/sdk/widgets/video/deps/gA;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bL;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->j:Lcom/google/vr/sdk/widgets/video/deps/bL;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->o:[Z

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bG;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->p:Lcom/google/vr/sdk/widgets/video/deps/bG;

    .line 5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bG;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->q:Lcom/google/vr/sdk/widgets/video/deps/bG;

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bG;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->r:Lcom/google/vr/sdk/widgets/video/deps/bG;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bG;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->s:Lcom/google/vr/sdk/widgets/video/deps/bG;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bG;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bG;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->t:Lcom/google/vr/sdk/widgets/video/deps/bG;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/bG;Lcom/google/vr/sdk/widgets/video/deps/bG;Lcom/google/vr/sdk/widgets/video/deps/bG;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 89
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 90
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    iget v7, v1, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget-object v4, v2, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    iget v5, v1, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    add-int/2addr v0, v5

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {v4, v6, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gB;

    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-direct {v0, v2, v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;-><init>([BII)V

    const/16 v1, 0x2c

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    const/4 v1, 0x3

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c(I)I

    move-result v2

    .line 96
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a()V

    const/16 v4, 0x58

    .line 97
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    const/16 v4, 0x8

    .line 98
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    move v5, v6

    move v7, v5

    :goto_0
    if-ge v5, v2, :cond_2

    .line 101
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x59

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    const/4 v5, 0x2

    if-lez v2, :cond_3

    rsub-int/lit8 v7, v2, 0x8

    mul-int/2addr v7, v5

    .line 108
    invoke-virtual {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    .line 109
    :cond_3
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 110
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v7

    if-ne v7, v1, :cond_4

    .line 112
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a()V

    .line 113
    :cond_4
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v1

    .line 114
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v8

    .line 115
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_8

    .line 116
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v9

    .line 117
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v11

    .line 118
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v12

    .line 119
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v13

    if-eq v7, v10, :cond_6

    if-ne v7, v5, :cond_5

    goto :goto_1

    :cond_5
    move v14, v10

    goto :goto_2

    :cond_6
    :goto_1
    move v14, v5

    :goto_2
    if-ne v7, v10, :cond_7

    move v7, v5

    goto :goto_3

    :cond_7
    move v7, v10

    :goto_3
    add-int/2addr v9, v11

    mul-int/2addr v14, v9

    sub-int/2addr v1, v14

    add-int/2addr v12, v13

    mul-int/2addr v7, v12

    sub-int/2addr v8, v7

    :cond_8
    move/from16 v16, v1

    move/from16 v17, v8

    .line 124
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 125
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 126
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v1

    .line 127
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v6

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    if-gt v7, v2, :cond_a

    .line 128
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 129
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 130
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 132
    :cond_a
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 133
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 134
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 135
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 136
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 137
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 138
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 139
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 140
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bC;->a(Lcom/google/vr/sdk/widgets/video/deps/gB;)V

    .line 141
    :cond_b
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    .line 142
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 143
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    .line 144
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 145
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 146
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a()V

    .line 147
    :cond_c
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bC;->b(Lcom/google/vr/sdk/widgets/video/deps/gB;)V

    .line 148
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 149
    :goto_5
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v2

    if-ge v6, v2, :cond_d

    add-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v10

    .line 151
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 153
    :cond_d
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 155
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 156
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 157
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c(I)I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_e

    const/16 v2, 0x10

    .line 159
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c(I)I

    move-result v4

    .line 160
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c(I)I

    move-result v0

    if-eqz v4, :cond_10

    if-eqz v0, :cond_10

    int-to-float v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_6

    .line 163
    :cond_e
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gy;->c:[F

    array-length v0, v0

    if-ge v2, v0, :cond_f

    .line 164
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gy;->c:[F

    aget v0, v0, v2

    move/from16 v21, v0

    goto :goto_7

    :cond_f
    const/16 v0, 0x2e

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H265Reader"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_6
    move/from16 v21, v1

    :goto_7
    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 167
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v22, 0x0

    const-string/jumbo v12, "video/hevc"

    move-object/from16 v11, p0

    .line 168
    invoke-static/range {v11 .. v22}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method private a(JIIJ)V
    .locals 8

    .line 54
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->n:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->m:Lcom/google/vr/sdk/widgets/video/deps/bC$a;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->a(JIIJ)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->p:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a(I)V

    .line 57
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->q:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a(I)V

    .line 58
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->r:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a(I)V

    .line 59
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->s:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a(I)V

    .line 60
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->t:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a(I)V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gB;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    move v3, v0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    goto :goto_3

    :cond_0
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    .line 173
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->e()I

    :cond_1
    move v6, v0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->e()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    move v5, v4

    :cond_3
    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a([BII)V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->n:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->m:Lcom/google/vr/sdk/widgets/video/deps/bC$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->a([BII)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->p:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a([BII)V

    .line 65
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->q:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a([BII)V

    .line 66
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->r:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a([BII)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->s:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a([BII)V

    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->t:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a([BII)V

    return-void
.end method

.method private b(JIIJ)V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->n:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->m:Lcom/google/vr/sdk/widgets/video/deps/bC$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->a(JI)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->p:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b(I)Z

    .line 73
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->q:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b(I)Z

    .line 74
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->r:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b(I)Z

    .line 75
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->p:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->q:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->r:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->l:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->k:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->p:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->q:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->r:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-static {p2, p3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bC;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/bG;Lcom/google/vr/sdk/widgets/video/deps/bG;Lcom/google/vr/sdk/widgets/video/deps/bG;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->n:Z

    .line 78
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->s:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_2

    .line 79
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->s:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->s:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget p3, p3, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a([BI)I

    move-result p1

    .line 80
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->s:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    invoke-virtual {p3, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 81
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 82
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->j:Lcom/google/vr/sdk/widgets/video/deps/bL;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, p5, p6, p3}, Lcom/google/vr/sdk/widgets/video/deps/bL;->a(JLcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->t:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/bG;->b(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->t:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->t:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget p3, p3, Lcom/google/vr/sdk/widgets/video/deps/bG;->b:I

    invoke-static {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a([BI)I

    move-result p1

    .line 85
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->t:Lcom/google/vr/sdk/widgets/video/deps/bG;

    iget-object p4, p4, Lcom/google/vr/sdk/widgets/video/deps/bG;->a:[B

    invoke-virtual {p3, p4, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 86
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 87
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->j:Lcom/google/vr/sdk/widgets/video/deps/bL;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, p5, p6, p2}, Lcom/google/vr/sdk/widgets/video/deps/bL;->a(JLcom/google/vr/sdk/widgets/video/deps/gA;)V

    :cond_3
    return-void
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gB;)V
    .locals 8

    .line 182
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_6

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a()V

    .line 190
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move v5, v1

    :goto_1
    if-gt v5, v4, :cond_5

    .line 192
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v4

    .line 196
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v5

    add-int v6, v4, v5

    move v7, v1

    :goto_2
    if-ge v7, v4, :cond_3

    .line 199
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 200
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_3
    if-ge v4, v5, :cond_4

    .line 203
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 204
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->o:[Z

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a([Z)V

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->p:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->q:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->r:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->s:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->t:Lcom/google/vr/sdk/widgets/video/deps/bG;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bG;->a()V

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->m:Lcom/google/vr/sdk/widgets/video/deps/bC$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->a()V

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->u:J

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->v:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 2

    .line 20
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 21
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->k:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->l:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 23
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->l:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bC$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->m:Lcom/google/vr/sdk/widgets/video/deps/bC$a;

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC;->j:Lcom/google/vr/sdk/widgets/video/deps/bL;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bL;->a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 28
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lez v0, :cond_4

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v9

    .line 31
    iget-object v10, v8, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 32
    iget-wide v1, v7, Lcom/google/vr/sdk/widgets/video/deps/bC;->u:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/google/vr/sdk/widgets/video/deps/bC;->u:J

    .line 33
    iget-object v1, v7, Lcom/google/vr/sdk/widgets/video/deps/bC;->l:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v2

    invoke-interface {v1, v8, v2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    :goto_0
    if-ge v0, v9, :cond_0

    .line 35
    iget-object v1, v7, Lcom/google/vr/sdk/widgets/video/deps/bC;->o:[Z

    invoke-static {v10, v0, v9, v1}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a([BII[Z)I

    move-result v11

    if-ne v11, v9, :cond_1

    .line 37
    invoke-direct {v7, v10, v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/bC;->a([BII)V

    return-void

    .line 39
    :cond_1
    invoke-static {v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/gy;->c([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_2

    .line 42
    invoke-direct {v7, v10, v0, v11}, Lcom/google/vr/sdk/widgets/video/deps/bC;->a([BII)V

    :cond_2
    sub-int v13, v9, v11

    .line 44
    iget-wide v2, v7, Lcom/google/vr/sdk/widgets/video/deps/bC;->u:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_3

    neg-int v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v4, v0

    .line 46
    iget-wide v5, v7, Lcom/google/vr/sdk/widgets/video/deps/bC;->v:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/bC;->b(JIIJ)V

    .line 48
    iget-wide v5, v7, Lcom/google/vr/sdk/widgets/video/deps/bC;->v:J

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/bC;->a(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
