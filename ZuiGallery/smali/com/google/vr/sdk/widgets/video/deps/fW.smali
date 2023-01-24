.class public final Lcom/google/vr/sdk/widgets/video/deps/fW;
.super Ljava/lang/Object;
.source "CacheDataSourceFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv$a;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fS;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fu$a;

.field private final e:I

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/fV$a;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fW;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv$a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv$a;I)V
    .locals 6

    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/fW;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv$a;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv$a;IJ)V
    .locals 7

    .line 5
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fH;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/fH;-><init>()V

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/fU;

    invoke-direct {v4, p1, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/fU;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/fW;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fu$a;ILcom/google/vr/sdk/widgets/video/deps/fV$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fu$a;ILcom/google/vr/sdk/widgets/video/deps/fV$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->a:Lcom/google/vr/sdk/widgets/video/deps/fS;

    .line 9
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->b:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 10
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 11
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->d:Lcom/google/vr/sdk/widgets/video/deps/fu$a;

    .line 12
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->e:I

    .line 13
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->f:Lcom/google/vr/sdk/widgets/video/deps/fV$a;

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fW;->b()Lcom/google/vr/sdk/widgets/video/deps/fV;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/fV;
    .locals 8

    .line 15
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/fV;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->a:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->b:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 16
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v3

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->d:Lcom/google/vr/sdk/widgets/video/deps/fu$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fu$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fu;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->e:I

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fW;->f:Lcom/google/vr/sdk/widgets/video/deps/fV$a;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/fV;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fu;ILcom/google/vr/sdk/widgets/video/deps/fV$a;)V

    return-object v7
.end method
