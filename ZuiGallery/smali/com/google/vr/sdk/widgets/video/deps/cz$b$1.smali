.class Lcom/google/vr/sdk/widgets/video/deps/cz$b$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/cz$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/cz$b;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$1;->a:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$1;->a:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->c(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)Lcom/google/vr/sdk/widgets/video/deps/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$1;->a:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cz;->a(Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V

    return-void
.end method
