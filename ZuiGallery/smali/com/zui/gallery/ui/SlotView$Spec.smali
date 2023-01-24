.class public Lcom/zui/gallery/ui/SlotView$Spec;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public columnLand:I

.field public columnPort:I

.field public leftRightMargin:I

.field public rowsLand:I

.field public rowsPort:I

.field public slotGap:I

.field public slotHeight:I

.field public slotHeightAdditional:I

.field public slotPanoGap:I

.field public slotPanoHeight:I

.field public slotPanoWidth:I

.field public slotWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 557
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->slotWidth:I

    .line 558
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->slotHeight:I

    const/4 v1, 0x0

    .line 559
    iput v1, p0, Lcom/zui/gallery/ui/SlotView$Spec;->slotHeightAdditional:I

    .line 561
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->rowsLand:I

    .line 562
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->rowsPort:I

    .line 563
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->slotGap:I

    .line 566
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->columnLand:I

    .line 567
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->columnPort:I

    .line 571
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoWidth:I

    .line 572
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoHeight:I

    .line 573
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoGap:I

    .line 575
    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Spec;->leftRightMargin:I

    return-void
.end method
