.class Lcom/google/vr/sdk/widgets/video/deps/G$a$3;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/m;

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/G$a;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/G$a;Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$3;->b:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$3;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$3;->b:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(Lcom/google/vr/sdk/widgets/video/deps/G$a;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$3;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/G;->b(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    return-void
.end method
