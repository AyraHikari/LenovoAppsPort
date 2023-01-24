.class public Lzui/preference/InLineEditTextPreference;
.super Landroid/preference/Preference;
.source "InLineEditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/preference/InLineEditTextPreference$ReflectInputManager;
    }
.end annotation


# static fields
.field private static final FOCUS_DEFAULT:I = 0x0

.field private static final FOCUS_EDITOR:I = 0x1

.field private static final FOCUS_ICON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EditTextInLinePreference"


# instance fields
.field private mBase:Lzui/util/PreferenceBase;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/widget/EditText;

.field private mFocusBg:Landroid/graphics/drawable/Drawable;

.field private mFocusItem:I

.field private mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHintText:Ljava/lang/CharSequence;

.field private mIcon:Landroid/widget/ImageView;

.field private mLayoutId:I

.field private mPwdIcon:Landroid/graphics/drawable/Drawable;

.field private mPwdMode:Z

.field private mRootView:Landroid/view/View;

.field private mText:Ljava/lang/CharSequence;

.field private mTextShown:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mVisiblePwdIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lzui/preference/InLineEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 104
    sget v0, Lzui/platform/R$attr;->inLineEditTextPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/preference/InLineEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/preference/InLineEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->mTextShown:Z

    .line 63
    iput v0, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    .line 65
    new-instance v1, Lzui/util/PreferenceBase;

    new-instance v2, Lzui/preference/InLineEditTextPreference$1;

    invoke-direct {v2, p0}, Lzui/preference/InLineEditTextPreference$1;-><init>(Lzui/preference/InLineEditTextPreference;)V

    invoke-direct {v1, v2}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v1, p0, Lzui/preference/InLineEditTextPreference;->mBase:Lzui/util/PreferenceBase;

    .line 71
    new-instance v1, Lzui/preference/InLineEditTextPreference$2;

    invoke-direct {v1, p0}, Lzui/preference/InLineEditTextPreference$2;-><init>(Lzui/preference/InLineEditTextPreference;)V

    iput-object v1, p0, Lzui/preference/InLineEditTextPreference;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 83
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->mContext:Landroid/content/Context;

    .line 84
    sget-object v1, Lzui/platform/R$styleable;->InLineEditTextPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 86
    sget v2, Lzui/platform/R$styleable;->InLineEditTextPreference_android_layout:I

    sget v3, Lzui/platform/R$layout;->preference_inline_edittext_zui:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lzui/preference/InLineEditTextPreference;->mLayoutId:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$drawable;->ic_tether_password_zui:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lzui/preference/InLineEditTextPreference;->mPwdIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    sget v2, Lzui/platform/R$styleable;->InLineEditTextPreference_android_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lzui/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    .line 90
    sget v2, Lzui/platform/R$styleable;->InLineEditTextPreference_android_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lzui/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$drawable;->ic_tether_password_visible_zui:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lzui/preference/InLineEditTextPreference;->mVisiblePwdIcon:Landroid/graphics/drawable/Drawable;

    .line 93
    sget v2, Lzui/platform/R$styleable;->InLineEditTextPreference_android_password:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->mPwdMode:Z

    .line 94
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    sget v0, Lzui/platform/R$drawable;->button_focus_not_press_background_zui:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/preference/InLineEditTextPreference;->mFocusBg:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/preference/InLineEditTextPreference;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lzui/preference/InLineEditTextPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic access$102(Lzui/preference/InLineEditTextPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 42
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lzui/preference/InLineEditTextPreference;)Landroid/widget/EditText;
    .locals 0

    .line 42
    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    return-object p0
.end method

.method private changeFocus(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 379
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-direct {p0, p1, v1}, Lzui/preference/InLineEditTextPreference;->setItemFocus(Landroid/view/View;Z)V

    .line 380
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1}, Lzui/preference/InLineEditTextPreference;->setItemFocus(Landroid/view/View;Z)V

    goto :goto_0

    .line 374
    :cond_0
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lzui/preference/InLineEditTextPreference;->setItemFocus(Landroid/view/View;Z)V

    .line 375
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-direct {p0, p1, v1}, Lzui/preference/InLineEditTextPreference;->setItemFocus(Landroid/view/View;Z)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-direct {p0, p1, v0}, Lzui/preference/InLineEditTextPreference;->setItemFocus(Landroid/view/View;Z)V

    .line 371
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1}, Lzui/preference/InLineEditTextPreference;->setItemFocus(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method private onPasswordModeChange()V
    .locals 3

    .line 386
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 387
    iget-boolean v1, p0, Lzui/preference/InLineEditTextPreference;->mTextShown:Z

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lzui/preference/InLineEditTextPreference;->mVisiblePwdIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 391
    :cond_0
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lzui/preference/InLineEditTextPreference;->mPwdIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 394
    :goto_0
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->postInvalidate()V

    if-ltz v0, :cond_1

    .line 396
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method private setItemFocus(Landroid/view/View;Z)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 357
    iget-object p2, p0, Lzui/preference/InLineEditTextPreference;->mFocusBg:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 360
    :cond_0
    iget-object p2, p0, Lzui/preference/InLineEditTextPreference;->mFocusBg:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009d

    aput v2, v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 362
    :goto_0
    iget-object p2, p0, Lzui/preference/InLineEditTextPreference;->mFocusBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x101009d
        0x101009c
        0x101009e
        0x101031b
    .end array-data
.end method


# virtual methods
.method public enablePasswordMode(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lzui/preference/InLineEditTextPreference;->mPwdMode:Z

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lzui/preference/InLineEditTextPreference;->mTextShown:Z

    .line 214
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 215
    invoke-direct {p0}, Lzui/preference/InLineEditTextPreference;->onPasswordModeChange()V

    :cond_0
    return-void
.end method

.method public getEditorHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 191
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lzui/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    .line 194
    :cond_0
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEditorText()Ljava/lang/CharSequence;
    .locals 1

    .line 157
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorView()Landroid/widget/EditText;
    .locals 1

    .line 203
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method public isPasswordMode()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->mPwdMode:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .line 254
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 255
    iget v0, p0, Lzui/preference/InLineEditTextPreference;->mLayoutId:I

    if-gez v0, :cond_0

    return-void

    .line 258
    :cond_0
    sget v0, Lzui/platform/R$id;->editor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 260
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->mPwdMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->mTextShown:Z

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_2
    :goto_0
    const v0, 0x1020006

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 269
    iget-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->mPwdMode:Z

    if-eqz v0, :cond_4

    .line 270
    iget-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->mTextShown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mVisiblePwdIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mPwdIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 274
    :cond_4
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const/16 v0, 0x8

    .line 275
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    :cond_5
    :goto_2
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 279
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 285
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 286
    iget-boolean p1, p0, Lzui/preference/InLineEditTextPreference;->mTextShown:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lzui/preference/InLineEditTextPreference;->mTextShown:Z

    .line 287
    invoke-direct {p0}, Lzui/preference/InLineEditTextPreference;->onPasswordModeChange()V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lzui/preference/InLineEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 292
    new-instance v0, Lzui/preference/InLineEditTextPreference$ReflectInputManager;

    invoke-direct {v0}, Lzui/preference/InLineEditTextPreference$ReflectInputManager;-><init>()V

    .line 293
    invoke-virtual {v0, v0}, Lzui/preference/InLineEditTextPreference$ReflectInputManager;->setRealObject(Ljava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lzui/preference/InLineEditTextPreference$ReflectInputManager;->focusIn(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 230
    iget v0, p0, Lzui/preference/InLineEditTextPreference;->mLayoutId:I

    if-lez v0, :cond_2

    .line 231
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 233
    iget v1, p0, Lzui/preference/InLineEditTextPreference;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 234
    sget v0, Lzui/platform/R$id;->editor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 236
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 237
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :cond_1
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->mRootView:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    return-object p1

    .line 246
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->mRootView:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 248
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onKey(Landroid/view/KeyEvent;)V
    .locals 3

    .line 309
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 310
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x3e

    const/4 v2, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 312
    :pswitch_0
    iget p1, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    add-int/2addr p1, v1

    iput p1, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    if-le p1, v2, :cond_0

    .line 314
    iput v2, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    .line 316
    :cond_0
    iget p1, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    invoke-direct {p0, p1}, Lzui/preference/InLineEditTextPreference;->changeFocus(I)V

    goto :goto_0

    .line 319
    :pswitch_1
    iget p1, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    sub-int/2addr p1, v1

    iput p1, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    if-gez p1, :cond_1

    .line 321
    iput v0, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    .line 323
    :cond_1
    iget p1, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    invoke-direct {p0, p1}, Lzui/preference/InLineEditTextPreference;->changeFocus(I)V

    goto :goto_0

    .line 327
    :pswitch_2
    iput v0, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    .line 328
    invoke-direct {p0, v0}, Lzui/preference/InLineEditTextPreference;->changeFocus(I)V

    goto :goto_0

    .line 333
    :cond_2
    :pswitch_3
    iget p1, p0, Lzui/preference/InLineEditTextPreference;->mFocusItem:I

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_0

    .line 339
    :cond_3
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lzui/preference/InLineEditTextPreference;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 335
    :cond_4
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 336
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lzui/preference/InLineEditTextPreference;->onClick(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setActivated(Z)V
    .locals 3

    .line 302
    invoke-virtual {p0}, Lzui/preference/InLineEditTextPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lzui/preference/InLineEditTextPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v2, p0, Lzui/preference/InLineEditTextPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 348
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 349
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEditorHint(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/preference/InLineEditTextPreference;->setEditorHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditorHint(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 169
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    :cond_1
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    .line 172
    invoke-virtual {p0}, Lzui/preference/InLineEditTextPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setEditorText(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/preference/InLineEditTextPreference;->setEditorText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditorText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 132
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    :cond_1
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    .line 135
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 136
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_2
    invoke-virtual {p0}, Lzui/preference/InLineEditTextPreference;->notifyChanged()V

    :cond_3
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mTextWatcher:Landroid/text/TextWatcher;

    if-ne v0, p1, :cond_0

    return-void

    .line 120
    :cond_0
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->mTextWatcher:Landroid/text/TextWatcher;

    .line 121
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method
