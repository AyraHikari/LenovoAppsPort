.class public abstract Lcom/zui/gallery/anim/GlAnimaionSpec;
.super Ljava/lang/Object;
.source "GlAnimaionSpec.java"


# static fields
.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public duration:I

.field public interpolator:Landroid/view/animation/Interpolator;

.field private mListCenter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/anim/GlAnimItemCenter;",
            ">;"
        }
    .end annotation
.end field

.field private mListTranslate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/anim/GlAnimItemBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/GlAnimaionSpec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xce4

    .line 13
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->duration:I

    .line 14
    sget-object v0, Lcom/zui/gallery/anim/GlAnimaionSpec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method protected addItem(Lcom/zui/gallery/anim/GlAnimItemBase;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListTranslate:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListTranslate:Ljava/util/ArrayList;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListTranslate:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addItem(Lcom/zui/gallery/anim/GlAnimItemCenter;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListCenter:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListCenter:Ljava/util/ArrayList;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListCenter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;III)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/gallery/anim/GlAnimaionSpec;->drawTranslation(Lcom/zui/gallery/glrenderer/GLCanvas;III)V

    .line 73
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/gallery/anim/GlAnimaionSpec;->drawCenter(Lcom/zui/gallery/glrenderer/GLCanvas;III)V

    return-void
.end method

.method public drawCenter(Lcom/zui/gallery/glrenderer/GLCanvas;III)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListCenter:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListCenter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListCenter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/anim/GlAnimItemCenter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/zui/gallery/anim/GlAnimItemCenter;->Draw(Lcom/zui/gallery/glrenderer/GLCanvas;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawTranslation(Lcom/zui/gallery/glrenderer/GLCanvas;III)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListTranslate:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListTranslate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListTranslate:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/anim/GlAnimItemBase;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/zui/gallery/anim/GlAnimItemBase;->Draw(Lcom/zui/gallery/glrenderer/GLCanvas;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCalculate(F)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListCenter:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListCenter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListCenter:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/anim/GlAnimItemCenter;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/anim/GlAnimItemCenter;->onCalculate(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListTranslate:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 45
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListTranslate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/zui/gallery/anim/GlAnimaionSpec;->mListTranslate:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/anim/GlAnimItemBase;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/anim/GlAnimItemBase;->onCalculate(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
