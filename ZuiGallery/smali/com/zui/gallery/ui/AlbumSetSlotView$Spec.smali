.class public Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;
.super Ljava/lang/Object;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public categoryLabelHeight:I

.field public categoryLineOffsetX:I

.field public categoryLineOffsetY:I

.field public columnLand:I

.field public columnPort:I

.field public firstCategoryLabelHeight:I

.field public heightSlotGap:I

.field public marginLeft:I

.field public rowsLand:I

.field public rowsPort:I

.field public slotHeight:I

.field public slotHeightAdditional:I

.field public slotWidth:I

.field public widthSlotGap:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1014
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotWidth:I

    .line 1015
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotHeight:I

    const/4 v1, 0x0

    .line 1016
    iput v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotHeightAdditional:I

    .line 1018
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->rowsLand:I

    .line 1019
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->rowsPort:I

    .line 1020
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->widthSlotGap:I

    .line 1021
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->heightSlotGap:I

    .line 1023
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->columnLand:I

    .line 1024
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->columnPort:I

    .line 1026
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->firstCategoryLabelHeight:I

    .line 1027
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLabelHeight:I

    .line 1028
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLineOffsetX:I

    .line 1029
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLineOffsetY:I

    .line 1030
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->marginLeft:I

    return-void
.end method
