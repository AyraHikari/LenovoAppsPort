.class public Lcom/google/vr/sdk/widgets/video/deps/dI;
.super Ljava/lang/Object;
.source "Period.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dI;->a:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    .line 4
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/dE;->c:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
