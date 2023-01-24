.class public Lzui/preference/EditTextPreference;
.super Lzui/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/preference/EditTextPreference$SavedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mDialogMessage:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mHint:Ljava/lang/String;

.field private mLayout:I

.field private mText:Ljava/lang/String;

.field private mTextSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lzui/preference/EditTextPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/preference/EditTextPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lzui/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lzui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lzui/preference/EditTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lzui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0, p1, p2}, Lzui/preference/EditTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-direct {p0, p1, p2}, Lzui/preference/EditTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 249
    sget-object v0, Lzui/platform/R$styleable;->EditTextPreferenceX:[I

    sget v1, Lzui/platform/R$attr;->editTextPreferenceXStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 251
    sget v0, Lzui/platform/R$styleable;->EditTextPreferenceX_android_dialogTitle:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzui/preference/EditTextPreference;->mDialogTitle:Ljava/lang/String;

    .line 252
    sget v0, Lzui/platform/R$styleable;->EditTextPreferenceX_android_hint:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzui/preference/EditTextPreference;->mHint:Ljava/lang/String;

    .line 253
    sget v0, Lzui/platform/R$styleable;->EditTextPreferenceX_android_dialogMessage:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzui/preference/EditTextPreference;->mDialogMessage:Ljava/lang/String;

    .line 254
    sget v0, Lzui/platform/R$styleable;->EditTextPreferenceX_android_layout:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lzui/preference/EditTextPreference;->mLayout:I

    .line 260
    invoke-direct {p0, p1}, Lzui/preference/EditTextPreference;->setupEditorView(Landroid/content/Context;)V

    .line 261
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setupEditorView(Landroid/content/Context;)V
    .locals 3

    const-string v0, "layout_inflater"

    .line 265
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 267
    sget v0, Lzui/platform/R$layout;->message_dialog_editor:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/EditTextPreference;->mContentView:Landroid/view/View;

    const v0, 0x1020003

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lzui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 181
    iget-object v0, p0, Lzui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lzui/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 5

    .line 116
    invoke-super {p0}, Lzui/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 118
    iget-object v1, p0, Lzui/preference/EditTextPreference;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lzui/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lzui/preference/EditTextPreference;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lzui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lzui/preference/EditTextPreference;->mHint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    iget-object v1, p0, Lzui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lzui/preference/EditTextPreference;->mContentView:Landroid/view/View;

    const v1, 0x1020005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    iget-object v1, p0, Lzui/preference/EditTextPreference;->mContentView:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lzui/preference/EditTextPreference;->mDialogMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_2

    .line 129
    iget-object v2, p0, Lzui/preference/EditTextPreference;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_0
    iget-object v0, p0, Lzui/preference/EditTextPreference;->mContentView:Landroid/view/View;

    :cond_3
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lzui/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lzui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lzui/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lzui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lzui/preference/DialogPreference;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p1, v0}, Lzui/app/MessageDialog$Builder;->setDialogCenter(Z)Lzui/app/MessageDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lzui/preference/EditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    check-cast p1, Lzui/preference/EditTextPreference$SavedState;

    .line 213
    invoke-virtual {p1}, Lzui/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lzui/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 214
    iget-object p1, p1, Lzui/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void

    .line 208
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lzui/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 193
    invoke-super {p0}, Lzui/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lzui/preference/EditTextPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 199
    :cond_0
    new-instance v1, Lzui/preference/EditTextPreference$SavedState;

    invoke-direct {v1, v0}, Lzui/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 200
    invoke-virtual {p0}, Lzui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lzui/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lzui/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzui/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lzui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lzui/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 84
    iget-boolean v2, p0, Lzui/preference/EditTextPreference;->mTextSet:Z

    if-nez v2, :cond_1

    .line 85
    :cond_0
    iput-object p1, p0, Lzui/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lzui/preference/EditTextPreference;->mTextSet:Z

    .line 87
    invoke-virtual {p0, p1}, Lzui/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lzui/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Lzui/preference/EditTextPreference;->notifyDependencyChange(Z)V

    .line 90
    invoke-virtual {p0}, Lzui/preference/EditTextPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lzui/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lzui/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lzui/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 107
    iget-object p1, p0, Lzui/preference/EditTextPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x1020004

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
