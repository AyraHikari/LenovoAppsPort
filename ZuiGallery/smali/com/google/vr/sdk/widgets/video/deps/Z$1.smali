.class Lcom/google/vr/sdk/widgets/video/deps/Z$1;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/Z;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Z$1;->a:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z$1;->a:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/Z;->b(Lcom/google/vr/sdk/widgets/video/deps/Z;)Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Z$1;->a:Lcom/google/vr/sdk/widgets/video/deps/Z;

    .line 3
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Lcom/google/vr/sdk/widgets/video/deps/Z;)Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Media does not support uuid: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/Z$a;->a(Ljava/lang/Exception;)V

    return-void
.end method
