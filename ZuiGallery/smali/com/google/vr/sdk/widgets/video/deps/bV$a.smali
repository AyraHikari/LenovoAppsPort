.class final Lcom/google/vr/sdk/widgets/video/deps/bV$a;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bV$a;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bV$a;->b:Z

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

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/vr/sdk/widgets/video/deps/bV$a;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/bV$a;

    .line 15
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bV$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/bV$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bV$a;->b:Z

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bV$a;->b:Z

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
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bV$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 8
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bV$a;->b:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
