.class final Lcom/google/vr/sdk/widgets/video/deps/aU$c;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/aU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/be;

.field public final b:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field public c:Lcom/google/vr/sdk/widgets/video/deps/bc;

.field public d:Lcom/google/vr/sdk/widgets/video/deps/aS;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/be;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/be;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->b:Lcom/google/vr/sdk/widgets/video/deps/aA;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/be;->a()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->e:I

    .line 12
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->g:I

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->f:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/aa;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->c:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/be;->a:Lcom/google/vr/sdk/widgets/video/deps/aS;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/aS;->a:I

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bc;->a(I)Lcom/google/vr/sdk/widgets/video/deps/bd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->b:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->c:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aa;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/bc;Lcom/google/vr/sdk/widgets/video/deps/aS;)V
    .locals 1

    .line 5
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/bc;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->c:Lcom/google/vr/sdk/widgets/video/deps/bc;

    .line 6
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/aS;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->d:Lcom/google/vr/sdk/widgets/video/deps/aS;

    .line 7
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->b:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a()V

    return-void
.end method
