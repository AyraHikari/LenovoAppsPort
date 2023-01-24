.class public final Lcom/google/vr/sdk/widgets/video/deps/cW$b;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(III)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    .line 5
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    .line 6
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/cW$b;
    .locals 3

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    invoke-direct {v0, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(III)V

    :goto_0
    return-object v0
.end method

.method public a()Z
    .locals 2

    .line 11
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    .line 17
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

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

    .line 19
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 21
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    add-int/2addr v1, v0

    return v1
.end method
