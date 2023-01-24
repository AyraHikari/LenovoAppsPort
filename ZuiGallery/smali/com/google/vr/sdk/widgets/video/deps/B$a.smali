.class public final Lcom/google/vr/sdk/widgets/video/deps/B$a;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/B$a;->a:I

    .line 3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/B$a;->b:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/B$a;->c:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/B$a;
    .locals 0

    .line 6
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/B$a;->a:I

    return-object p0
.end method

.method public a()Lcom/google/vr/sdk/widgets/video/deps/B;
    .locals 5

    .line 12
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/B;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/B$a;->a:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/B$a;->b:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/B$a;->c:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/B;-><init>(IIILcom/google/vr/sdk/widgets/video/deps/B$1;)V

    return-object v0
.end method

.method public b(I)Lcom/google/vr/sdk/widgets/video/deps/B$a;
    .locals 0

    .line 8
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/B$a;->b:I

    return-object p0
.end method

.method public c(I)Lcom/google/vr/sdk/widgets/video/deps/B$a;
    .locals 0

    .line 10
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/B$a;->c:I

    return-object p0
.end method
