.class Lcom/google/vr/sdk/widgets/video/deps/G$a$5;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/S;

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/G$a;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/G$a;Lcom/google/vr/sdk/widgets/video/deps/S;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$5;->b:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$5;->a:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$5;->a:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$5;->b:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(Lcom/google/vr/sdk/widgets/video/deps/G$a;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$5;->a:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/G;->d(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    return-void
.end method
