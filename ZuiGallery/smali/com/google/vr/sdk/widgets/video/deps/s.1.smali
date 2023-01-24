.class public final Lcom/google/vr/sdk/widgets/video/deps/s;
.super Ljava/lang/Object;
.source "PlaybackParameters.java"


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/s;


# instance fields
.field public final b:F

.field public final c:F

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(FF)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/s;->a:Lcom/google/vr/sdk/widgets/video/deps/s;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/s;->b:F

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/s;->c:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/s;->d:I

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/s;->d:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 12
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/s;->b:F

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/s;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/s;->c:F

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/s;->c:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

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

    .line 14
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/s;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 15
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/s;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
