.class public final Lcom/google/vr/sdk/widgets/video/deps/dd$b;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd$b;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd$b;->a:I

    return v0
.end method

.method public a(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd$b;->a:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a(II)Lcom/google/vr/sdk/widgets/video/deps/dd;
    .locals 1

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dd$b;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd$b;->a:I

    add-int/2addr v0, p2

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dd$b;-><init>(I)V

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd$b;->a:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public b(I)I
    .locals 1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public c()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd$b;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public c(I)Lcom/google/vr/sdk/widgets/video/deps/dd;
    .locals 1

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dd$b;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd$b;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dd$b;-><init>(I)V

    return-object p1
.end method
