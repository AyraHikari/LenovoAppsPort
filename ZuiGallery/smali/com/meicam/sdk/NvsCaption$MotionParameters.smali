.class public Lcom/meicam/sdk/NvsCaption$MotionParameters;
.super Ljava/lang/Object;
.source "NvsCaption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsCaption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionParameters"
.end annotation


# instance fields
.field public anchorX:F

.field public anchorY:F

.field public rotationZ:F

.field public scaleX:F

.field public scaleY:F

.field public transX:F

.field public transY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1555
    iput v0, p0, Lcom/meicam/sdk/NvsCaption$MotionParameters;->anchorX:F

    .line 1556
    iput v0, p0, Lcom/meicam/sdk/NvsCaption$MotionParameters;->anchorY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1557
    iput v1, p0, Lcom/meicam/sdk/NvsCaption$MotionParameters;->scaleX:F

    .line 1558
    iput v1, p0, Lcom/meicam/sdk/NvsCaption$MotionParameters;->scaleY:F

    .line 1559
    iput v0, p0, Lcom/meicam/sdk/NvsCaption$MotionParameters;->rotationZ:F

    .line 1560
    iput v0, p0, Lcom/meicam/sdk/NvsCaption$MotionParameters;->transX:F

    .line 1561
    iput v0, p0, Lcom/meicam/sdk/NvsCaption$MotionParameters;->transY:F

    return-void
.end method
