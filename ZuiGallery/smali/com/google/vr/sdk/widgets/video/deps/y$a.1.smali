.class final Lcom/google/vr/sdk/widgets/video/deps/y$a;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/vr/sdk/widgets/video/deps/G;
.implements Lcom/google/vr/sdk/widgets/video/deps/cb;
.implements Lcom/google/vr/sdk/widgets/video/deps/ev;
.implements Lcom/google/vr/sdk/widgets/video/deps/gU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/y;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/y$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/y;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$802(Lcom/google/vr/sdk/widgets/video/deps/y;I)I

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IIIF)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$400(Lcom/google/vr/sdk/widgets/video/deps/y;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/y$b;

    .line 17
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/y$b;->a(IIIF)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/gU;->a(IIIF)V

    :cond_1
    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gU;->a(IJ)V

    :cond_0
    return-void
.end method

.method public a(IJJ)V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/G;->a(IJJ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$500(Lcom/google/vr/sdk/widgets/video/deps/y;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$400(Lcom/google/vr/sdk/widgets/video/deps/y;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/y$b;

    .line 24
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/y$b;->a()V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gU;->a(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/S;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$102(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/S;)Lcom/google/vr/sdk/widgets/video/deps/S;

    .line 3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gU;->a(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/bW;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$1100(Lcom/google/vr/sdk/widgets/video/deps/y;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/cb;

    .line 63
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/cb;->a(Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$302(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gU;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 7

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/gU;->a(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$1000(Lcom/google/vr/sdk/widgets/video/deps/y;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ev;

    .line 59
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ev;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/S;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gU;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$302(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 32
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$102(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/S;)Lcom/google/vr/sdk/widgets/video/deps/S;

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$902(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G;->b(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;JJ)V
    .locals 7

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/G;->b(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public c(Lcom/google/vr/sdk/widgets/video/deps/S;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$602(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/S;)Lcom/google/vr/sdk/widgets/video/deps/S;

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G;->c(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/google/vr/sdk/widgets/video/deps/S;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G;->d(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$902(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 55
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$602(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/S;)Lcom/google/vr/sdk/widgets/video/deps/S;

    .line 56
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$802(Lcom/google/vr/sdk/widgets/video/deps/y;I)I

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 71
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {p2, p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$1200(Lcom/google/vr/sdk/widgets/video/deps/y;Landroid/view/Surface;Z)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 74
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$1200(Lcom/google/vr/sdk/widgets/video/deps/y;Landroid/view/Surface;Z)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$1200(Lcom/google/vr/sdk/widgets/video/deps/y;Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y$a;->a:Lcom/google/vr/sdk/widgets/video/deps/y;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/y;->access$1200(Lcom/google/vr/sdk/widgets/video/deps/y;Landroid/view/Surface;Z)V

    return-void
.end method
