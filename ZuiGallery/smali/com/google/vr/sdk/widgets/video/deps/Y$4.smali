.class Lcom/google/vr/sdk/widgets/video/deps/Y$4;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/Y;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/Y;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$4;->b:Lcom/google/vr/sdk/widgets/video/deps/Y;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$4;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$4;->b:Lcom/google/vr/sdk/widgets/video/deps/Y;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->a(Lcom/google/vr/sdk/widgets/video/deps/Y;)Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$4;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/Z$a;->a(Ljava/lang/Exception;)V

    return-void
.end method
