.class public Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;
.super Ljava/lang/Object;
.source "NvsMaskRegionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMaskRegionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transform2D"
.end annotation


# instance fields
.field private anchor:Lcom/meicam/sdk/NvsPosition2D;

.field private rotation:F

.field private scale:Lcom/meicam/sdk/NvsPosition2D;

.field private translation:Lcom/meicam/sdk/NvsPosition2D;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/meicam/sdk/NvsPosition2D;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->anchor:Lcom/meicam/sdk/NvsPosition2D;

    .line 62
    new-instance v0, Lcom/meicam/sdk/NvsPosition2D;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2}, Lcom/meicam/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->scale:Lcom/meicam/sdk/NvsPosition2D;

    .line 63
    iput v1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->rotation:F

    .line 64
    new-instance v0, Lcom/meicam/sdk/NvsPosition2D;

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->translation:Lcom/meicam/sdk/NvsPosition2D;

    return-void
.end method

.method public constructor <init>(Lcom/meicam/sdk/NvsPosition2D;Lcom/meicam/sdk/NvsPosition2D;FLcom/meicam/sdk/NvsPosition2D;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->anchor:Lcom/meicam/sdk/NvsPosition2D;

    .line 69
    iput-object p2, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->scale:Lcom/meicam/sdk/NvsPosition2D;

    .line 70
    iput p3, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->rotation:F

    .line 71
    iput-object p4, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->translation:Lcom/meicam/sdk/NvsPosition2D;

    return-void
.end method


# virtual methods
.method public getAnchor()Lcom/meicam/sdk/NvsPosition2D;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->anchor:Lcom/meicam/sdk/NvsPosition2D;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->rotation:F

    return v0
.end method

.method public getScale()Lcom/meicam/sdk/NvsPosition2D;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->scale:Lcom/meicam/sdk/NvsPosition2D;

    return-object v0
.end method

.method public getTranslation()Lcom/meicam/sdk/NvsPosition2D;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->translation:Lcom/meicam/sdk/NvsPosition2D;

    return-object v0
.end method

.method public setAnchor(Lcom/meicam/sdk/NvsPosition2D;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->anchor:Lcom/meicam/sdk/NvsPosition2D;

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->rotation:F

    return-void
.end method

.method public setScale(Lcom/meicam/sdk/NvsPosition2D;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->scale:Lcom/meicam/sdk/NvsPosition2D;

    return-void
.end method

.method public setTranslation(Lcom/meicam/sdk/NvsPosition2D;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;->translation:Lcom/meicam/sdk/NvsPosition2D;

    return-void
.end method
