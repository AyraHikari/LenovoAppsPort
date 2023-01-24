.class public Lcom/zui/gallery/ui/CustomScrollBarView;
.super Landroid/view/View;
.source "CustomScrollBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;
    }
.end annotation


# static fields
.field private static final HIDE_SCROLLBAR_DELAY_TIME:I = 0x4b0

.field private static final SCROLLBAR_DATA_INFO_DURATION:I = 0x64

.field private static TAG:Ljava/lang/String; = "CustomScrollBarView"


# instance fields
.field private START_Y_OFFSET:I

.field private animDuration:I

.field private boundColor:I

.field private calendar:Ljava/util/Calendar;

.field private dataInfo_rect:Landroid/graphics/RectF;

.field private dataStr:Ljava/lang/String;

.field private dayInfoLeftOffset:I

.field private dayInfoTopOffset:I

.field private dayShortNames:[Ljava/lang/String;

.field private dayStr:Ljava/lang/String;

.field private fadeInValueAnimator:Landroid/animation/ValueAnimator;

.field private fadeOutValueAnimator:Landroid/animation/ValueAnimator;

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mainHandler:Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;

.field private maxScrollLength:I

.field private maxYPostion:I

.field private monthInfoLeftOffset:I

.field private monthInfoTopOffset:I

.field private monthStr:Ljava/lang/String;

.field private monthTextPaint:Landroid/graphics/Paint;

.field private monthTextPaintEng:Landroid/graphics/Paint;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollBarCurrentYPosition:I

.field private scrollBarTimeEndPosition:I

.field private scrollBarTimeWidth:I

.field private volatile scrollBarVisible:Z

.field private scrollBarWidth:I

.field private scrollBar_rect:Landroid/graphics/RectF;

.field private scrollBarstartXPosition:I

.field private scroll_bar_time:Landroid/graphics/Bitmap;

.field private scroll_icon_main:Landroid/graphics/Bitmap;

.field private textBound:Landroid/graphics/Rect;

.field private textColor:I

.field private textSize:I

.field private textSizeEng:I

.field private timeInfoLeftInValueAnimator:Landroid/animation/ValueAnimator;

.field private timeInfoRightOutValueAnimator:Landroid/animation/ValueAnimator;

.field private touchStartY:F

.field private volatile touchValid:Z

.field private yearInfoTopOffset:I

.field private yearStr:Ljava/lang/String;

.field private yearTextPaint:Landroid/graphics/Paint;

.field private yearTextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x41

    .line 69
    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSize:I

    const/16 v0, 0x2d

    .line 70
    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSizeEng:I

    const/16 v0, 0x1e

    .line 71
    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextSize:I

    const/high16 v0, -0x1000000

    .line 72
    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textColor:I

    const v0, -0xff01

    .line 73
    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->boundColor:I

    const/16 v0, 0x64

    .line 74
    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->animDuration:I

    .line 130
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/CustomScrollBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x41

    .line 69
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSize:I

    const/16 p2, 0x2d

    .line 70
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSizeEng:I

    const/16 p2, 0x1e

    .line 71
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextSize:I

    const/high16 p2, -0x1000000

    .line 72
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textColor:I

    const p2, -0xff01

    .line 73
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->boundColor:I

    const/16 p2, 0x64

    .line 74
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->animDuration:I

    .line 125
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/CustomScrollBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x41

    .line 69
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSize:I

    const/16 p2, 0x2d

    .line 70
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSizeEng:I

    const/16 p2, 0x1e

    .line 71
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextSize:I

    const/high16 p2, -0x1000000

    .line 72
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textColor:I

    const p2, -0xff01

    .line 73
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->boundColor:I

    const/16 p2, 0x64

    .line 74
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->animDuration:I

    .line 120
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/CustomScrollBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0x41

    .line 69
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSize:I

    const/16 p2, 0x2d

    .line 70
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSizeEng:I

    const/16 p2, 0x1e

    .line 71
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextSize:I

    const/high16 p2, -0x1000000

    .line 72
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textColor:I

    const p2, -0xff01

    .line 73
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->boundColor:I

    const/16 p2, 0x64

    .line 74
    iput p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->animDuration:I

    .line 115
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/CustomScrollBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/CustomScrollBarView;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchValid:Z

    return p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/CustomScrollBarView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->hidenScollBarAnim()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/CustomScrollBarView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->showScrollBarAnim()V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/CustomScrollBarView;)Landroid/graphics/RectF;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/zui/gallery/ui/CustomScrollBarView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/CustomScrollBarView;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/CustomScrollBarView;->setScrollBarVisible(Z)V

    return-void
.end method

.method private getCurrentPosition()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    return v0
.end method

.method private getMaxPosition()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->maxScrollLength:I

    return v0
.end method

.method private hidenScollBarAnim()V
    .locals 4

    .line 415
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeOutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 416
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeOutValueAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 418
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeOutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 135
    new-instance v0, Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;-><init>(Lcom/zui/gallery/ui/CustomScrollBarView;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->mainHandler:Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;

    .line 136
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070328

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070329

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_bar_time:Landroid/graphics/Bitmap;

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarTimeWidth:I

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarWidth:I

    .line 140
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->START_Y_OFFSET:I

    .line 142
    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06015a

    .line 144
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayInfoLeftOffset:I

    const v1, 0x7f06015b

    .line 145
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayInfoTopOffset:I

    const v1, 0x7f06015c

    .line 146
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthInfoLeftOffset:I

    const v1, 0x7f06015e

    .line 147
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthInfoTopOffset:I

    const v1, 0x7f060161

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearInfoTopOffset:I

    const v1, 0x7f06015d

    .line 149
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSize:I

    const v1, 0x7f060160

    .line 150
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextSize:I

    const v1, 0x7f06015f

    .line 151
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSizeEng:I

    .line 152
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBar_rect:Landroid/graphics/RectF;

    .line 153
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    .line 154
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->rectPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->rectPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->boundColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->rectPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthTextPaint:Landroid/graphics/Paint;

    .line 161
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthTextPaintEng:Landroid/graphics/Paint;

    .line 166
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthTextPaintEng:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textSizeEng:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthTextPaintEng:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textBound:Landroid/graphics/Rect;

    .line 170
    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthTextPaintEng:Landroid/graphics/Paint;

    const-string/jumbo v4, "test"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 172
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextPaint:Landroid/graphics/Paint;

    .line 173
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayShortNames:[Ljava/lang/String;

    const v4, 0x7f1001ad

    .line 182
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 183
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayShortNames:[Ljava/lang/String;

    const v4, 0x7f1002e1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 184
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayShortNames:[Ljava/lang/String;

    const v4, 0x7f1000b7

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 187
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->calendar:Ljava/util/Calendar;

    .line 188
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->timeInfoLeftInValueAnimator:Landroid/animation/ValueAnimator;

    .line 189
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 190
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->timeInfoLeftInValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 191
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->timeInfoLeftInValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/gallery/ui/CustomScrollBarView$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/CustomScrollBarView$1;-><init>(Lcom/zui/gallery/ui/CustomScrollBarView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 203
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->timeInfoRightOutValueAnimator:Landroid/animation/ValueAnimator;

    .line 204
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->timeInfoRightOutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 206
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->timeInfoRightOutValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/gallery/ui/CustomScrollBarView$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/CustomScrollBarView$2;-><init>(Lcom/zui/gallery/ui/CustomScrollBarView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v3, [F

    .line 217
    fill-array-data p1, :array_0

    const-string v1, "alpha"

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v4, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v4, v0

    .line 218
    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeInValueAnimator:Landroid/animation/ValueAnimator;

    .line 219
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 220
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeInValueAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->animDuration:I

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p1, v3, [F

    .line 222
    fill-array-data p1, :array_1

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v1, v0

    .line 223
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeOutValueAnimator:Landroid/animation/ValueAnimator;

    .line 224
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeOutValueAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->animDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 226
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeOutValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/gallery/ui/CustomScrollBarView$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/CustomScrollBarView$3;-><init>(Lcom/zui/gallery/ui/CustomScrollBarView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/CustomScrollBarView;->setAlpha(F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isScrollBarVisible()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarVisible:Z

    return v0
.end method

.method private setScrollBarVisible(Z)V
    .locals 0

    .line 328
    iput-boolean p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarVisible:Z

    return-void
.end method

.method private showScrollBarAnim()V
    .locals 4

    .line 405
    iget-boolean v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarVisible:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeInValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 407
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeInValueAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 409
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeInValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private startDataInfoHiddenAnim()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->timeInfoRightOutValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 399
    iget v1, v1, Landroid/graphics/RectF;->left:F

    aput v1, v2, v3

    const/4 v1, 0x1

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarTimeEndPosition:I

    int-to-float v3, v3

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 400
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->timeInfoRightOutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private startDataInfoShowAnim()V
    .locals 5

    .line 391
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->timeInfoLeftInValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 392
    iget v1, v1, Landroid/graphics/RectF;->left:F

    aput v1, v2, v3

    const/4 v1, 0x1

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarTimeEndPosition:I

    iget v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarTimeWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 393
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->timeInfoLeftInValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private updateScrollBarPosition(I)V
    .locals 5

    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarVisible:Z

    .line 301
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->mainHandler:Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;->sendEmptyMessage(I)Z

    .line 304
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->START_Y_OFFSET:I

    add-int/2addr p1, v0

    if-gt p1, v0, :cond_1

    .line 306
    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    goto :goto_0

    .line 307
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->maxYPostion:I

    if-lt p1, v0, :cond_2

    .line 308
    iput v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    goto :goto_0

    .line 310
    :cond_2
    iput p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    .line 313
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBar_rect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarstartXPosition:I

    int-to-float v1, v0

    iget v2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    iget-object v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 315
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 316
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 317
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->postInvalidate()V

    .line 318
    iget-boolean p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchValid:Z

    if-eqz p1, :cond_3

    .line 319
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    iget v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->maxScrollLength:I

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onCustomScrollBarScroll(II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public caculatePosition(IIJ)V
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchValid:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    if-gt p1, p2, :cond_0

    .line 277
    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->maxScrollLength:I

    mul-int/2addr p1, v0

    div-int/2addr p1, p2

    .line 278
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/CustomScrollBarView;->updateScrollBarPosition(I)V

    :cond_0
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_2

    .line 283
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 284
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->calendar:Ljava/util/Calendar;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearStr:Ljava/lang/String;

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Ljava/util/Calendar;->get(I)I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthStr:Ljava/lang/String;

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->calendar:Ljava/util/Calendar;

    const/4 p4, 0x5

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayStr:Ljava/lang/String;

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthStr:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataStr:Ljava/lang/String;

    .line 289
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthStr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string p2, "0"

    if-ge p1, v0, :cond_1

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthStr:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthStr:Ljava/lang/String;

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataStr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v0, :cond_2

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataStr:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public cancleAnim()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeInValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeOutValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->fadeInValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarVisible:Z

    .line 249
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 365
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 366
    iget-boolean v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarVisible:Z

    if-eqz v0, :cond_3

    .line 367
    iget-boolean v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchValid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarstartXPosition:I

    int-to-float v2, v2

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataStr:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 372
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 373
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_bar_time:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 375
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayShortNames:[Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayShortNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthInfoLeftOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthInfoTopOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayShortNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayInfoLeftOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearInfoTopOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayShortNames:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayInfoLeftOffset:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dayInfoTopOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->yearTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthInfoLeftOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->textBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v1

    int-to-float v1, v5

    add-float/2addr v4, v1

    iget-object v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->monthTextPaintEng:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 383
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 385
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->mainHandler:Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;->removeMessages(I)V

    .line 386
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->mainHandler:Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, v2, v0, v1}, Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 254
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 255
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int p1, p4, p1

    iput p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarstartXPosition:I

    add-int/lit8 p4, p4, -0xa

    .line 256
    iput p4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarTimeEndPosition:I

    sub-int/2addr p5, p3

    .line 258
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr p5, p1

    iput p5, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->maxYPostion:I

    .line 259
    iget p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->START_Y_OFFSET:I

    sub-int/2addr p5, p1

    iput p5, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->maxScrollLength:I

    .line 260
    iget-object p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBar_rect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarstartXPosition:I

    int-to-float p4, p3

    int-to-float p1, p1

    iget-object p5, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    add-int/2addr p3, p5

    int-to-float p3, p3

    iget p5, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->START_Y_OFFSET:I

    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr p5, v0

    int-to-float p5, p5

    invoke-virtual {p2, p4, p1, p3, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 261
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->dataInfo_rect:Landroid/graphics/RectF;

    iget p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarTimeEndPosition:I

    int-to-float p3, p2

    iget p4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->START_Y_OFFSET:I

    int-to-float p5, p4

    int-to-float p2, p2

    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_bar_time:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr p4, v0

    int-to-float p4, p4

    invoke-virtual {p1, p3, p5, p2, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 262
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget p2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->maxScrollLength:I

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onCustomScrollBarMaxLenghtAvailable(I)V

    .line 263
    sget-object p1, Lcom/zui/gallery/ui/CustomScrollBarView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "icon width "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " scroll_icon_main height "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scroll_icon_main:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " startPosition "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->START_Y_OFFSET:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " maxPosition "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->maxYPostion:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " scroll_content "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->maxScrollLength:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 334
    iget-boolean v2, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarVisible:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 336
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBar_rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 337
    iput-boolean v4, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchValid:Z

    .line 338
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->stopScroll()V

    .line 339
    iput v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchStartY:F

    .line 340
    invoke-direct {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->startDataInfoShowAnim()V

    .line 341
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->invalidate()V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 344
    iget p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchStartY:F

    sub-float p1, v1, p1

    .line 345
    iget v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->scrollBarCurrentYPosition:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/CustomScrollBarView;->updateScrollBarPosition(I)V

    .line 346
    iput v1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchStartY:F

    goto :goto_0

    .line 348
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->startDataInfoHiddenAnim()V

    .line 349
    iput-boolean v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchValid:Z

    const/4 p1, 0x0

    .line 350
    iput p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchStartY:F

    .line 351
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->mainHandler:Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;

    invoke-virtual {p1, v4}, Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;->removeMessages(I)V

    .line 352
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->mainHandler:Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, v4, v0, v1}, Lcom/zui/gallery/ui/CustomScrollBarView$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 353
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->invalidate()V

    .line 355
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchValid:Z

    return p1

    .line 357
    :cond_3
    iput-boolean v3, p0, Lcom/zui/gallery/ui/CustomScrollBarView;->touchValid:Z

    return v3
.end method

.method public setMarginTopAndBottom(II)V
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/zui/gallery/ui/CustomScrollBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 238
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void
.end method
