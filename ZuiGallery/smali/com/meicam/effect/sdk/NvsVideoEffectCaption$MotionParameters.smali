.class public Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;
.super Ljava/lang/Object;
.source "NvsVideoEffectCaption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsVideoEffectCaption;
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

    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1535
    iput v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;->anchorX:F

    .line 1536
    iput v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;->anchorY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1537
    iput v1, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;->scaleX:F

    .line 1538
    iput v1, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;->scaleY:F

    .line 1539
    iput v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;->rotationZ:F

    .line 1540
    iput v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;->transX:F

    .line 1541
    iput v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;->transY:F

    return-void
.end method
