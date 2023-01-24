.class public final Lcom/google/vr/sdk/widgets/video/deps/cC;
.super Ljava/lang/Object;
.source "DownloaderConstructorHelper.java"


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fS;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fu$a;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/gD;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/cC;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fu$a;Lcom/google/vr/sdk/widgets/video/deps/gD;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fu$a;Lcom/google/vr/sdk/widgets/video/deps/gD;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->a:Lcom/google/vr/sdk/widgets/video/deps/fS;

    .line 6
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->b:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 7
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 8
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->d:Lcom/google/vr/sdk/widgets/video/deps/fu$a;

    .line 9
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->e:Lcom/google/vr/sdk/widgets/video/deps/gD;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/fS;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->a:Lcom/google/vr/sdk/widgets/video/deps/fS;

    return-object v0
.end method

.method public a(Z)Lcom/google/vr/sdk/widgets/video/deps/fV;
    .locals 8

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fG;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/fG;-><init>()V

    :goto_0
    move-object v4, v0

    if-eqz p1, :cond_1

    .line 16
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fV;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->a:Lcom/google/vr/sdk/widgets/video/deps/fS;

    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/fF;->a:Lcom/google/vr/sdk/widgets/video/deps/fF;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fV;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fu;ILcom/google/vr/sdk/widgets/video/deps/fV$a;)V

    return-object p1

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->d:Lcom/google/vr/sdk/widgets/video/deps/fu$a;

    if-eqz p1, :cond_2

    .line 18
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/fu$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fu;

    move-result-object p1

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fT;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->a:Lcom/google/vr/sdk/widgets/video/deps/fS;

    const-wide/32 v1, 0x200000

    invoke-direct {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fT;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;J)V

    :goto_1
    move-object v5, p1

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->b:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->e:Lcom/google/vr/sdk/widgets/video/deps/gD;

    if-nez v0, :cond_3

    move-object v3, p1

    goto :goto_2

    .line 22
    :cond_3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fM;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->e:Lcom/google/vr/sdk/widgets/video/deps/gD;

    const/16 v2, -0x3e8

    invoke-direct {v0, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fM;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/gD;I)V

    move-object v3, v0

    .line 23
    :goto_2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fV;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->a:Lcom/google/vr/sdk/widgets/video/deps/fS;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fV;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fu;ILcom/google/vr/sdk/widgets/video/deps/fV$a;)V

    return-object p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/gD;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cC;->e:Lcom/google/vr/sdk/widgets/video/deps/gD;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gD;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gD;-><init>()V

    :goto_0
    return-object v0
.end method
