.class Lcom/google/vr/sdk/widgets/video/deps/cA$a;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/cA;

.field private final b:Landroid/content/Intent;

.field private c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cA;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->b:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cA;Landroid/content/Intent;Lcom/google/vr/sdk/widgets/video/deps/cA$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cA;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 3

    const-string v0, "com.google.android.exoplayer.offline.action.BROADCAST"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->b:Landroid/content/Intent;

    const-string/jumbo v2, "work_intent"

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "state"

    .line 24
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cA;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/cD;->a(Landroid/content/Context;)Lcom/google/vr/sdk/widgets/video/deps/cD;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/cD;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cA$a;Ljava/lang/Throwable;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a(Ljava/lang/Throwable;I)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;I)V
    .locals 2

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "error"

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 20
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method private a()Z
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    .line 12
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    .line 13
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->c()F

    move-result v2

    const-string v3, "downloadPercentage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    .line 14
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->d()J

    move-result-wide v2

    const-string v4, "downloadedBytes"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a(Landroid/content/Intent;I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cA$a;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cz$b;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    .line 6
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a()Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p4, p3}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a(Ljava/lang/Throwable;I)V

    :goto_0
    return-void
.end method
