.class public Lzui/widget/SeekBar;
.super Landroid/widget/SeekBar;
.source "SeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mVibHelper:Lzui/util/VibrationHelper;

.field private mVibProgressPoint:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lzui/widget/SeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lzui/widget/SeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lzui/widget/SeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    invoke-direct {p0, p1}, Lzui/widget/SeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 108
    invoke-static {}, Lzui/util/CommonUtils;->isLegionStyleProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget v0, Lzui/platform/R$drawable;->scrubber_control_zui_anim_legion:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzui/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_0
    new-instance v0, Lzui/util/VibrationHelper;

    invoke-direct {v0, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/SeekBar;->mVibHelper:Lzui/util/VibrationHelper;

    .line 112
    invoke-super {p0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private vibrate()V
    .locals 10

    .line 122
    iget-object v0, p0, Lzui/widget/SeekBar;->mVibHelper:Lzui/util/VibrationHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const/16 v4, 0xb

    const/16 v5, 0xb

    const/16 v6, 0x46

    const/16 v7, 0x46

    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 123
    invoke-virtual/range {v0 .. v9}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    :cond_0
    return-void
.end method

.method private vibrateCommon()V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lzui/widget/SeekBar;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lzui/widget/SeekBar;->vibrate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lzui/widget/SeekBar;->getMin()I

    move-result v0

    if-eq p2, v0, :cond_2

    invoke-virtual {p0}, Lzui/widget/SeekBar;->getMax()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    iget-object v0, p0, Lzui/widget/SeekBar;->mVibProgressPoint:[I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 67
    :goto_0
    iget-object v1, p0, Lzui/widget/SeekBar;->mVibProgressPoint:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 68
    aget v1, v1, v0

    if-ne v1, p2, :cond_1

    .line 69
    invoke-direct {p0}, Lzui/widget/SeekBar;->vibrateCommon()V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    invoke-direct {p0}, Lzui/widget/SeekBar;->vibrateCommon()V

    .line 74
    :cond_3
    :goto_2
    iget-object v0, p0, Lzui/widget/SeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_4

    .line 75
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lzui/widget/SeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lzui/widget/SeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lzui/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lzui/widget/SeekBar;->vibrate()V

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCustomizedVibPoint([I)V
    .locals 0

    .line 58
    iput-object p1, p0, Lzui/widget/SeekBar;->mVibProgressPoint:[I

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lzui/widget/SeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method
