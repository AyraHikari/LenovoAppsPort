.class Lcom/google/vr/sdk/widgets/video/deps/cU$1;
.super Ljava/lang/Object;
.source "LoopingMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cW$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/cU;->a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/cU;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cU;Lcom/google/vr/sdk/widgets/video/deps/cW$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$1;->b:Lcom/google/vr/sdk/widgets/video/deps/cU;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$1;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$1;->b:Lcom/google/vr/sdk/widgets/video/deps/cU;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cU;->a(Lcom/google/vr/sdk/widgets/video/deps/cU;I)I

    .line 3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$1;->b:Lcom/google/vr/sdk/widgets/video/deps/cU;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cU;->a(Lcom/google/vr/sdk/widgets/video/deps/cU;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$1;->b:Lcom/google/vr/sdk/widgets/video/deps/cU;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cU;->a(Lcom/google/vr/sdk/widgets/video/deps/cU;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cU$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/z;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cU$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cU$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/z;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$1;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    invoke-interface {p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW$a;->a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    return-void
.end method
