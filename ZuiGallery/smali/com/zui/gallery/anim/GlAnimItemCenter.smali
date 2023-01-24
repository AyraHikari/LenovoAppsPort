.class public abstract Lcom/zui/gallery/anim/GlAnimItemCenter;
.super Lcom/zui/gallery/anim/GlAnimItemBase;
.source "GlAnimItemCenter.java"


# instance fields
.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/zui/gallery/anim/GlAnimItemBase;-><init>()V

    const/16 v0, 0x100

    .line 8
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemCenter;->mWidth:I

    .line 9
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemCenter;->mHeight:I

    return-void
.end method


# virtual methods
.method public final Draw(Lcom/zui/gallery/glrenderer/GLCanvas;III)V
    .locals 1

    .line 22
    div-int/lit8 p4, p2, 0x2

    int-to-float p4, p4

    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    invoke-interface {p1, p4, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/GlAnimItemCenter;->DrawCenter(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    neg-int p2, p2

    .line 24
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-interface {p1, p2, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    return-void
.end method

.method protected abstract DrawCenter(Lcom/zui/gallery/glrenderer/GLCanvas;)V
.end method
