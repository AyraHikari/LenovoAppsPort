.class public Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;
.super Ljava/lang/Object;
.source "RedEyeCandidate.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/filters/FilterPoint;


# instance fields
.field mBounds:Landroid/graphics/RectF;

.field mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    .line 31
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 32
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    .line 26
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 27
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public equals(Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;)Z
    .locals 2

    .line 36
    iget-object v0, p1, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public intersect(Landroid/graphics/RectF;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method
