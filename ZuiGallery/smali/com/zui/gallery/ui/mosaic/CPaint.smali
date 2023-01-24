.class public Lcom/zui/gallery/ui/mosaic/CPaint;
.super Landroid/graphics/Paint;
.source "CPaint.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setAntiAlias(Z)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setFilterBitmap(Z)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setDither(Z)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setSubpixelText(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/ui/mosaic/CPaint;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    return-void
.end method
