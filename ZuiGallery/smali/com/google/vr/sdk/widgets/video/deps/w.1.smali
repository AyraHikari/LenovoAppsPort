.class public final Lcom/google/vr/sdk/widgets/video/deps/w;
.super Ljava/lang/Object;
.source "RendererConfiguration.java"


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/w;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/w;-><init>(I)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/w;->a:Lcom/google/vr/sdk/widgets/video/deps/w;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/w;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/w;

    .line 9
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/w;->b:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/w;->b:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/w;->b:I

    return v0
.end method
