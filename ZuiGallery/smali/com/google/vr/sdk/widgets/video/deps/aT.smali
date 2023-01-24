.class final Lcom/google/vr/sdk/widgets/video/deps/aT;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/aT$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x2000


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[J[IJ)Lcom/google/vr/sdk/widgets/video/deps/aT$a;
    .locals 16

    move-object/from16 v0, p2

    const/16 v1, 0x2000

    .line 2
    div-int v1, v1, p0

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget v6, v0, v4

    .line 5
    invoke-static {v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(II)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-array v7, v5, [J

    .line 8
    new-array v8, v5, [I

    .line 10
    new-array v10, v5, [J

    .line 11
    new-array v11, v5, [I

    move v2, v3

    move v4, v2

    move v9, v4

    .line 14
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 15
    aget v5, v0, v3

    .line 16
    aget-wide v12, p1, v3

    :goto_2
    if-lez v5, :cond_1

    .line 18
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 19
    aput-wide v12, v7, v4

    mul-int v14, p0, v6

    .line 20
    aput v14, v8, v4

    .line 21
    aget v14, v8, v4

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v14, v2

    mul-long v14, v14, p3

    .line 22
    aput-wide v14, v10, v4

    const/4 v14, 0x1

    .line 23
    aput v14, v11, v4

    .line 24
    aget v14, v8, v4

    int-to-long v14, v14

    add-long/2addr v12, v14

    add-int/2addr v2, v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 30
    :cond_2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aT$a;

    const/4 v12, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/aT$a;-><init>([J[II[J[ILcom/google/vr/sdk/widgets/video/deps/aT$1;)V

    return-object v0
.end method
