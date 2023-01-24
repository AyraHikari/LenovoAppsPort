.class public Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;
.super Ljava/lang/Object;
.source "NvsHumanDetectionHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsHumanDetectionHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceData2D"
.end annotation


# instance fields
.field private bbox:Landroid/graphics/RectF;

.field private pitch:F

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsPosition2D;",
            ">;"
        }
    .end annotation
.end field

.field private roll:F

.field private visibilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBbox()Landroid/graphics/RectF;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->bbox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPitch()F
    .locals 1

    .line 261
    iget v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->pitch:F

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsPosition2D;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->points:Ljava/util/List;

    return-object v0
.end method

.method public getRoll()F
    .locals 1

    .line 271
    iget v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->roll:F

    return v0
.end method

.method public getVisibilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->visibilities:Ljava/util/List;

    return-object v0
.end method

.method public getYaw()F
    .locals 1

    .line 251
    iget v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->yaw:F

    return v0
.end method

.method public setBbox(FFFF)V
    .locals 1

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->bbox:Landroid/graphics/RectF;

    return-void
.end method

.method public setPitch(F)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->pitch:F

    return-void
.end method

.method public setPoints(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meicam/sdk/NvsPosition2D;",
            ">;)V"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->points:Ljava/util/List;

    .line 225
    iput-object p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->points:Ljava/util/List;

    return-void
.end method

.method public setRoll(F)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->roll:F

    return-void
.end method

.method public setVisibilities(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->visibilities:Ljava/util/List;

    .line 236
    iput-object p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->visibilities:Ljava/util/List;

    return-void
.end method

.method public setYaw(F)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;->yaw:F

    return-void
.end method
