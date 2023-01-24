.class public Lzui/widget/KeyboardViewX;
.super Landroid/widget/LinearLayout;
.source "KeyboardViewX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;,
        Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;,
        Lzui/widget/KeyboardViewX$OnKeyCharPressListener;,
        Lzui/widget/KeyboardViewX$OnKeyDonePressListener;,
        Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = 0x1e

.field public static final KEYBOARD_VIEW_TYPE_NORMAL:I = 0x0

.field public static final KEYBOARD_VIEW_TYPE_NUMBER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyboardViewX"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBindEditText:Landroid/widget/EditText;

.field private final mBindEditTextWatcher:Landroid/text/TextWatcher;

.field private mContext:Landroid/content/Context;

.field private mEditTextMaxLength:I

.field private mEditTextMinLength:I

.field private mHapticFeedbackEnabled:Z

.field private mImageViewPucker:Landroid/widget/ImageView;

.field private mImageViewPuckerShow:Z

.field private mKeyPressPlaySound:Z

.field private mKeyPressVibration:Z

.field private mKeyboardAnimationIn:Landroid/view/animation/Animation;

.field private mKeyboardAnimationOut:Landroid/view/animation/Animation;

.field private mKeyboardTitleView:Landroid/widget/TextView;

.field private mKeyboardView:Lzui/widget/IKeyboardViewX;

.field private mKeyboardViewBottomLayout:Landroid/widget/RelativeLayout;

.field private mKeyboardViewContentLayout:Landroid/widget/RelativeLayout;

.field private mKeyboardViewRootLayout:Landroid/widget/LinearLayout;

.field private mKeyboardViewTopLayout:Landroid/widget/RelativeLayout;

.field private mKeyboardViewType:I

.field private mOnKeyCharPressListener:Lzui/widget/KeyboardViewX$OnKeyCharPressListener;

.field private mOnKeyDeletePressListener:Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;

.field private mOnKeyDonePressListener:Lzui/widget/KeyboardViewX$OnKeyDonePressListener;

.field private mOnKeyPressHapticFeedbackListener:Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;

.field private mOnKeyPressPlaySoundEffectListener:Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;

.field private mSoundEffectsEnabled:Z

.field private mVibrationHelper:Lzui/util/VibrationHelper;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lzui/widget/KeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lzui/widget/KeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewType:I

    .line 45
    iput v0, p0, Lzui/widget/KeyboardViewX;->mEditTextMinLength:I

    const v1, 0x7fffffff

    .line 46
    iput v1, p0, Lzui/widget/KeyboardViewX;->mEditTextMaxLength:I

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lzui/widget/KeyboardViewX;->mImageViewPuckerShow:Z

    .line 62
    iput-boolean v1, p0, Lzui/widget/KeyboardViewX;->mKeyPressVibration:Z

    .line 63
    iput-boolean v0, p0, Lzui/widget/KeyboardViewX;->mKeyPressPlaySound:Z

    .line 77
    new-instance v0, Lzui/widget/KeyboardViewX$1;

    invoke-direct {v0, p0}, Lzui/widget/KeyboardViewX$1;-><init>(Lzui/widget/KeyboardViewX;)V

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditTextWatcher:Landroid/text/TextWatcher;

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lzui/widget/KeyboardViewX;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lzui/widget/KeyboardViewX;Ljava/lang/CharSequence;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->onEditTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lzui/widget/KeyboardViewX;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->onImageViewPuckerClick()V

    return-void
.end method

.method static synthetic access$200(Lzui/widget/KeyboardViewX;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->onKeyboardDeletePress()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lzui/widget/KeyboardViewX;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->onKeyboardDonePress()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lzui/widget/KeyboardViewX;Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->onKeyboardCharPress(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lzui/widget/KeyboardViewX;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->onKeyboardPressHapticFeedback()V

    return-void
.end method

.method static synthetic access$600(Lzui/widget/KeyboardViewX;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->onKeyboardPressPlaySoundEffect()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 106
    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mWindowManager:Landroid/view/WindowManager;

    .line 110
    new-instance p1, Lzui/util/VibrationHelper;

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mVibrationHelper:Lzui/util/VibrationHelper;

    .line 113
    invoke-virtual {p0}, Lzui/widget/KeyboardViewX;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lzui/platform/R$styleable;->KeyboardViewX:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 116
    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_type:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewType:I

    .line 118
    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_editTextMinLength:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lzui/widget/KeyboardViewX;->mEditTextMinLength:I

    .line 120
    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_editTextMaxLength:I

    const p3, 0x7fffffff

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lzui/widget/KeyboardViewX;->mEditTextMaxLength:I

    .line 122
    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_showPucker:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/KeyboardViewX;->mImageViewPuckerShow:Z

    .line 124
    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_keyPressVibration:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/KeyboardViewX;->mKeyPressVibration:Z

    .line 126
    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_keyPressPlaySound:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/KeyboardViewX;->mKeyPressPlaySound:Z

    .line 129
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->initKeyboardView()V

    .line 133
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->initSettingsConfigs()V

    .line 135
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->updateKeyboardView()V

    return-void
.end method

.method private initKeyboardAnimation()V
    .locals 2

    .line 226
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$anim;->keyboardx_view_anim_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardAnimationIn:Landroid/view/animation/Animation;

    .line 227
    new-instance v1, Lzui/widget/KeyboardViewX$8;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$8;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 241
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$anim;->keyboardx_view_anim_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardAnimationOut:Landroid/view/animation/Animation;

    .line 242
    new-instance v1, Lzui/widget/KeyboardViewX$9;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$9;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private initKeyboardView()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->initKeyboardViewLayout()V

    .line 260
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->initKeyboardAnimation()V

    return-void
.end method

.method private initKeyboardViewLayout()V
    .locals 2

    .line 139
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lzui/platform/R$layout;->keyboardx_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 140
    sget v0, Lzui/platform/R$id;->keyboardx_layout:I

    invoke-virtual {p0, v0}, Lzui/widget/KeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewRootLayout:Landroid/widget/LinearLayout;

    .line 141
    sget v0, Lzui/platform/R$id;->keyboardx_top_layout:I

    invoke-virtual {p0, v0}, Lzui/widget/KeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewTopLayout:Landroid/widget/RelativeLayout;

    .line 142
    sget v0, Lzui/platform/R$id;->keyboardx_content_layout:I

    invoke-virtual {p0, v0}, Lzui/widget/KeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewContentLayout:Landroid/widget/RelativeLayout;

    .line 143
    sget v0, Lzui/platform/R$id;->keyboardx_bottom_layout:I

    invoke-virtual {p0, v0}, Lzui/widget/KeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewBottomLayout:Landroid/widget/RelativeLayout;

    .line 144
    sget v0, Lzui/platform/R$id;->keyboardx_view_pucker:I

    invoke-virtual {p0, v0}, Lzui/widget/KeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->mImageViewPucker:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 147
    new-instance v1, Lzui/widget/KeyboardViewX$2;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$2;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :cond_0
    iget v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 156
    sget v0, Lzui/platform/R$id;->number_keyboard_view:I

    invoke-virtual {p0, v0}, Lzui/widget/KeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzui/widget/IKeyboardViewX;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    goto :goto_0

    .line 158
    :cond_1
    sget v0, Lzui/platform/R$id;->standard_keyboard_view:I

    invoke-virtual {p0, v0}, Lzui/widget/KeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzui/widget/IKeyboardViewX;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    .line 161
    :goto_0
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->initKeyboardViewListener()V

    return-void
.end method

.method private initKeyboardViewListener()V
    .locals 2

    .line 181
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    new-instance v1, Lzui/widget/KeyboardViewX$3;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$3;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setOnKeyDeletePressListener(Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;)V

    .line 193
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    new-instance v1, Lzui/widget/KeyboardViewX$4;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$4;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setOnKeyDonePressListener(Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;)V

    .line 201
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    new-instance v1, Lzui/widget/KeyboardViewX$5;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$5;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setOnKeyCharPressListener(Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;)V

    .line 209
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    new-instance v1, Lzui/widget/KeyboardViewX$6;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$6;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setOnKeyPressHapticFeedbackListener(Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;)V

    .line 217
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    new-instance v1, Lzui/widget/KeyboardViewX$7;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$7;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setOnKeyPressPlaySoundEffectListener(Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;)V

    return-void
.end method

.method private initSettingsConfigs()V
    .locals 4

    .line 264
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lzui/widget/KeyboardViewX;->mSoundEffectsEnabled:Z

    .line 266
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lzui/widget/KeyboardViewX;->mHapticFeedbackEnabled:Z

    return-void
.end method

.method private onEditTextChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .line 529
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lzui/widget/KeyboardViewX;->mEditTextMaxLength:I

    if-le v0, v1, :cond_0

    .line 530
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    iget v1, p0, Lzui/widget/KeyboardViewX;->mEditTextMaxLength:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 533
    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    if-eqz v0, :cond_1

    .line 534
    invoke-interface {v0, p1}, Lzui/widget/IKeyboardViewX;->onEditTextChanged(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private onImageViewPuckerClick()V
    .locals 0

    .line 497
    invoke-virtual {p0}, Lzui/widget/KeyboardViewX;->hideKeyboard()V

    return-void
.end method

.method private onKeyboardCharPress(Ljava/lang/String;)Z
    .locals 2

    .line 406
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mOnKeyCharPressListener:Lzui/widget/KeyboardViewX$OnKeyCharPressListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v0, p1}, Lzui/widget/KeyboardViewX$OnKeyCharPressListener;->onKeyCharPress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 411
    :cond_0
    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->onKeycodeCharPress(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onKeyboardDeletePress()Z
    .locals 2

    .line 381
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mOnKeyDeletePressListener:Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0}, Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;->onKeyDeletePress()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 387
    :cond_0
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->onKeycodeDeletePress()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onKeyboardDonePress()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mOnKeyDonePressListener:Lzui/widget/KeyboardViewX$OnKeyDonePressListener;

    if-eqz v0, :cond_0

    .line 400
    invoke-interface {v0}, Lzui/widget/KeyboardViewX$OnKeyDonePressListener;->onKeyDonePress()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onKeyboardPressHapticFeedback()V
    .locals 1

    .line 463
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mOnKeyPressHapticFeedbackListener:Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;

    if-eqz v0, :cond_0

    .line 464
    invoke-interface {v0}, Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;->OnKeyPressHapticFeedback()V

    goto :goto_0

    .line 466
    :cond_0
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->performKeyPressHapticFeedback()Z

    :goto_0
    return-void
.end method

.method private onKeyboardPressPlaySoundEffect()V
    .locals 1

    .line 471
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mOnKeyPressPlaySoundEffectListener:Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;

    if-eqz v0, :cond_0

    .line 472
    invoke-interface {v0}, Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;->OnKeyPressPlaySoundEffect()V

    goto :goto_0

    .line 474
    :cond_0
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->performKeyPressPlaySoundEffect()Z

    :goto_0
    return-void
.end method

.method private onKeycodeCharPress(Ljava/lang/String;)Z
    .locals 1

    .line 419
    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->replaceSelectionWithChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->updateEditTextContent(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private onKeycodeDeletePress()Z
    .locals 1

    const-string v0, ""

    .line 395
    invoke-direct {p0, v0}, Lzui/widget/KeyboardViewX;->replaceSelectionWithChar(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private performKeyPressHapticFeedback()Z
    .locals 4

    .line 501
    iget-boolean v0, p0, Lzui/widget/KeyboardViewX;->mKeyPressVibration:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lzui/widget/KeyboardViewX;->mHapticFeedbackEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v3, 0x80

    if-eq v0, v3, :cond_1

    const/16 v3, 0x90

    if-ne v0, v3, :cond_2

    .line 509
    :cond_1
    invoke-direct {p0, v1}, Lzui/widget/KeyboardViewX;->tryToStartVibrationWithBothByDefault(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x3

    .line 515
    invoke-virtual {p0, v2, v0}, Lzui/widget/KeyboardViewX;->performHapticFeedback(II)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private performKeyPressPlaySoundEffect()Z
    .locals 2

    .line 521
    iget-boolean v0, p0, Lzui/widget/KeyboardViewX;->mKeyPressPlaySound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzui/widget/KeyboardViewX;->mSoundEffectsEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private replaceSelectionWithChar(Ljava/lang/String;)Z
    .locals 4

    .line 427
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 431
    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 435
    :cond_1
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 436
    iget-object v2, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 437
    iget-object v3, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 438
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    .line 439
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 438
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method private tryToStartVibrationWithBothByDefault(Z)Z
    .locals 8

    .line 671
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mVibrationHelper:Lzui/util/VibrationHelper;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x29

    const/16 v3, 0x29

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/4 v6, -0x1

    move v7, p1

    .line 674
    invoke-virtual/range {v0 .. v7}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIZ)Z

    move-result p1

    return p1
.end method

.method private updateEditTextContent(Ljava/lang/String;)Z
    .locals 3

    .line 450
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 454
    iget-object v2, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 458
    :cond_1
    invoke-interface {v2, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private updateKeyboardView()V
    .locals 0

    .line 271
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->updateKeyboardViewLayout()V

    .line 272
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method private updateKeyboardViewBottomLayout(ZIZ)V
    .locals 2

    .line 337
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewBottomLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 340
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    return-void

    .line 346
    :cond_1
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewBottomLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p3, :cond_2

    return-void

    .line 352
    :cond_2
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_4

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    goto :goto_0

    .line 359
    :cond_4
    iget-object p2, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->keyboardx_bottom_layout_height_no_navigation_bar:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 361
    iget-object p2, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private updateKeyboardViewContent(I)V
    .locals 1

    .line 165
    iget v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewType:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewType:I

    .line 167
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1}, Lzui/widget/IKeyboardViewX;->hideKeyboard()V

    .line 172
    :cond_0
    iget p1, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 173
    sget p1, Lzui/platform/R$id;->number_keyboard_view:I

    invoke-virtual {p0, p1}, Lzui/widget/KeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzui/widget/IKeyboardViewX;

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    goto :goto_0

    .line 175
    :cond_1
    sget p1, Lzui/platform/R$id;->standard_keyboard_view:I

    invoke-virtual {p0, p1}, Lzui/widget/KeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzui/widget/IKeyboardViewX;

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    .line 177
    :goto_0
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->initKeyboardViewListener()V

    return-void
.end method

.method private updateKeyboardViewLayout()V
    .locals 3

    .line 276
    invoke-static {}, Lzui/util/CommonUtils;->isHasNavigationBar()Z

    move-result v0

    .line 277
    iget-object v1, p0, Lzui/widget/KeyboardViewX;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 278
    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v2

    .line 279
    invoke-direct {p0, v1, v0, v2}, Lzui/widget/KeyboardViewX;->updateKeyboardViewRootLayout(IZZ)V

    .line 280
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->updateKeyboardViewTopLayout()V

    .line 281
    invoke-direct {p0, v0, v1, v2}, Lzui/widget/KeyboardViewX;->updateKeyboardViewBottomLayout(ZIZ)V

    return-void
.end method

.method private updateKeyboardViewRootLayout(IZZ)V
    .locals 1

    .line 286
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewRootLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    return-void

    .line 295
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p3, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 301
    :cond_3
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->keyboardx_root_layout_margin_end:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 303
    iget p1, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewType:I

    if-nez p1, :cond_4

    .line 304
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->keyboardx_root_layout_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_4
    if-nez p2, :cond_5

    .line 309
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lzui/platform/R$dimen;->keyboardx_root_layout_margin_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 312
    :cond_5
    iget p1, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewType:I

    if-nez p1, :cond_6

    .line 313
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lzui/platform/R$dimen;->keyboardx_root_layout_margin_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 318
    :cond_6
    :goto_0
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateKeyboardViewStatus()V
    .locals 2

    .line 367
    iget v0, p0, Lzui/widget/KeyboardViewX;->mEditTextMaxLength:I

    iget v1, p0, Lzui/widget/KeyboardViewX;->mEditTextMinLength:I

    if-ge v0, v1, :cond_0

    .line 368
    iput v1, p0, Lzui/widget/KeyboardViewX;->mEditTextMaxLength:I

    .line 370
    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    if-eqz v0, :cond_1

    .line 371
    iget v1, p0, Lzui/widget/KeyboardViewX;->mEditTextMinLength:I

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setEditTextMinLength(I)V

    .line 372
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    iget v1, p0, Lzui/widget/KeyboardViewX;->mEditTextMaxLength:I

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setEditTextMaxLength(I)V

    .line 373
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    invoke-interface {v0}, Lzui/widget/IKeyboardViewX;->showKeyboard()V

    .line 375
    :cond_1
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mImageViewPucker:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 376
    iget-boolean v1, p0, Lzui/widget/KeyboardViewX;->mImageViewPuckerShow:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updateKeyboardViewTopLayout()V
    .locals 2

    .line 322
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewTopLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    iget-boolean v0, p0, Lzui/widget/KeyboardViewX;->mImageViewPuckerShow:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mImageViewPucker:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mImageViewPucker:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewTopLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    .line 559
    invoke-virtual {p0}, Lzui/widget/KeyboardViewX;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardAnimationOut:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0, v0}, Lzui/widget/KeyboardViewX;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 588
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 589
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 590
    iget-object v1, p0, Lzui/widget/KeyboardViewX;->mBindEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public removeKeyboard()V
    .locals 1

    .line 644
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    if-eqz v0, :cond_0

    .line 645
    invoke-interface {v0}, Lzui/widget/IKeyboardViewX;->hideKeyboard()V

    :cond_0
    return-void
.end method

.method public setBindEditText(Landroid/widget/EditText;)V
    .locals 2

    .line 571
    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 574
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 576
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lzui/widget/KeyboardViewX;->mBindEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 577
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lzui/widget/KeyboardViewX;->mBindEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 580
    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    if-eqz v0, :cond_1

    .line 581
    invoke-interface {v0, p1}, Lzui/widget/IKeyboardViewX;->setBindEditText(Landroid/widget/EditText;)V

    .line 583
    :cond_1
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->updateKeyboardView()V

    return-void
.end method

.method public setEditTextMaxLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 606
    :cond_0
    iput p1, p0, Lzui/widget/KeyboardViewX;->mEditTextMaxLength:I

    .line 607
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setEditTextMinLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 598
    :cond_0
    iput p1, p0, Lzui/widget/KeyboardViewX;->mEditTextMinLength:I

    .line 599
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setImageViewPuckerShow(Z)V
    .locals 0

    .line 611
    iput-boolean p1, p0, Lzui/widget/KeyboardViewX;->mImageViewPuckerShow:Z

    .line 612
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->updateKeyboardView()V

    return-void
.end method

.method public setKeyPressPlaySoundEnabled(Z)V
    .locals 0

    .line 620
    iput-boolean p1, p0, Lzui/widget/KeyboardViewX;->mKeyPressPlaySound:Z

    return-void
.end method

.method public setKeyPressVibrationEnabled(Z)V
    .locals 0

    .line 616
    iput-boolean p1, p0, Lzui/widget/KeyboardViewX;->mKeyPressVibration:Z

    return-void
.end method

.method public setKeyboardType(I)V
    .locals 0

    .line 539
    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->updateKeyboardViewContent(I)V

    .line 540
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->updateKeyboardView()V

    return-void
.end method

.method public setKeyboardVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 567
    :goto_0
    invoke-virtual {p0, p1}, Lzui/widget/KeyboardViewX;->setVisibility(I)V

    return-void
.end method

.method public setOnKeyCharPressListener(Lzui/widget/KeyboardViewX$OnKeyCharPressListener;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mOnKeyCharPressListener:Lzui/widget/KeyboardViewX$OnKeyCharPressListener;

    return-void
.end method

.method public setOnKeyDeletePressListener(Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mOnKeyDeletePressListener:Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;

    return-void
.end method

.method public setOnKeyDonePressListener(Lzui/widget/KeyboardViewX$OnKeyDonePressListener;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mOnKeyDonePressListener:Lzui/widget/KeyboardViewX$OnKeyDonePressListener;

    return-void
.end method

.method public setOnKeyPressHapticFeedbackListener(Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mOnKeyPressHapticFeedbackListener:Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;

    return-void
.end method

.method public setOnKeyPressPlaySoundEffectListener(Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lzui/widget/KeyboardViewX;->mOnKeyPressPlaySoundEffectListener:Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;

    return-void
.end method

.method public showKeyboard()V
    .locals 2

    .line 544
    invoke-virtual {p0}, Lzui/widget/KeyboardViewX;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardViewContentLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 548
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 550
    :cond_1
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardView:Lzui/widget/IKeyboardViewX;

    if-eqz v0, :cond_2

    .line 551
    invoke-interface {v0}, Lzui/widget/IKeyboardViewX;->showKeyboard()V

    .line 553
    :cond_2
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->mKeyboardAnimationIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 554
    invoke-virtual {p0, v0}, Lzui/widget/KeyboardViewX;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    return-void
.end method
