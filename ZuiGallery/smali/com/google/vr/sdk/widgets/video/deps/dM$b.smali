.class public Lcom/google/vr/sdk/widgets/video/deps/dM$b;
.super Lcom/google/vr/sdk/widgets/video/deps/dM$a;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dJ;",
            "JJIJ",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dJ;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;)V

    .line 2
    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dK;I)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->d:I

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
