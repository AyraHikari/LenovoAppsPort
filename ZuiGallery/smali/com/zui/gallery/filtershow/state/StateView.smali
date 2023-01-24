.class public Lcom/zui/gallery/filtershow/state/StateView;
.super Landroid/view/View;
.source "StateView.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/category/SwipableView;


# static fields
.field public static BEGIN:I = 0x1

.field public static DEFAULT:I = 0x0

.field public static DOWN:I = 0x2

.field public static END:I = 0x2

.field public static LEFT:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "StateView"

.field public static RIGHT:I = 0x4

.field public static UP:I = 0x1

.field private static sArrowHeight:I = 0x10

.field private static sArrowWidth:I = 0x8

.field private static sMargin:I = 0x10


# instance fields
.field private mAlpha:F

.field private mBackgroundColor:I

.field private mDeleteSlope:F

.field private mDirection:I

.field private mDuplicateButton:Z

.field private mEndsBackgroundColor:I

.field private mEndsTextColor:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mSelectedBackgroundColor:I

.field private mSelectedTextColor:I

.field private mStartTouchX:F

.field private mStartTouchY:F

.field private mState:Lcom/zui/gallery/filtershow/state/State;

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTextSize:F

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    sget v0, Lcom/zui/gallery/filtershow/state/StateView;->DEFAULT:I

    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/state/StateView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    .line 48
    sget p1, Lcom/zui/gallery/filtershow/state/StateView;->DEFAULT:I

    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 49
    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mAlpha:F

    const-string p1, "Default"

    .line 50
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mText:Ljava/lang/String;

    const/high16 p1, 0x42000000    # 32.0f

    .line 51
    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mTextSize:F

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mStartTouchX:F

    .line 56
    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mStartTouchY:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 57
    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mDeleteSlope:F

    const/4 p1, 0x1

    .line 59
    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mOrientation:I

    .line 60
    sget p1, Lcom/zui/gallery/filtershow/state/StateView;->DOWN:I

    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mDirection:I

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mTextBounds:Landroid/graphics/Rect;

    .line 78
    iput p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    .line 79
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0500f1

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mEndsBackgroundColor:I

    const p2, 0x7f0500f2

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mEndsTextColor:I

    const p2, 0x7f0500f0

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mBackgroundColor:I

    const p2, 0x7f0500f5

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mTextColor:I

    const p2, 0x7f0500f3

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mSelectedBackgroundColor:I

    const p2, 0x7f0500f4

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mSelectedTextColor:I

    const p2, 0x7f060303

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mTextSize:F

    return-void
.end method

.method private drawHorizontalPath(FFFF)V
    .locals 4

    .line 170
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 171
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    iget v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v2, Lcom/zui/gallery/filtershow/state/StateView;->END:I

    if-ne v0, v2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v2, p3, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float/2addr v2, p3

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    iget p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v0, Lcom/zui/gallery/filtershow/state/StateView;->BEGIN:I

    if-eq p2, v0, :cond_3

    .line 184
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v0, p3, p4

    add-float v1, v0, p3

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float p4, p1, p4

    invoke-virtual {p2, p4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    iget-object p2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    iget v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v2, Lcom/zui/gallery/filtershow/state/StateView;->END:I

    if-ne v0, v2, :cond_2

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float v2, p1, p4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 195
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v3, p3, p4

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float/2addr v3, p3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 200
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    iget p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget p2, Lcom/zui/gallery/filtershow/state/StateView;->BEGIN:I

    if-eq p1, p2, :cond_3

    .line 202
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float p2, p3, p4

    add-float v0, p2, p3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 204
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private drawVerticalDownPath(FFFF)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 233
    iget v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v2, Lcom/zui/gallery/filtershow/state/StateView;->BEGIN:I

    if-eq v0, v2, :cond_0

    .line 234
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 235
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v2, p3, p4

    invoke-virtual {v0, v2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float/2addr v2, p3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    iget v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v2, Lcom/zui/gallery/filtershow/state/StateView;->END:I

    if-eq v0, v2, :cond_1

    .line 241
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float v2, p2, p4

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float/2addr p4, p3

    add-float v0, p4, p3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 244
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 245
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object p3, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 250
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private drawVerticalPath(FFFF)V
    .locals 3

    .line 211
    iget v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v1, Lcom/zui/gallery/filtershow/state/StateView;->BEGIN:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float/2addr v1, p3

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    iget p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v0, Lcom/zui/gallery/filtershow/state/StateView;->END:I

    if-eq p1, v0, :cond_1

    .line 223
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v0, p3, p4

    add-float v1, v0, p3

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float p4, p2, p4

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 302
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->getState()Lcom/zui/gallery/filtershow/state/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/state/State;->getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->removeFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;)V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 117
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    :goto_0
    iget v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v1, Lcom/zui/gallery/filtershow/state/StateView;->BEGIN:I

    if-ne v0, v1, :cond_2

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mEndsTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 126
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/filtershow/state/StateView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 130
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/state/StateView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 131
    iget-object v2, p0, Lcom/zui/gallery/filtershow/state/StateView;->mText:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .line 266
    iget v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mAlpha:F

    return v0
.end method

.method public getState()Lcom/zui/gallery/filtershow/state/State;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mState:Lcom/zui/gallery/filtershow/state/State;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mState:Lcom/zui/gallery/filtershow/state/State;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/state/State;->isDraggable()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 136
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 137
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 141
    sget v3, Lcom/zui/gallery/filtershow/state/StateView;->sArrowHeight:I

    int-to-float v3, v3

    .line 142
    sget v4, Lcom/zui/gallery/filtershow/state/StateView;->sArrowWidth:I

    int-to-float v4, v4

    .line 144
    iget v5, p0, Lcom/zui/gallery/filtershow/state/StateView;->mOrientation:I

    if-nez v5, :cond_0

    .line 145
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/filtershow/state/StateView;->drawHorizontalPath(FFFF)V

    goto :goto_0

    .line 147
    :cond_0
    iget v5, p0, Lcom/zui/gallery/filtershow/state/StateView;->mDirection:I

    sget v6, Lcom/zui/gallery/filtershow/state/StateView;->DOWN:I

    if-ne v5, v6, :cond_1

    .line 148
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/filtershow/state/StateView;->drawVerticalDownPath(FFFF)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/filtershow/state/StateView;->drawVerticalPath(FFFF)V

    .line 154
    :goto_0
    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v2, Lcom/zui/gallery/filtershow/state/StateView;->DEFAULT:I

    if-eq v1, v2, :cond_3

    sget v2, Lcom/zui/gallery/filtershow/state/StateView;->END:I

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mEndsBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mDuplicateButton:Z

    if-eqz v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_2

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mSelectedBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/state/StateView;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 308
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 309
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mStartTouchY:F

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mStartTouchX:F

    .line 317
    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v3, Lcom/zui/gallery/filtershow/state/StateView;->BEGIN:I

    if-ne v1, v3, :cond_0

    .line 318
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setShowsOriginal(Z)V

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    :cond_1
    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/state/StateView;->setTranslationX(F)V

    .line 324
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/state/StateView;->setTranslationY(F)V

    .line 325
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setShowsOriginal(Z)V

    .line 326
    iget v3, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v5, Lcom/zui/gallery/filtershow/state/StateView;->BEGIN:I

    if-eq v3, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 327
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/state/StateView;->setSelected(Z)V

    .line 328
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->getState()Lcom/zui/gallery/filtershow/state/State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/state/State;->getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v3

    .line 329
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 330
    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 331
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->getTranslationY()F

    move-result v7

    cmpl-float v1, v7, v1

    if-nez v1, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 333
    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    if-eq v3, v1, :cond_3

    .line 334
    invoke-virtual {v6, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 335
    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 336
    invoke-virtual {p0, v4}, Lcom/zui/gallery/filtershow/state/StateView;->setSelected(Z)V

    .line 340
    :cond_3
    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v3, Lcom/zui/gallery/filtershow/state/StateView;->BEGIN:I

    if-eq v1, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mStartTouchY:F

    sub-float/2addr p1, v1

    .line 342
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mDeleteSlope:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    .line 343
    iget p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mStartTouchX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mStartTouchY:F

    invoke-virtual {v0, p0, p1, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setHandlesSwipeForView(Landroid/view/View;FF)V

    :cond_4
    return v2
.end method

.method public resetPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setTranslationX(F)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 292
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/state/StateView;->setBackgroundAlpha(F)V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 2

    .line 257
    iget v0, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    sget v1, Lcom/zui/gallery/filtershow/state/StateView;->BEGIN:I

    if-ne v0, v1, :cond_0

    return-void

    .line 260
    :cond_0
    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mAlpha:F

    .line 261
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/state/StateView;->setAlpha(F)V

    .line 262
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->invalidate()V

    return-void
.end method

.method public setDuplicateButton(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mDuplicateButton:Z

    .line 275
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 270
    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mOrientation:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mDuplicateButton:Z

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->invalidate()V

    return-void
.end method

.method public setState(Lcom/zui/gallery/filtershow/state/State;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mState:Lcom/zui/gallery/filtershow/state/State;

    .line 284
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/state/State;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mText:Ljava/lang/String;

    .line 285
    iget-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mState:Lcom/zui/gallery/filtershow/state/State;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/state/State;->getType()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    .line 286
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mText:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateView;->mType:I

    .line 100
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateView;->invalidate()V

    return-void
.end method
