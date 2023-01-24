.class Lcom/google/vr/sdk/widgets/video/deps/cA$b;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/cA$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cA$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cA$b;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cA$a;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->c:Z

    if-eqz p1, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->a()V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->c:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cA$b;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cA$b;Lcom/google/vr/sdk/widgets/video/deps/cA$a;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cA$a;)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->c:Z

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->c:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/cA$a;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cA$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->a()V

    goto :goto_1

    .line 12
    :cond_2
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->c:Z

    :goto_1
    return-void
.end method
