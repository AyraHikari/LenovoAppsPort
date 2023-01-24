.class Lcom/google/vr/sdk/widgets/video/deps/cR$3;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/cR;->b(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/cR;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cR;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$3;->b:Lcom/google/vr/sdk/widgets/video/deps/cR;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$3;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$3;->b:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->d(Lcom/google/vr/sdk/widgets/video/deps/cR;)Lcom/google/vr/sdk/widgets/video/deps/cS$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$3;->a:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cS$a;->onLoadError(Ljava/io/IOException;)V

    return-void
.end method
