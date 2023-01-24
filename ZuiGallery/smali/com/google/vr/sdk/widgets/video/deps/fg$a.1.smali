.class public final Lcom/google/vr/sdk/widgets/video/deps/fg$a;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# instance fields
.field public final e:I

.field private final f:[I

.field private final g:[Lcom/google/vr/sdk/widgets/video/deps/di;

.field private final h:[I

.field private final i:[[[I

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/di;


# direct methods
.method constructor <init>([I[Lcom/google/vr/sdk/widgets/video/deps/di;[I[[[ILcom/google/vr/sdk/widgets/video/deps/di;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->f:[I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->g:[Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 4
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->i:[[[I

    .line 5
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->h:[I

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->j:Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 7
    array-length p1, p2

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->e:I

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->i:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    aget p1, p1, p3

    and-int/lit8 p1, p1, 0x7

    return p1
.end method

.method public a(IIZ)I
    .locals 6

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->g:[Lcom/google/vr/sdk/widgets/video/deps/di;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    .line 31
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 34
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->a(III)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    if-eqz p3, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 36
    aput v2, v1, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->a(II[I)I

    move-result p1

    return p1
.end method

.method public a(II[I)I
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    move v1, v0

    move v2, v1

    .line 44
    :goto_0
    array-length v5, p3

    if-ge v0, v5, :cond_1

    .line 45
    aget v5, p3, v0

    .line 46
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->g:[Lcom/google/vr/sdk/widgets/video/deps/di;

    aget-object v6, v6, p1

    invoke-virtual {v6, p2}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v5

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    if-nez v2, :cond_0

    move-object v4, v5

    goto :goto_1

    .line 49
    :cond_0
    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    .line 50
    :goto_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->i:[[[I

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x18

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    move v2, v6

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 53
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->h:[I

    aget p1, p2, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_2
    return v3
.end method

.method public a()Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->j:Lcom/google/vr/sdk/widgets/video/deps/di;

    return-object v0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->g:[Lcom/google/vr/sdk/widgets/video/deps/di;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(I)I
    .locals 7

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->i:[[[I

    aget-object p1, v0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 12
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    move v3, v0

    .line 13
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 14
    aget-object v4, p1, v1

    aget v4, v4, v3

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v6, 0x4

    if-eq v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    return v5

    :cond_1
    const/4 v4, 0x2

    .line 19
    :goto_2
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public c(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 24
    :goto_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->e:I

    if-ge v0, v2, :cond_1

    .line 25
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->f:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fg$a;->b(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
