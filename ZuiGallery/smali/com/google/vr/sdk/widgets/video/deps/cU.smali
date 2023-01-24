.class public final Lcom/google/vr/sdk/widgets/video/deps/cU;
.super Ljava/lang/Object;
.source "LoopingMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cW;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cU$a;,
        Lcom/google/vr/sdk/widgets/video/deps/cU$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/cW;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cW;)V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cU;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cW;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 6
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cU;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->b:I

    return p0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cU;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->c:I

    return p1
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;
    .locals 3

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->b:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->c:I

    rem-int/2addr p1, v2

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(I)V

    invoke-interface {v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V
    .locals 1

    .line 8
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cU$1;

    invoke-direct {v0, p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cU$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cU;Lcom/google/vr/sdk/widgets/video/deps/cW$a;)V

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->b()V

    return-void
.end method
