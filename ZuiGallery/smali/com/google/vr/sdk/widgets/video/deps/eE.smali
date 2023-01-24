.class public final Lcom/google/vr/sdk/widgets/video/deps/eE;
.super Lcom/google/vr/sdk/widgets/video/deps/en;
.source "DvbDecoder.java"


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/eF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "DvbDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/en;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result p1

    .line 4
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v0

    .line 5
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/eF;

    invoke-direct {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eF;-><init>(II)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eE;->a:Lcom/google/vr/sdk/widgets/video/deps/eF;

    return-void
.end method


# virtual methods
.method protected synthetic a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ep;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eE;->b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/eG;

    move-result-object p1

    return-object p1
.end method

.method protected b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/eG;
    .locals 1

    if-eqz p3, :cond_0

    .line 8
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eE;->a:Lcom/google/vr/sdk/widgets/video/deps/eF;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/eF;->a()V

    .line 9
    :cond_0
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/eG;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eE;->a:Lcom/google/vr/sdk/widgets/video/deps/eF;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eF;->a([BI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/eG;-><init>(Ljava/util/List;)V

    return-object p3
.end method
