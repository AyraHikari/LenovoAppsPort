.class public final Lcom/google/vr/sdk/widgets/video/deps/G$a;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/G;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b:Lcom/google/vr/sdk/widgets/video/deps/G;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/G$a;)Lcom/google/vr/sdk/widgets/video/deps/G;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b:Lcom/google/vr/sdk/widgets/video/deps/G;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b:Lcom/google/vr/sdk/widgets/video/deps/G;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/G$a$6;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G$a$6;-><init>(Lcom/google/vr/sdk/widgets/video/deps/G$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(IJJ)V
    .locals 9

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b:Lcom/google/vr/sdk/widgets/video/deps/G;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/G$a$4;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/G$a$4;-><init>(Lcom/google/vr/sdk/widgets/video/deps/G$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/S;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b:Lcom/google/vr/sdk/widgets/video/deps/G;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/G$a$1;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G$a$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/G$a;Lcom/google/vr/sdk/widgets/video/deps/S;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b:Lcom/google/vr/sdk/widgets/video/deps/G;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/G$a$3;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G$a$3;-><init>(Lcom/google/vr/sdk/widgets/video/deps/G$a;Lcom/google/vr/sdk/widgets/video/deps/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 9

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b:Lcom/google/vr/sdk/widgets/video/deps/G;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/G$a$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/G$a$2;-><init>(Lcom/google/vr/sdk/widgets/video/deps/G$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/S;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b:Lcom/google/vr/sdk/widgets/video/deps/G;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/G$a$5;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G$a$5;-><init>(Lcom/google/vr/sdk/widgets/video/deps/G$a;Lcom/google/vr/sdk/widgets/video/deps/S;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
