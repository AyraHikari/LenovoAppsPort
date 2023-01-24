.class public final Lcom/google/vr/sdk/widgets/video/deps/eg;
.super Lcom/google/vr/sdk/widgets/video/deps/ei;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/eg$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/vr/sdk/widgets/video/deps/m;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ei;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->a:Ljava/util/List;

    .line 3
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->b:Ljava/util/List;

    .line 4
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->c:Ljava/util/List;

    .line 5
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-eqz p7, :cond_0

    .line 7
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eg;
    .locals 8

    .line 12
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 14
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/eg;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/eg;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/util/List;)V

    return-object p0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 17
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 18
    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/eg;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/eg;"
        }
    .end annotation

    .line 9
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/eg;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->t:Ljava/util/List;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eg;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->b:Ljava/util/List;

    .line 10
    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eg;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->c:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eg;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/eg;->e:Ljava/util/List;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/eg;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/util/List;)V

    return-object v8
.end method
