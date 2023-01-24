.class public Lzui/appcompat/widget/ZuiAppCompatSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "ZuiAppCompatSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mVibHelper:Lzui/util/VibrationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    sget v0, Lzui/platform/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 45
    sget p3, Lzui/platform/R$drawable;->item_background_borderless_zui:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    sget p3, Lzui/platform/R$drawable;->scrubber_control_zui_anim:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 47
    sget p3, Lzui/platform/R$drawable;->seekbar_track_zui:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 48
    invoke-virtual {p0, p2}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->setSplitTrack(Z)V

    .line 49
    new-instance p2, Lzui/util/VibrationHelper;

    invoke-direct {p2, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->mVibHelper:Lzui/util/VibrationHelper;

    .line 50
    invoke-super {p0, p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private vibrateCommon()V
    .locals 10

    .line 85
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->mVibHelper:Lzui/util/VibrationHelper;

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

    .line 86
    invoke-virtual/range {v0 .. v9}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->getMin()I

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->getMax()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 61
    :cond_0
    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->vibrateCommon()V

    .line 63
    :cond_1
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_2

    .line 64
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->vibrateCommon()V

    .line 71
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppCompatSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method
