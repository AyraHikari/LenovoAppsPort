.class public Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;
.super Ljava/lang/Object;
.source "NvsMaskRegionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMaskRegionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ellipse2D"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private center:Lcom/meicam/sdk/NvsPosition2D;

.field private theta:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/meicam/sdk/NvsPosition2D;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->center:Lcom/meicam/sdk/NvsPosition2D;

    .line 122
    iput v1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->theta:F

    iput v1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->b:F

    iput v1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->a:F

    return-void
.end method

.method public constructor <init>(Lcom/meicam/sdk/NvsPosition2D;FFF)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->center:Lcom/meicam/sdk/NvsPosition2D;

    .line 127
    iput p2, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->a:F

    .line 128
    iput p3, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->b:F

    .line 129
    iput p4, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->theta:F

    return-void
.end method


# virtual methods
.method public getA()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->a:F

    return v0
.end method

.method public getB()F
    .locals 1

    .line 141
    iget v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->b:F

    return v0
.end method

.method public getCenter()Lcom/meicam/sdk/NvsPosition2D;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->center:Lcom/meicam/sdk/NvsPosition2D;

    return-object v0
.end method

.method public getTheta()F
    .locals 1

    .line 145
    iget v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->theta:F

    return v0
.end method

.method public setA(F)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->a:F

    return-void
.end method

.method public setB(F)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->b:F

    return-void
.end method

.method public setCenter(Lcom/meicam/sdk/NvsPosition2D;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->center:Lcom/meicam/sdk/NvsPosition2D;

    return-void
.end method

.method public setTheta(F)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;->theta:F

    return-void
.end method
