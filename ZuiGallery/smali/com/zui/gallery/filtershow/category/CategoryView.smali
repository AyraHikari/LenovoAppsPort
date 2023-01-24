.class public Lcom/zui/gallery/filtershow/category/CategoryView;
.super Lcom/zui/gallery/filtershow/category/IconView;
.source "CategoryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zui/gallery/filtershow/category/SwipableView;


# static fields
.field public static final HORIZONTAL:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "CategoryView"

.field public static final VERTICAL:I = 0x0

.field private static final X_OVERSCROLL_DISTANCE:I = 0x78


# instance fields
.field private editorPanel:Lcom/zui/gallery/filtershow/editors/EditorPanel;

.field private first:Z

.field private look_left:I

.field private mAction:Lcom/zui/gallery/filtershow/category/Action;

.field mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderStroke:I

.field private mCanBeRemoved:Z

.field private mDeleteSlope:F

.field private mDoubleActionLast:J

.field private mDoubleTapDelay:J

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectDrawable2:Landroid/graphics/drawable/Drawable;

.field private mSelectDrawableSize:I

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mSelectionColor:I

.field private mSelectionStroke:I

.field private mSpacerColor:I

.field private mStartTouchX:F

.field private mStartTouchY:F

.field private mUnSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private rectSize:I

.field private showselcet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 90
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/IconView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mStartTouchX:F

    .line 70
    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mStartTouchY:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 71
    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mDeleteSlope:F

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectionColor:I

    .line 73
    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSpacerColor:I

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mCanBeRemoved:Z

    const-wide/16 v1, 0x0

    .line 75
    iput-wide v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mDoubleActionLast:J

    const-wide/16 v1, 0xfa

    .line 76
    iput-wide v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mDoubleTapDelay:J

    const/16 v1, 0xd2

    .line 82
    iput v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectDrawableSize:I

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->showselcet:Z

    .line 85
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->first:Z

    const/4 v2, 0x0

    .line 86
    iput-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->editorPanel:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    .line 87
    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->look_left:I

    .line 92
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->first:Z

    .line 94
    invoke-virtual {p0, p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060226

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->look_left:I

    const v1, 0x7f060340

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectionStroke:I

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectPaint:Landroid/graphics/Paint;

    .line 99
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, 0x7f0500e6

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectionColor:I

    const v1, 0x7f0500e8

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSpacerColor:I

    .line 102
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectionColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectionStroke:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mBorderStroke:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07014a

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f07014d

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mUnSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const v0, 0x7f060189

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectDrawableSize:I

    goto :goto_0

    :cond_0
    const v0, 0x7f0601bf

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectDrawableSize:I

    :goto_0
    const v0, 0x7f060132

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->rectSize:I

    return-void
.end method

.method private canBeRemoved()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mCanBeRemoved:Z

    return v0
.end method

.method private drawSpacer(Landroid/graphics/Canvas;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSpacerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->remove(Lcom/zui/gallery/filtershow/category/Action;)V

    return-void
.end method

.method public isHalfImage()Z
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public needsCenterText()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/filtershow/category/IconView;->needsCenterText()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 292
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setConfigurationJustHappend(Landroid/content/Context;Z)V

    .line 293
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setSavingTaskState(Landroid/content/Context;Z)V

    .line 294
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->enterDragState(Landroid/content/Context;Z)V

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;

    iget v0, v0, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;->postion:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 296
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->showselcet:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->showselcet:Z

    goto :goto_0

    .line 298
    :cond_0
    iput-boolean v3, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->showselcet:Z

    .line 301
    :goto_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->showselcet:Z

    if-nez v0, :cond_1

    .line 302
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->first:Z

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryView;->scrollCompute(Landroid/view/View;I)V

    .line 306
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 307
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/Action;->getType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 308
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->addNewPreset()V

    goto/16 :goto_5

    .line 309
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/Action;->getType()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_15

    .line 310
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/Action;->isDoubleAction()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mDoubleActionLast:J

    sub-long/2addr v1, v3

    .line 312
    iget-wide v3, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mDoubleTapDelay:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_3

    .line 313
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 315
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mDoubleActionLast:J

    goto/16 :goto_4

    .line 317
    :cond_4
    sget v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v5, 0x7

    const-string v6, "curEdit"

    if-ne v2, v5, :cond_10

    const-string v1, "cateGroy"

    const-string v2, "onClick: add"

    .line 318
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->selectIndex:I

    if-eqz v1, :cond_5

    .line 322
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "EditorPanel"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 323
    check-cast v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->editorPanel:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    .line 326
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->isSelected(Landroid/view/View;)Z

    move-result v1

    const v2, 0x7f060227

    const-string v3, "newbug"

    const/16 v5, 0x8

    if-eqz v1, :cond_a

    .line 327
    iget-object v1, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 328
    iget-object v1, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 329
    :cond_6
    sget v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->selectIndex:I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->editorPanel:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 331
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->editorPanel:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 332
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    .line 333
    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v1, :cond_7

    const-string v1, "newbug: 111"

    .line 334
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->framelayoutMainpanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_7
    const-string v1, "newbug: 222"

    .line 337
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->framelayoutMainpanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 342
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;

    iget p1, p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;->postion:I

    if-nez p1, :cond_9

    .line 343
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 346
    :cond_9
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setUnSelected(Landroid/view/View;)V

    return-void

    .line 350
    :cond_a
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->editorPanel:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    const-string v7, "curEdit: 222"

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 351
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->editorPanel:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 353
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    .line 354
    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v1, :cond_b

    const-string v1, "newbug: 333"

    .line 355
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->framelayoutMainpanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    :cond_b
    const-string v1, "newbug: 444"

    .line 358
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->framelayoutMainpanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    :cond_c
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;

    iget p1, p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;->postion:I

    if-nez p1, :cond_d

    const-string p1, "curEdit: 333"

    .line 365
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object p1

    .line 368
    invoke-virtual {p1, v4}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->contains(B)Z

    move-result p1

    if-nez p1, :cond_e

    .line 370
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_3

    :cond_d
    const-string p1, "curEdit: 444"

    .line 373
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 378
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WBALANCE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    .line 379
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CURVES"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 380
    :cond_f
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object p1, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 383
    :cond_10
    sget v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_13

    .line 386
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/util/GroupUtils;->getFiltershowCaptionTimes(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v2, v3

    .line 388
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/zui/gallery/util/GroupUtils;->setFiltershowCaptionTimes(Landroid/content/Context;I)V

    .line 390
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->isSelected(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    if-eqz p1, :cond_11

    return-void

    .line 395
    :cond_11
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getImagePrest()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    .line 398
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v2

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onclick.filterRepresentation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " && effect is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wangcancsize"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_12

    return-void

    .line 405
    :cond_12
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10006f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setText(Ljava/lang/String;)V

    .line 406
    new-instance v4, Landroid/graphics/PointF;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setCaptionTranslation(Landroid/graphics/PointF;)V

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pos is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionTranslation()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "wwww_bbbbb"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 408
    invoke-virtual {v2, v5, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->scaleCaption(FLandroid/graphics/PointF;)V

    .line 410
    new-instance v4, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v4}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    .line 411
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/gallery/util/GroupUtils;->getVideoEditResImageWidth(Landroid/content/Context;)I

    move-result v5

    iput v5, v4, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 412
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/gallery/util/GroupUtils;->getVideoEditResImageHeight(Landroid/content/Context;)I

    move-result v5

    iput v5, v4, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 413
    new-instance v5, Lcom/meicam/sdk/NvsRational;

    invoke-direct {v5, v3, v3}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v5, v4, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imageWidth is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/zui/gallery/util/GroupUtils;->getVideoEditResImageWidth(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " && imageHeight is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/zui/gallery/util/GroupUtils;->getVideoEditResImageHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "wwww_video"

    .line 414
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v2, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setVideoResolution(Lcom/meicam/sdk/NvsVideoResolution;)V

    .line 418
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setCaptionEffect(Lcom/meicam/effect/sdk/NvsVideoEffectCaption;)V

    .line 420
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/zui/gallery/util/GroupUtils;->copyCaption(Landroid/content/Context;Z)V

    .line 422
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/zui/gallery/util/GroupUtils;->enterCaptionState(Landroid/content/Context;Z)V

    .line 423
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_4

    :cond_13
    const-string p1, "curEdit: 555"

    .line 425
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 430
    :cond_14
    :goto_4
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setFiltershowPreviousType(Landroid/content/Context;I)V

    .line 432
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setSelected(Landroid/view/View;)V

    :cond_15
    :goto_5
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    const v1, 0x7f0500e8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryView;->drawSpacer(Landroid/graphics/Canvas;)V

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->isDoubleAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getHeight()I

    move-result v5

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getOrientation()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/zui/gallery/filtershow/category/Action;->setImageFrame(Landroid/graphics/Rect;I)V

    .line 167
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryView;->setTextColor(I)V

    .line 172
    :cond_2
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/category/IconView;->onDraw(Landroid/graphics/Canvas;)V

    .line 188
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->rectSize:I

    iget v3, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectDrawableSize:I

    sub-int/2addr v0, v3

    div-int/lit8 v5, v0, 0x2

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->isSelected(Landroid/view/View;)Z

    move-result v0

    const/4 v3, 0x7

    if-eqz v0, :cond_5

    .line 190
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne v0, v3, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 194
    sget v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->selectIndex:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->selectIndex:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 196
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/category/CategoryView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/category/CategoryView;->setTextColor(I)V

    .line 199
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/category/IconView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryView;->setTextColor(I)V

    .line 204
    iget v4, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->look_left:I

    iget v7, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectDrawableSize:I

    add-int v6, v7, v4

    iget v8, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectionStroke:I

    iget-object v9, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mBorderStroke:I

    iget-object v11, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, p1

    invoke-static/range {v3 .. v12}, Lcom/zui/gallery/filtershow/ui/SelectionRenderer;->drawSelection(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 210
    :cond_5
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-eq v0, v3, :cond_6

    .line 212
    iget v4, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->look_left:I

    iget v7, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mSelectDrawableSize:I

    add-int v6, v7, v4

    iget-object v8, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mUnSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/zui/gallery/filtershow/ui/SelectionRenderer;->drawUnSelection(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 438
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/category/IconView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 439
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 444
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->canBeRemoved()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 447
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mStartTouchY:F

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mStartTouchX:F

    .line 451
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryView;->setTranslationX(F)V

    .line 453
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryView;->setTranslationY(F)V

    .line 455
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mStartTouchY:F

    sub-float/2addr v0, v3

    .line 457
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getOrientation()I

    move-result v3

    if-nez v3, :cond_3

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mStartTouchX:F

    sub-float v0, p1, v0

    .line 460
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mDeleteSlope:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 461
    iget p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mStartTouchX:F

    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mStartTouchY:F

    invoke-virtual {v1, p0, p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setHandlesSwipeForView(Landroid/view/View;FF)V

    :cond_4
    return v2
.end method

.method public scrollCompute(Landroid/view/View;I)V
    .locals 3

    if-ltz p2, :cond_4

    .line 259
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 263
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 264
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v1, 0x0

    .line 267
    aget v2, p2, v1

    if-gez v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getScrollView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getScrollView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ScrollView;

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getScrollView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    aget p2, p2, v1

    add-int/lit8 p2, p2, -0x78

    invoke-virtual {v2, p2, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getScrollView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getScrollView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;

    aget p2, p2, v1

    add-int/lit8 p2, p2, -0x78

    invoke-virtual {v2, p2, v1}, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->smoothScrollBy(II)V

    .line 279
    :cond_2
    :goto_0
    iget p2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 280
    iget-object p2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getScrollView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 281
    iget-object p2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getScrollView()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ScrollView;

    if-eqz p2, :cond_3

    .line 282
    iget-object p2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getScrollView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x78

    invoke-virtual {p2, p1, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1

    .line 283
    :cond_3
    iget-object p2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getScrollView()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;

    if-eqz p2, :cond_4

    .line 284
    iget-object p2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getScrollView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x78

    invoke-virtual {p2, p1, v1}, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->smoothScrollBy(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public scrollComputeToNone(Landroid/view/View;I)V
    .locals 1

    if-ltz p2, :cond_2

    .line 237
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 241
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    .line 244
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 246
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->first:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 247
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->first:Z

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/category/Action;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setSelected(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->showselcet:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setAction(Lcom/zui/gallery/filtershow/category/Action;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V
    .locals 1

    .line 220
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    .line 221
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryView;->setText(Ljava/lang/String;)V

    .line 222
    iput-object p2, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 223
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->canBeRemoved()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mCanBeRemoved:Z

    const/4 p1, 0x0

    .line 224
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryView;->setUseOnlyDrawable(Z)V

    .line 225
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07014e

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryView;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 228
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryView;->setUseOnlyDrawable(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100127

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryView;->mAction:Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->invalidate()V

    return-void
.end method
