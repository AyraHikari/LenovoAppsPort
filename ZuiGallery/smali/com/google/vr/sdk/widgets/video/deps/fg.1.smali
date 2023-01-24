.class public abstract Lcom/google/vr/sdk/widgets/video/deps/fg;
.super Lcom/google/vr/sdk/widgets/video/deps/fk;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fg$b;,
        Lcom/google/vr/sdk/widgets/video/deps/fg$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/di;",
            "Lcom/google/vr/sdk/widgets/video/deps/fg$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseBooleanArray;

.field private c:I

.field private d:Lcom/google/vr/sdk/widgets/video/deps/fg$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fk;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->b:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->c:I

    return-void
.end method

.method private static a([Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/dh;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 97
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 99
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 100
    aget-object v4, p0, v2

    move v5, v1

    .line 101
    :goto_1
    iget v6, p1, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v5, v6, :cond_2

    .line 102
    invoke-virtual {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/v;->supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-le v6, v3, :cond_1

    const/4 v0, 0x4

    if-ne v6, v0, :cond_0

    return v2

    :cond_0
    move v0, v2

    move v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static a([Lcom/google/vr/sdk/widgets/video/deps/v;[Lcom/google/vr/sdk/widgets/video/deps/di;[[[I[Lcom/google/vr/sdk/widgets/video/deps/w;[Lcom/google/vr/sdk/widgets/video/deps/fi;I)V
    .locals 10

    if-nez p5, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    move v4, v3

    .line 126
    :goto_0
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v2, v5, :cond_6

    .line 127
    aget-object v5, p0, v2

    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/v;->getTrackType()I

    move-result v5

    .line 128
    aget-object v7, p4, v2

    if-eq v5, v6, :cond_1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    :cond_1
    if-eqz v7, :cond_5

    .line 130
    aget-object v8, p2, v2

    aget-object v9, p1, v2

    invoke-static {v8, v9, v7}, Lcom/google/vr/sdk/widgets/video/deps/fg;->a([[ILcom/google/vr/sdk/widgets/video/deps/di;Lcom/google/vr/sdk/widgets/video/deps/fi;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v5, v6, :cond_3

    if-eq v4, v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    if-eq v3, v1, :cond_4

    :goto_1
    move p0, v0

    goto :goto_3

    :cond_4
    move v3, v2

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move p0, v6

    :goto_3
    if-eq v4, v1, :cond_7

    if-eq v3, v1, :cond_7

    move v0, v6

    :cond_7
    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    .line 143
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/w;

    invoke-direct {p0, p5}, Lcom/google/vr/sdk/widgets/video/deps/w;-><init>(I)V

    .line 144
    aput-object p0, p3, v4

    .line 145
    aput-object p0, p3, v3

    :cond_8
    return-void
.end method

.method private static a([[ILcom/google/vr/sdk/widgets/video/deps/di;Lcom/google/vr/sdk/widgets/video/deps/fi;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 149
    :cond_0
    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/fi;->d()Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;)I

    move-result p1

    move v1, v0

    .line 150
    :goto_0
    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/fi;->e()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 151
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->b(I)I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/dh;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 111
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 112
    :goto_0
    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    if-ge v1, v2, :cond_0

    .line 113
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/v;->supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a([Lcom/google/vr/sdk/widgets/video/deps/v;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 116
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 118
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/v;->supportsMixedMimeTypeAdaptation()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a([Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/di;)Lcom/google/vr/sdk/widgets/video/deps/fl;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 49
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 50
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [[Lcom/google/vr/sdk/widgets/video/deps/dh;

    .line 51
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [[[I

    const/4 v10, 0x0

    move v4, v10

    :goto_0
    if-ge v4, v1, :cond_0

    .line 53
    iget v5, p2, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    new-array v5, v5, [Lcom/google/vr/sdk/widgets/video/deps/dh;

    aput-object v5, v2, v4

    .line 54
    iget v5, p2, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    new-array v5, v5, [[I

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/fg;->a([Lcom/google/vr/sdk/widgets/video/deps/v;)[I

    move-result-object v7

    move v1, v10

    .line 57
    :goto_1
    iget v4, p2, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    if-ge v1, v4, :cond_2

    .line 58
    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v4

    .line 59
    invoke-static {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/fg;->a([Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/dh;)I

    move-result v5

    .line 60
    array-length v6, p1

    if-ne v5, v6, :cond_1

    .line 61
    iget v6, v4, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    new-array v6, v6, [I

    goto :goto_2

    :cond_1
    aget-object v6, p1, v5

    invoke-static {v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/fg;->a(Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/dh;)[I

    move-result-object v6

    .line 62
    :goto_2
    aget v8, v0, v5

    .line 63
    aget-object v9, v2, v5

    aput-object v4, v9, v8

    .line 64
    aget-object v4, v3, v5

    aput-object v6, v4, v8

    .line 65
    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_2
    array-length v1, p1

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 68
    array-length v4, p1

    new-array v5, v4, [I

    move v4, v10

    .line 69
    :goto_3
    array-length v6, p1

    if-ge v4, v6, :cond_3

    .line 70
    aget v6, v0, v4

    .line 71
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/di;

    aget-object v9, v2, v4

    .line 72
    invoke-static {v9, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/vr/sdk/widgets/video/deps/dh;

    invoke-direct {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/di;-><init>([Lcom/google/vr/sdk/widgets/video/deps/dh;)V

    aput-object v8, v1, v4

    .line 73
    aget-object v8, v3, v4

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    aput-object v6, v3, v4

    .line 74
    aget-object v6, p1, v4

    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/v;->getTrackType()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 76
    :cond_3
    array-length v4, p1

    aget v0, v0, v4

    .line 77
    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/di;

    array-length v4, p1

    aget-object v2, v2, v4

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/dh;

    invoke-direct {v9, v0}, Lcom/google/vr/sdk/widgets/video/deps/di;-><init>([Lcom/google/vr/sdk/widgets/video/deps/dh;)V

    .line 78
    invoke-virtual {p0, p1, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/fg;->a([Lcom/google/vr/sdk/widgets/video/deps/v;[Lcom/google/vr/sdk/widgets/video/deps/di;[[[I)[Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v0

    move v2, v10

    .line 79
    :goto_4
    array-length v4, p1

    const/4 v11, 0x0

    if-ge v2, v4, :cond_7

    .line 80
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    aput-object v11, v0, v2

    goto :goto_6

    .line 82
    :cond_4
    aget-object v4, v1, v2

    .line 83
    invoke-virtual {p0, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/fg;->a(ILcom/google/vr/sdk/widgets/video/deps/di;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 84
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/fg$b;

    if-nez v6, :cond_5

    goto :goto_5

    .line 86
    :cond_5
    invoke-virtual {v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/fg$b;->a(Lcom/google/vr/sdk/widgets/video/deps/di;)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v11

    :goto_5
    aput-object v11, v0, v2

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 88
    :cond_7
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/fg$a;

    move-object v4, v2

    move-object v6, v1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/fg$a;-><init>([I[Lcom/google/vr/sdk/widgets/video/deps/di;[I[[[ILcom/google/vr/sdk/widgets/video/deps/di;)V

    .line 89
    array-length v4, p1

    new-array v12, v4, [Lcom/google/vr/sdk/widgets/video/deps/w;

    .line 90
    :goto_7
    array-length v4, p1

    if-ge v10, v4, :cond_9

    .line 91
    aget-object v4, v0, v10

    if-eqz v4, :cond_8

    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/w;->a:Lcom/google/vr/sdk/widgets/video/deps/w;

    goto :goto_8

    :cond_8
    move-object v4, v11

    :goto_8
    aput-object v4, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 93
    :cond_9
    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->c:I

    move-object v4, p1

    move-object v5, v1

    move-object v6, v3

    move-object v7, v12

    move-object v8, v0

    invoke-static/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/fg;->a([Lcom/google/vr/sdk/widgets/video/deps/v;[Lcom/google/vr/sdk/widgets/video/deps/di;[[[I[Lcom/google/vr/sdk/widgets/video/deps/w;[Lcom/google/vr/sdk/widgets/video/deps/fi;I)V

    .line 94
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fl;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fj;-><init>([Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    invoke-direct {p1, p2, v1, v2, v12}, Lcom/google/vr/sdk/widgets/video/deps/fl;-><init>(Lcom/google/vr/sdk/widgets/video/deps/di;Lcom/google/vr/sdk/widgets/video/deps/fj;Ljava/lang/Object;[Lcom/google/vr/sdk/widgets/video/deps/w;)V

    return-object p1
.end method

.method public final a(ILcom/google/vr/sdk/widgets/video/deps/di;Lcom/google/vr/sdk/widgets/video/deps/fg$b;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 19
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fg;->d()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fg$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->d:Lcom/google/vr/sdk/widgets/video/deps/fg$a;

    return-void
.end method

.method public final a(I)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final a(ILcom/google/vr/sdk/widgets/video/deps/di;)Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract a([Lcom/google/vr/sdk/widgets/video/deps/v;[Lcom/google/vr/sdk/widgets/video/deps/di;[[[I)[Lcom/google/vr/sdk/widgets/video/deps/fi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation
.end method

.method public final b()Lcom/google/vr/sdk/widgets/video/deps/fg$a;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->d:Lcom/google/vr/sdk/widgets/video/deps/fg$a;

    return-object v0
.end method

.method public final b(ILcom/google/vr/sdk/widgets/video/deps/di;)Lcom/google/vr/sdk/widgets/video/deps/fg$b;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 25
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fg$b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 35
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 38
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fg;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(IZ)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 10
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fg;->d()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 43
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fg;->d()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->c:I

    if-eq v0, p1, :cond_0

    .line 46
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->c:I

    .line 47
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fg;->d()V

    :cond_0
    return-void
.end method

.method public final c(ILcom/google/vr/sdk/widgets/video/deps/di;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 27
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 31
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fg;->d()V

    :cond_2
    :goto_0
    return-void
.end method
