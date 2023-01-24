.class final Lcom/google/vr/sdk/widgets/video/deps/bL;
.super Ljava/lang/Object;
.source "SeiReader.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/aA;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bL;->a:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/aA;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bL;->b:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    return-void
.end method


# virtual methods
.method public a(JLcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bL;->b:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-static {p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/eD;->a(JLcom/google/vr/sdk/widgets/video/deps/gA;[Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bL;->b:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 6
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 7
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bL;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 9
    iget-object v5, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    const-string v4, "application/cea-608"

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "application/cea-708"

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    const-string v6, "Invalid closed caption mime type provided: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 12
    :goto_3
    invoke-static {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    .line 13
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object v4

    :goto_4
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 14
    iget v8, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    iget-object v9, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    iget v10, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 15
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bL;->b:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
