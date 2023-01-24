.class Lcom/google/vr/sdk/widgets/video/deps/gU$a$6;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Surface;

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/gU$a;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/gU$a;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$6;->b:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$6;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$6;->b:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(Lcom/google/vr/sdk/widgets/video/deps/gU$a;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$6;->a:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gU;->a(Landroid/view/Surface;)V

    return-void
.end method
