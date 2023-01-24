.class Lcom/google/vr/sdk/widgets/video/deps/cR$2;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/cR;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv;[Lcom/google/vr/sdk/widgets/video/deps/as;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cS$a;Lcom/google/vr/sdk/widgets/video/deps/cR$c;Lcom/google/vr/sdk/widgets/video/deps/fn;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/cR;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cR;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$2;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$2;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->b(Lcom/google/vr/sdk/widgets/video/deps/cR;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$2;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->c(Lcom/google/vr/sdk/widgets/video/deps/cR;)Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$2;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    :cond_0
    return-void
.end method
