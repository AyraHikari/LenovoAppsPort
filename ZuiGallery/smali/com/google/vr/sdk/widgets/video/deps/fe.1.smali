.class public Lcom/google/vr/sdk/widgets/video/deps/fe;
.super Lcom/google/vr/sdk/widgets/video/deps/fg;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fe$a;,
        Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    }
.end annotation


# static fields
.field private static final a:F = 0.98f

.field private static final b:[I

.field private static final c:I = 0x3e8


# instance fields
.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fi$a;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/vr/sdk/widgets/video/deps/fe$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 294
    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/fe;->b:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/fi$a;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fe;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fi$a;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fg;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->d:Lcom/google/vr/sdk/widgets/video/deps/fi$a;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>()V

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fp;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fc$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fp;)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fe;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi$a;)V

    return-void
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, p0, p1

    :cond_2
    :goto_0
    return v0
.end method

.method private static a(ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 3

    .line 161
    iget v0, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 162
    :goto_0
    invoke-static {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 169
    :cond_3
    :goto_1
    invoke-static {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(IZ)Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/lit16 v1, v1, 0x3e8

    :cond_4
    return v1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dh;[IILjava/lang/String;IIILjava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dh;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 81
    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    move-object/from16 v2, p7

    .line 82
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p0

    .line 83
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v5

    aget v7, p1, v3

    move-object v6, p3

    move v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;IIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dh;[ILcom/google/vr/sdk/widgets/video/deps/fe$a;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 195
    :goto_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v0, v2, :cond_1

    .line 196
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v2

    aget v3, p1, v0

    invoke-static {v2, v3, p2}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/m;ILcom/google/vr/sdk/widgets/video/deps/fe$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(ZIIII)Landroid/graphics/Point;
    .locals 3

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-eq v1, p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_2
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_3

    .line 292
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 293
    :cond_3
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dh;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dh;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 265
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v2, v3, :cond_0

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_6

    if-ne p2, v2, :cond_1

    goto :goto_3

    :cond_1
    move v3, v2

    .line 271
    :goto_1
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v1, v4, :cond_3

    .line 272
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v4

    .line 273
    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    if-lez v5, :cond_2

    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-lez v5, :cond_2

    .line 274
    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v6, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    invoke-static {p3, p1, p2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    .line 275
    iget v6, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v7, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    mul-int/2addr v6, v7

    .line 276
    iget v7, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_2

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    float-to-int v5, v5

    if-lt v4, v5, :cond_2

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq v3, v2, :cond_6

    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_6

    .line 281
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p2

    .line 282
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/m;->a()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    if-le p2, v3, :cond_5

    .line 284
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method protected static a(IZ)Z
    .locals 1

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/m;ILcom/google/vr/sdk/widgets/video/deps/fe$a;)Z
    .locals 2

    const/4 v0, 0x0

    .line 200
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/fe$a;->a:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/fe$a;->b:I

    if-ne p1, v1, :cond_1

    iget-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/fe$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/fe$a;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 201
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected static a(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 261
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    .line 262
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;IIIII)Z
    .locals 2

    const/4 v0, 0x0

    .line 93
    invoke-static {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    and-int/2addr p2, p3

    if-eqz p2, :cond_4

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 94
    invoke-static {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    if-gt p1, p4, :cond_4

    :cond_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-eq p1, p2, :cond_2

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-gt p1, p5, :cond_4

    :cond_2
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    if-eq p1, p2, :cond_3

    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    if-gt p0, p6, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dh;[IZ)[I
    .locals 10

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move v3, v2

    move v4, v3

    .line 175
    :goto_0
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v3, v6, :cond_2

    .line 176
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v6

    .line 177
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/fe$a;

    iget v8, v6, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    iget v9, v6, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    if-eqz p2, :cond_0

    move-object v6, v1

    goto :goto_1

    .line 178
    :cond_0
    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    :goto_1
    invoke-direct {v7, v8, v9, v6}, Lcom/google/vr/sdk/widgets/video/deps/fe$a;-><init>(IILjava/lang/String;)V

    .line 179
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    invoke-static {p0, p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;[ILcom/google/vr/sdk/widgets/video/deps/fe$a;)I

    move-result v6

    if-le v6, v4, :cond_1

    move v4, v6

    move-object v5, v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    if-le v4, p2, :cond_5

    .line 186
    new-array p2, v4, [I

    move v0, v2

    .line 188
    :goto_2
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v2, v1, :cond_4

    .line 189
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    aget v3, p1, v2

    invoke-static {v1, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/m;ILcom/google/vr/sdk/widgets/video/deps/fe$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 190
    aput v2, p2, v0

    move v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object p2

    .line 193
    :cond_5
    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->b:[I

    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dh;[IZIIIIIIZ)[I
    .locals 16

    move-object/from16 v8, p0

    .line 60
    iget v0, v8, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    const/4 v9, 0x2

    if-ge v0, v9, :cond_0

    .line 61
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/fe;->b:[I

    return-object v0

    :cond_0
    move/from16 v0, p7

    move/from16 v1, p8

    move/from16 v2, p9

    .line 62
    invoke-static {v8, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;IIZ)Ljava/util/List;

    move-result-object v10

    .line 63
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v9, :cond_1

    .line 64
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/fe;->b:[I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 67
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v12, v0

    move v13, v1

    move v14, v13

    .line 69
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_3

    .line 70
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 71
    invoke-virtual {v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 72
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v15

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    .line 73
    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v0

    if-le v0, v14, :cond_2

    move v14, v0

    move-object v12, v15

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v12

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    .line 78
    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fe;->b(Lcom/google/vr/sdk/widgets/video/deps/dh;[IILjava/lang/String;IIILjava/util/List;)V

    .line 79
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v9, :cond_5

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/fe;->b:[I

    goto :goto_2

    :cond_5
    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/util/List;)[I

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v3, -0x1

    move v9, v3

    move v10, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 101
    :goto_0
    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    if-ge v5, v11, :cond_e

    .line 102
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v11

    .line 103
    iget v12, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v13, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget-boolean v14, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    invoke-static {v11, v12, v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;IIZ)Ljava/util/List;

    move-result-object v12

    .line 104
    aget-object v13, p1, v5

    const/4 v14, 0x0

    .line 105
    :goto_1
    iget v15, v11, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v14, v15, :cond_d

    .line 106
    aget v15, v13, v14

    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    invoke-static {v15, v2}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 107
    invoke-virtual {v11, v14}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v2

    .line 108
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_3

    iget v15, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    if-eq v15, v3, :cond_0

    iget v15, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    if-gt v15, v4, :cond_3

    :cond_0
    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-eq v4, v3, :cond_1

    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v15, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    if-gt v4, v15, :cond_3

    :cond_1
    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    if-eq v4, v3, :cond_2

    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v15, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    if-gt v4, v15, :cond_3

    :cond_2
    move/from16 v4, v16

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 109
    iget-boolean v15, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    if-nez v15, :cond_4

    goto :goto_7

    :cond_4
    if-eqz v4, :cond_5

    const/4 v15, 0x2

    goto :goto_3

    :cond_5
    move/from16 v15, v16

    .line 112
    :goto_3
    aget v3, v13, v14

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit16 v15, v15, 0x3e8

    :cond_6
    if-le v15, v8, :cond_7

    move/from16 v17, v16

    goto :goto_4

    :cond_7
    move/from16 v17, v0

    :goto_4
    if-ne v15, v8, :cond_b

    .line 117
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/m;->a()I

    move-result v0

    if-eq v0, v9, :cond_8

    .line 119
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/m;->a()I

    move-result v0

    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(II)I

    move-result v0

    goto :goto_5

    .line 120
    :cond_8
    iget v0, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    invoke-static {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(II)I

    move-result v0

    :goto_5
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    if-lez v0, :cond_a

    goto :goto_6

    :cond_9
    if-gez v0, :cond_a

    goto :goto_6

    :cond_a
    const/16 v16, 0x0

    :goto_6
    move/from16 v17, v16

    :cond_b
    if-eqz v17, :cond_c

    .line 127
    iget v0, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    .line 128
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/m;->a()I

    move-result v2

    move v10, v0

    move v9, v2

    move-object v6, v11

    move v7, v14

    move v8, v15

    :cond_c
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_e
    if-nez v6, :cond_f

    const/4 v2, 0x0

    goto :goto_8

    .line 132
    :cond_f
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/ff;

    invoke-direct {v2, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/ff;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;I)V

    :goto_8
    return-object v2
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;Lcom/google/vr/sdk/widgets/video/deps/fi$a;)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 48
    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 51
    :goto_0
    iget-boolean v3, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 52
    invoke-interface/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/v;->supportsMixedMimeTypeAdaptation()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v13, v3

    goto :goto_1

    :cond_1
    move v13, v4

    :goto_1
    move v14, v4

    .line 53
    :goto_2
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    if-ge v14, v3, :cond_3

    .line 54
    invoke-virtual {v0, v14}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v15

    .line 55
    aget-object v4, p2, v14

    iget v7, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    iget v8, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    iget v10, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v11, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget-boolean v12, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    move-object v3, v15

    move v5, v13

    move v6, v2

    invoke-static/range {v3 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;[IZIIIIIIZ)[I

    move-result-object v3

    .line 56
    array-length v4, v3

    if-lez v4, :cond_2

    move-object/from16 v4, p4

    .line 57
    invoke-interface {v4, v15, v3}, Lcom/google/vr/sdk/widgets/video/deps/fi$a;->b(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v0

    return-object v0

    :cond_2
    move-object/from16 v4, p4

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/dh;[IILjava/lang/String;IIILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dh;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p7

    .line 87
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p0

    .line 89
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v4

    aget v6, p1, v2

    move-object v5, p3

    move v7, p2

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;IIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    return-object v0
.end method

.method protected a(ILcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    move v1, v0

    move v3, v1

    move v4, v3

    .line 240
    :goto_0
    iget v5, p2, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    if-ge v1, v5, :cond_5

    .line 241
    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v5

    .line 242
    aget-object v6, p3, v1

    move v7, v0

    .line 243
    :goto_1
    iget v8, v5, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v7, v8, :cond_4

    .line 244
    aget v8, v6, v7

    iget-boolean v9, p4, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    invoke-static {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(IZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 245
    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v8

    .line 246
    iget v8, v8, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_2

    :cond_0
    move v8, v0

    :goto_2
    if-eqz v8, :cond_1

    const/4 v9, 0x2

    .line 248
    :cond_1
    aget v8, v6, v7

    invoke-static {v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(IZ)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit16 v9, v9, 0x3e8

    :cond_2
    if-le v9, v4, :cond_3

    move-object v2, v5

    move v3, v7

    move v4, v9

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    goto :goto_3

    .line 257
    :cond_6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ff;

    invoke-direct {p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ff;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;I)V

    :goto_3
    return-object p1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v3, 0x0

    move v4, v3

    move v6, v4

    move v7, v6

    const/4 v5, 0x0

    .line 206
    :goto_0
    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    if-ge v4, v8, :cond_a

    .line 207
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v8

    .line 208
    aget-object v9, p2, v4

    move v10, v3

    .line 209
    :goto_1
    iget v11, v8, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v10, v11, :cond_9

    .line 210
    aget v11, v9, v10

    iget-boolean v12, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    invoke-static {v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(IZ)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 211
    invoke-virtual {v8, v10}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v11

    .line 212
    iget v12, v11, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    const/4 v13, 0x1

    and-int/2addr v12, v13

    if-eqz v12, :cond_0

    move v12, v13

    goto :goto_2

    :cond_0
    move v12, v3

    .line 213
    :goto_2
    iget v14, v11, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    const/4 v15, 0x2

    and-int/2addr v14, v15

    if-eqz v14, :cond_1

    move v14, v13

    goto :goto_3

    :cond_1
    move v14, v3

    .line 214
    :goto_3
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    invoke-static {v11, v2}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v12, :cond_2

    const/4 v13, 0x6

    goto :goto_4

    :cond_2
    if-nez v14, :cond_3

    const/4 v13, 0x5

    goto :goto_4

    :cond_3
    const/4 v13, 0x4

    goto :goto_4

    :cond_4
    if-eqz v12, :cond_5

    const/4 v13, 0x3

    goto :goto_4

    :cond_5
    if-eqz v14, :cond_8

    .line 223
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    invoke-static {v11, v2}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v13, v15

    .line 226
    :cond_6
    :goto_4
    aget v2, v9, v10

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit16 v13, v13, 0x3e8

    :cond_7
    if-le v13, v7, :cond_8

    move-object v5, v8

    move v6, v10

    move v7, v13

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    if-nez v5, :cond_b

    const/4 v2, 0x0

    goto :goto_5

    .line 235
    :cond_b
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/ff;

    invoke-direct {v2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/ff;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;I)V

    :goto_5
    return-object v2
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;Lcom/google/vr/sdk/widgets/video/deps/fi$a;)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v8, v5

    move v6, v4

    move v7, v6

    .line 140
    :goto_0
    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    if-ge v5, v9, :cond_2

    .line 141
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v9

    .line 142
    aget-object v10, p2, v5

    move v11, v3

    .line 143
    :goto_1
    iget v12, v9, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v11, v12, :cond_1

    .line 144
    aget v12, v10, v11

    iget-boolean v13, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    invoke-static {v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(IZ)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 145
    invoke-virtual {v9, v11}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v12

    .line 146
    aget v13, v10, v11

    iget-object v14, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    invoke-static {v13, v14, v12}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v12

    if-le v12, v8, :cond_0

    move v6, v5

    move v7, v11

    move v8, v12

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-ne v6, v4, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_3
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v0

    if-eqz v2, :cond_4

    .line 157
    aget-object v3, p2, v6

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    invoke-static {v0, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;[IZ)[I

    move-result-object v1

    .line 158
    array-length v3, v1

    if-lez v3, :cond_4

    .line 159
    invoke-interface {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fi$a;->b(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v0

    return-object v0

    .line 160
    :cond_4
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ff;

    invoke-direct {v1, v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/ff;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;I)V

    return-object v1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;Lcom/google/vr/sdk/widgets/video/deps/fi$a;)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 44
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/fe;->b(Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;Lcom/google/vr/sdk/widgets/video/deps/fi$a;)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 46
    invoke-static {p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/fe;->b(Lcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fe$b;)V
    .locals 1

    .line 9
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->d()V

    :cond_0
    return-void
.end method

.method protected a([Lcom/google/vr/sdk/widgets/video/deps/v;[Lcom/google/vr/sdk/widgets/video/deps/di;[[[I)[Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    .line 14
    array-length v8, v7

    .line 15
    new-array v9, v8, [Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 16
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    const/4 v11, 0x0

    move v0, v11

    move v12, v0

    move v13, v12

    :goto_0
    const/4 v1, 0x2

    const/4 v14, 0x1

    if-ge v12, v8, :cond_4

    .line 20
    aget-object v2, v7, v12

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/v;->getTrackType()I

    move-result v2

    if-ne v1, v2, :cond_3

    if-nez v0, :cond_1

    .line 22
    aget-object v1, v7, v12

    aget-object v2, p2, v12

    aget-object v3, p3, v12

    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->d:Lcom/google/vr/sdk/widgets/video/deps/fi$a;

    move-object v0, p0

    move-object v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;Lcom/google/vr/sdk/widgets/video/deps/fi$a;)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v0

    aput-object v0, v9, v12

    .line 23
    aget-object v0, v9, v12

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_1

    :cond_0
    move v0, v11

    .line 24
    :cond_1
    :goto_1
    aget-object v1, p2, v12

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    move v14, v11

    :goto_2
    or-int/2addr v13, v14

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    move v0, v11

    move v2, v0

    move v3, v2

    :goto_3
    if-ge v0, v8, :cond_b

    .line 29
    aget-object v4, v7, v0

    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/v;->getTrackType()I

    move-result v4

    if-eq v4, v14, :cond_7

    if-eq v4, v1, :cond_a

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 39
    aget-object v4, v7, v0

    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/v;->getTrackType()I

    move-result v4

    aget-object v5, p2, v0

    aget-object v12, p3, v0

    invoke-virtual {p0, v4, v5, v12, v10}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(ILcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v4

    aput-object v4, v9, v0

    goto :goto_5

    :cond_5
    if-nez v3, :cond_a

    .line 37
    aget-object v3, p2, v0

    aget-object v4, p3, v0

    invoke-virtual {p0, v3, v4, v10}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v3

    aput-object v3, v9, v0

    .line 38
    aget-object v3, v9, v0

    if-eqz v3, :cond_6

    move v3, v14

    goto :goto_5

    :cond_6
    move v3, v11

    goto :goto_5

    :cond_7
    if-nez v2, :cond_a

    .line 32
    aget-object v2, p2, v0

    aget-object v4, p3, v0

    if-eqz v13, :cond_8

    const/4 v5, 0x0

    goto :goto_4

    .line 33
    :cond_8
    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->d:Lcom/google/vr/sdk/widgets/video/deps/fi$a;

    .line 34
    :goto_4
    invoke-virtual {p0, v2, v4, v10, v5}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/di;[[ILcom/google/vr/sdk/widgets/video/deps/fe$b;Lcom/google/vr/sdk/widgets/video/deps/fi$a;)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v2

    aput-object v2, v9, v0

    .line 35
    aget-object v2, v9, v0

    if-eqz v2, :cond_9

    move v2, v14

    goto :goto_5

    :cond_9
    move v2, v11

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    return-object v9
.end method
