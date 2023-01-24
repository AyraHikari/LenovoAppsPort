.class public Lcom/zui/gallery/ui/AlbumSetSlotView$RisingAnimation;
.super Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RisingAnimation"
.end annotation


# static fields
.field private static final RISING_DISTANCE:I = 0x80


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 847
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 0

    .line 852
    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$RisingAnimation;->mProgress:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    const/high16 p2, 0x43000000    # 128.0f

    mul-float/2addr p3, p2

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    return-void
.end method
