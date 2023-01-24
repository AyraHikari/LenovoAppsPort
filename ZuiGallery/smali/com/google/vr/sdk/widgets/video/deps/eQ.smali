.class final Lcom/google/vr/sdk/widgets/video/deps/eQ;
.super Ljava/lang/Object;
.source "TtmlSubtitle.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ep;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/eM;

.field private final b:[J

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eP;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/eM;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/eM;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eP;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eN;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->a:Lcom/google/vr/sdk/widgets/video/deps/eM;

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->d:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->c:Ljava/util/Map;

    .line 6
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/eM;->b()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->b:[J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b([JJZZ)I

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->b:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a(I)J
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->b:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method a()Lcom/google/vr/sdk/widgets/video/deps/eM;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->a:Lcom/google/vr/sdk/widgets/video/deps/eM;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->b:[J

    array-length v0, v0

    return v0
.end method

.method public b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->a:Lcom/google/vr/sdk/widgets/video/deps/eM;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->d:Ljava/util/Map;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(JLjava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eP;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eQ;->c:Ljava/util/Map;

    return-object v0
.end method
