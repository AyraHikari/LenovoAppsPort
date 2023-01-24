.class public final Lcom/google/vr/sdk/widgets/video/deps/by;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bz;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/bO$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private c:Z

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/bO$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->a:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/aA;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->b:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Z
    .locals 2

    .line 43
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 46
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->c:Z

    .line 47
    :cond_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->d:I

    .line 48
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->c:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 19
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->c:Z

    .line 20
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->f:J

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->e:I

    const/4 p1, 0x2

    .line 22
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->d:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 10

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->b:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/bO$a;

    .line 9
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 10
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v2

    .line 11
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/bO$a;->c:[B

    .line 12
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/bO$a;->a:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v4, "application/dvbsubs"

    .line 13
    invoke-static/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 14
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->b:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 6

    .line 30
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->c:Z

    if-eqz v0, :cond_3

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/by;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/by;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    .line 36
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v2

    .line 37
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->b:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 38
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 39
    invoke-interface {v5, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_2
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->e:I

    :cond_3
    return-void
.end method

.method public b()V
    .locals 11

    .line 24
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->c:Z

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->b:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 26
    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->f:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_0
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/by;->c:Z

    :cond_1
    return-void
.end method
