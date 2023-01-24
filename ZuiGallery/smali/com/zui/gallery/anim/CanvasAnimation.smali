.class public abstract Lcom/zui/gallery/anim/CanvasAnimation;
.super Lcom/zui/gallery/anim/Animation;
.source "CanvasAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/zui/gallery/anim/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/zui/gallery/glrenderer/GLCanvas;)V
.end method

.method public abstract getCanvasSaveFlags()I
.end method
