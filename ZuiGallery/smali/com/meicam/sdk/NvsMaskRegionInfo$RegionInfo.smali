.class public Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;
.super Ljava/lang/Object;
.source "NvsMaskRegionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMaskRegionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionInfo"
.end annotation


# instance fields
.field private ellipse2d:Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsPosition2D;",
            ">;"
        }
    .end annotation
.end field

.field private transform2d:Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->points:Ljava/util/List;

    .line 174
    new-instance v0, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->ellipse2d:Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;

    .line 175
    new-instance v0, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->transform2d:Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;

    .line 178
    iput p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->type:I

    return-void
.end method


# virtual methods
.method public getEllipse2D()Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->ellipse2d:Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;

    return-object v0
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

    .line 182
    iget-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->points:Ljava/util/List;

    return-object v0
.end method

.method public getTransform2D()Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->transform2d:Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->type:I

    return v0
.end method

.method public setEllipse2D(Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->ellipse2d:Lcom/meicam/sdk/NvsMaskRegionInfo$Ellipse2D;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsPosition2D;",
            ">;)V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->points:Ljava/util/List;

    return-void
.end method

.method public setTransform2D(Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/meicam/sdk/NvsMaskRegionInfo$RegionInfo;->transform2d:Lcom/meicam/sdk/NvsMaskRegionInfo$Transform2D;

    return-void
.end method
