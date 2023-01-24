.class final Lcom/google/vr/sdk/widgets/video/deps/N;
.super Ljava/lang/Object;
.source "Sonic.java"


# static fields
.field private static final a:Z = false

.field private static final b:I = 0x41

.field private static final c:I = 0x190

.field private static final d:I = 0xfa0


# instance fields
.field private A:I

.field private B:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:[S

.field private k:I

.field private l:[S

.field private m:I

.field private n:[S

.field private o:I

.field private p:[S

.field private q:I

.field private r:I

.field private s:F

.field private t:F

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->e:I

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    .line 4
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->g:I

    .line 5
    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->h:I

    mul-int/lit8 p1, p1, 0x2

    .line 6
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->i:I

    .line 7
    new-array v0, p1, [S

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->j:[S

    .line 8
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->k:I

    mul-int v0, p1, p2

    .line 9
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    .line 10
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->m:I

    mul-int v0, p1, p2

    .line 11
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    .line 12
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->o:I

    mul-int/2addr p1, p2

    .line 13
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->p:[S

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->q:I

    .line 15
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->r:I

    .line 16
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->y:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->s:F

    .line 18
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->t:F

    return-void
.end method

.method private a([SIFI)I
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p3, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    int-to-float v0, p4

    sub-float/2addr p3, v2

    div-float/2addr v0, p3

    float-to-int p3, v0

    goto :goto_0

    :cond_0
    int-to-float v1, p4

    sub-float/2addr v0, p3

    mul-float/2addr v1, v0

    sub-float/2addr p3, v2

    div-float/2addr v1, p3

    float-to-int p3, v1

    .line 207
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->x:I

    move p3, p4

    .line 208
    :goto_0
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(I)V

    .line 209
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    add-int v7, p2, p4

    move v0, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(II[SI[SI[SI)V

    .line 210
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    return p3
.end method

.method private a([SIII)I
    .locals 9

    .line 90
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    move v3, v1

    move v4, v3

    :goto_0
    if-gt p3, p4, :cond_3

    move v5, v1

    move v6, v5

    :goto_1
    if-ge v5, p3, :cond_0

    add-int v7, p2, v5

    .line 94
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 95
    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    .line 96
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_1

    move v3, p3

    move v0, v6

    :cond_1
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_2

    move v2, p3

    move v4, v6

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 105
    :cond_3
    div-int/2addr v0, v3

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->A:I

    .line 106
    div-int/2addr v4, v2

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->B:I

    return v3
.end method

.method private a([SIZ)I
    .locals 6

    .line 118
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->e:I

    const/16 v1, 0xfa0

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 119
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 120
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->g:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->h:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/N;->a([SIII)I

    move-result p1

    goto :goto_1

    .line 121
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/N;->b([SII)V

    .line 122
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->j:[S

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->g:I

    div-int/2addr v3, v0

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->h:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/N;->a([SIII)I

    move-result v1

    if-eq v0, v2, :cond_5

    mul-int/2addr v1, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int v3, v1, v0

    add-int/2addr v1, v0

    .line 127
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->g:I

    if-ge v3, v0, :cond_2

    move v3, v0

    .line 129
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->h:I

    if-le v1, v0, :cond_3

    move v1, v0

    .line 131
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    if-ne v0, v2, :cond_4

    .line 132
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/N;->a([SIII)I

    move-result p1

    goto :goto_1

    .line 133
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/N;->b([SII)V

    .line 134
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->j:[S

    invoke-direct {p0, p1, v5, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/N;->a([SIII)I

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v1

    .line 135
    :goto_1
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->A:I

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->B:I

    invoke-direct {p0, p2, v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(IIZ)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 136
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->y:I

    goto :goto_2

    :cond_6
    move p2, p1

    .line 138
    :goto_2
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->A:I

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->z:I

    .line 139
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->y:I

    return p2
.end method

.method private a(FI)V
    .locals 8

    .line 179
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    if-ne v0, p2, :cond_0

    return-void

    .line 181
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->e:I

    int-to-float v1, v0

    div-float/2addr v1, p1

    float-to-int p1, v1

    :goto_0
    const/16 v1, 0x4000

    if-gt p1, v1, :cond_7

    if-le v0, v1, :cond_1

    goto :goto_5

    .line 186
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/N;->e(I)V

    const/4 p2, 0x0

    move v1, p2

    .line 187
    :goto_1
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-ge v1, v3, :cond_6

    .line 188
    :goto_2
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->q:I

    add-int/lit8 v3, v2, 0x1

    mul-int/2addr v3, p1

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->r:I

    mul-int v6, v5, v0

    if-le v3, v6, :cond_3

    .line 189
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(I)V

    move v2, p2

    .line 190
    :goto_3
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    if-ge v2, v3, :cond_2

    .line 191
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->p:[S

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 192
    invoke-direct {p0, v7, v3, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/N;->b([SIII)S

    move-result v3

    aput-short v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 194
    :cond_2
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->r:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->r:I

    .line 195
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 196
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->q:I

    if-ne v2, v0, :cond_5

    .line 198
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->q:I

    if-ne v5, p1, :cond_4

    goto :goto_4

    :cond_4
    move v4, p2

    .line 199
    :goto_4
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 200
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->r:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v2, v4

    .line 202
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/N;->f(I)V

    return-void

    .line 184
    :cond_7
    :goto_5
    div-int/lit8 p1, p1, 0x2

    .line 185
    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .line 54
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->m:I

    if-le v0, v1, :cond_0

    .line 55
    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->m:I

    .line 56
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    :cond_0
    return-void
.end method

.method private static a(III[SI[SI[SI)V
    .locals 12

    move v0, p0

    move v1, p1

    move v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    mul-int v5, p4, v1

    add-int/2addr v5, v4

    mul-int v6, p8, v1

    add-int/2addr v6, v4

    mul-int v7, p6, v1

    add-int/2addr v7, v4

    move v8, v3

    :goto_1
    add-int v9, v0, v2

    if-ge v8, v9, :cond_2

    if-ge v8, v2, :cond_0

    .line 261
    aget-short v9, p5, v7

    sub-int v10, v0, v8

    mul-int/2addr v9, v10

    div-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, p3, v5

    add-int/2addr v7, v1

    goto :goto_3

    :cond_0
    if-ge v8, v0, :cond_1

    .line 264
    aget-short v9, p5, v7

    sub-int v10, v0, v8

    mul-int/2addr v9, v10

    aget-short v10, p7, v6

    sub-int v11, v8, v2

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    div-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, p3, v5

    add-int/2addr v7, v1

    goto :goto_2

    .line 267
    :cond_1
    aget-short v9, p7, v6

    sub-int v10, v8, v2

    mul-int/2addr v9, v10

    div-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, p3, v5

    :goto_2
    add-int/2addr v6, v1

    :goto_3
    add-int/2addr v5, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    move v5, v0

    :goto_1
    if-ge v5, p0, :cond_0

    .line 248
    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int/2addr v6, v7

    aget-short v7, p6, v3

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a([SII)V
    .locals 3

    .line 66
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(I)V

    .line 67
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr p2, v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    mul-int/2addr v2, v0

    mul-int/2addr v0, p3

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    return-void
.end method

.method private a(IIZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 108
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->y:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    mul-int/lit8 p3, p1, 0x3

    if-le p2, p3, :cond_1

    return v0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    .line 113
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->z:I

    mul-int/lit8 p2, p2, 0x3

    if-gt p1, p2, :cond_3

    return v0

    .line 115
    :cond_2
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->z:I

    if-gt p1, p2, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private b([SIFI)I
    .locals 9

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p3, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    int-to-float v0, p4

    mul-float/2addr v0, p3

    sub-float/2addr v1, p3

    div-float/2addr v0, v1

    float-to-int p3, v0

    goto :goto_0

    :cond_0
    int-to-float v0, p4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p3

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    sub-float/2addr v1, p3

    div-float/2addr v0, v1

    float-to-int p3, v0

    .line 215
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->x:I

    move p3, p4

    :goto_0
    add-int v8, p4, p3

    .line 216
    invoke-direct {p0, v8}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(I)V

    .line 217
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int v1, p2, v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    mul-int/2addr v3, v0

    mul-int/2addr v0, p4

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    add-int v3, v0, p4

    add-int v5, p2, p4

    move v0, p3

    move-object v4, p1

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(II[SI[SI[SI)V

    .line 219
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    return p3
.end method

.method private b([SIII)S
    .locals 2

    .line 171
    aget-short v0, p1, p2

    .line 172
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    add-int/2addr p2, v1

    aget-short p1, p1, p2

    .line 173
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->r:I

    mul-int/2addr p2, p3

    .line 174
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->q:I

    mul-int v1, p3, p4

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p4

    sub-int p2, p3, p2

    sub-int/2addr p3, v1

    mul-int/2addr v0, p2

    sub-int p2, p3, p2

    mul-int/2addr p2, p1

    add-int/2addr v0, p2

    .line 178
    div-int/2addr v0, p3

    int-to-short p1, v0

    return p1
.end method

.method private b(I)V
    .locals 2

    .line 58
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->k:I

    if-le v0, v1, :cond_0

    .line 59
    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->k:I

    .line 60
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    :cond_0
    return-void
.end method

.method private b([SII)V
    .locals 6

    .line 74
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->i:I

    div-int/2addr v0, p3

    .line 75
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr p3, v1

    mul-int/2addr p2, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, p3, :cond_0

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 80
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 82
    :cond_0
    div-int/2addr v4, p3

    .line 83
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->j:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(F)V
    .locals 7

    .line 221
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->i:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 225
    :cond_1
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->x:I

    if-lez v2, :cond_2

    .line 226
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/N;->d(I)I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    goto :goto_1

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/N;->a([SIZ)I

    move-result v2

    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 229
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/N;->a([SIFI)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 230
    :cond_3
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/N;->b([SIFI)I

    move-result v2

    goto :goto_0

    .line 231
    :goto_1
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->i:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_1

    .line 232
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/N;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 4

    .line 62
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    sub-int/2addr v0, p1

    .line 63
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr p1, v2

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v1, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    return-void
.end method

.method private d(I)I
    .locals 2

    .line 70
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->i:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    invoke-direct {p0, v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/N;->a([SII)V

    .line 72
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->x:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->x:I

    return v0
.end method

.method private e()V
    .locals 6

    .line 234
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    .line 235
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->s:F

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->t:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    const-wide v4, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_1

    const-wide v4, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/N;->a([SII)V

    .line 239
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    goto :goto_1

    .line 237
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/N;->c(F)V

    .line 240
    :goto_1
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->t:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 241
    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(FI)V

    :cond_2
    return-void
.end method

.method private e(I)V
    .locals 6

    .line 141
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    sub-int/2addr v0, p1

    .line 142
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->o:I

    if-le v1, v2, :cond_0

    .line 143
    div-int/lit8 v1, v2, 0x2

    add-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->o:I

    .line 144
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->p:[S

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->p:[S

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int v3, p1, v2

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->p:[S

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    mul-int/2addr v5, v2

    mul-int/2addr v2, v0

    invoke-static {v1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    .line 147
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    return-void
.end method

.method private f(I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->p:[S

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int v2, p1, v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    sub-int/2addr v4, p1

    mul-int/2addr v4, v1

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    return-void
.end method

.method private g(I)V
    .locals 12

    .line 154
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    if-ne v0, p1, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/N;->e(I)V

    const/4 p1, 0x0

    move v9, p1

    .line 158
    :goto_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    sub-int/2addr v0, v9

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->i:I

    if-lt v0, v1, :cond_2

    .line 159
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->p:[S

    invoke-direct {p0, v0, v9, p1}, Lcom/google/vr/sdk/widgets/video/deps/N;->a([SIZ)I

    move-result v10

    int-to-float v0, v10

    .line 160
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->t:F

    div-float/2addr v0, v1

    float-to-int v11, v0

    .line 161
    invoke-direct {p0, v11}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(I)V

    .line 162
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->t:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 163
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->p:[S

    add-int v0, v9, v10

    sub-int v7, v0, v11

    move v0, v11

    move-object v4, v6

    move v5, v9

    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(II[SI[SI[SI)V

    goto :goto_1

    :cond_1
    sub-int v2, v11, v10

    .line 165
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->p:[S

    move v0, v10

    move-object v5, v7

    move v6, v9

    move v8, v9

    invoke-static/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/N;->a(III[SI[SI[SI)V

    .line 166
    :goto_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    add-int/2addr v0, v11

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    add-int/2addr v9, v10

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0, v9}, Lcom/google/vr/sdk/widgets/video/deps/N;->f(I)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->s:F

    return v0
.end method

.method public a(F)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->s:F

    return-void
.end method

.method public a(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 26
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    div-int/2addr v0, v1

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 28
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/N;->b(I)V

    .line 29
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 30
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    .line 31
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/N;->e()V

    return-void
.end method

.method public b()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->t:F

    return v0
.end method

.method public b(F)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->t:F

    return-void
.end method

.method public b(Ljava/nio/ShortBuffer;)V
    .locals 4

    .line 33
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 35
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    .line 36
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->n:[S

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr v0, v2

    mul-int/2addr p1, v2

    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public c()V
    .locals 7

    .line 38
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    .line 39
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->s:F

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->t:F

    div-float/2addr v1, v2

    .line 40
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    div-float/2addr v4, v2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v3, v1

    .line 41
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->i:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/N;->b(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 42
    :goto_0
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->i:I

    mul-int/lit8 v5, v4, 0x2

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->f:I

    mul-int/2addr v5, v6

    if-ge v2, v5, :cond_0

    .line 43
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->l:[S

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aput-short v1, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    .line 46
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/N;->e()V

    .line 47
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    if-le v0, v3, :cond_1

    .line 48
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    .line 49
    :cond_1
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->u:I

    .line 50
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->x:I

    .line 51
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->w:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/N;->v:I

    return v0
.end method
