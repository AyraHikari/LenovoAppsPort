.class Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a(ILjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cz$b;ILjava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->a:I

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->d(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->d(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->a:I

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cz$b;I)I

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->e(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)Lcom/google/vr/sdk/widgets/video/deps/cz$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->c(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)Lcom/google/vr/sdk/widgets/video/deps/cz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->a:I

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/cz$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cz$b;ILjava/lang/Throwable;)V

    return-void
.end method
