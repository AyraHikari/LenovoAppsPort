.class final Lcom/google/vr/sdk/widgets/video/deps/cP$a;
.super Lcom/google/vr/sdk/widgets/video/deps/cI;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final b:I

.field private final c:I

.field private final d:[I

.field private final e:[I

.field private final f:[Lcom/google/vr/sdk/widgets/video/deps/z;

.field private final g:[I

.field private final h:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/util/Collection;IILcom/google/vr/sdk/widgets/video/deps/dd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/vr/sdk/widgets/video/deps/cP$d;",
            ">;II",
            "Lcom/google/vr/sdk/widgets/video/deps/dd;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/cI;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dd;)V

    .line 2
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->b:I

    .line 3
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->c:I

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 5
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->d:[I

    .line 6
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->e:[I

    .line 7
    new-array p3, p2, [Lcom/google/vr/sdk/widgets/video/deps/z;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->f:[Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 8
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->g:[I

    .line 9
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->h:Landroid/util/SparseIntArray;

    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    .line 12
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->f:[Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v0, p3, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->c:Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    aput-object v0, p4, p2

    .line 13
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->d:[I

    iget v0, p3, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    aput v0, p4, p2

    .line 14
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->e:[I

    iget v0, p3, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->d:I

    aput v0, p4, p2

    .line 15
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->g:[I

    iget-object p3, p3, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->b:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, p4, p2

    .line 16
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->h:Landroid/util/SparseIntArray;

    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->g:[I

    aget p4, p4, p2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p3, p4, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->d:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([IIZZ)I

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->b:I

    return v0
.end method

.method protected b(I)I
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->e:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([IIZZ)I

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 2

    .line 21
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->h:Landroid/util/SparseIntArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    return v1
.end method

.method public c()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->c:I

    return v0
.end method

.method protected c(I)Lcom/google/vr/sdk/widgets/video/deps/z;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->f:[Lcom/google/vr/sdk/widgets/video/deps/z;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected d(I)I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method protected e(I)I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->e:[I

    aget p1, v0, p1

    return p1
.end method

.method protected f(I)Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$a;->g:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
