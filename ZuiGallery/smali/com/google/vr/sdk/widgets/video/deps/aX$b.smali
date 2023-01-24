.class public final Lcom/google/vr/sdk/widgets/video/deps/aX$b;
.super Ljava/lang/Object;
.source "HeifMetaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/aX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/vr/sdk/widgets/video/deps/aX$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a:Ljava/util/Map;

    return-void
.end method

.method private a(J)Lcom/google/vr/sdk/widgets/video/deps/aX$a;
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/aX$a;

    invoke-direct {v2}, Lcom/google/vr/sdk/widgets/video/deps/aX$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/aX$a;

    return-object p1
.end method


# virtual methods
.method public a(JII)Lcom/google/vr/sdk/widgets/video/deps/aX$b;
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a(J)Lcom/google/vr/sdk/widgets/video/deps/aX$a;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/aX$a;->a(II)V

    return-object p0
.end method

.method public a(JJI)Lcom/google/vr/sdk/widgets/video/deps/aX$b;
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a(J)Lcom/google/vr/sdk/widgets/video/deps/aX$a;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/aX$a;->a(JI)V

    return-object p0
.end method

.method public a(JLcom/google/vr/sdk/widgets/video/deps/aX$c;Z)Lcom/google/vr/sdk/widgets/video/deps/aX$b;
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a(J)Lcom/google/vr/sdk/widgets/video/deps/aX$a;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/aX$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aX$c;Z)V

    return-object p0
.end method

.method public a(JLjava/lang/String;II)Lcom/google/vr/sdk/widgets/video/deps/aX$b;
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a(J)Lcom/google/vr/sdk/widgets/video/deps/aX$a;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/aX$a;->a(Ljava/lang/String;II)V

    return-object p0
.end method

.method public a([B)Lcom/google/vr/sdk/widgets/video/deps/aX$b;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->b:[B

    return-object p0
.end method

.method public a()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/vr/sdk/widgets/video/deps/aX;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/aX$a;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->b:[B

    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/aX$a;->a([B)Lcom/google/vr/sdk/widgets/video/deps/aX;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b(JII)Lcom/google/vr/sdk/widgets/video/deps/aX$b;
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a(J)Lcom/google/vr/sdk/widgets/video/deps/aX$a;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/aX$a;->b(II)V

    return-object p0
.end method
