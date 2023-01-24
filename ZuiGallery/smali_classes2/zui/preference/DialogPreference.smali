.class public Lzui/preference/DialogPreference;
.super Landroid/preference/DialogPreference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/preference/DialogPreference$SavedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBase:Lzui/util/PreferenceBase;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBuilder:Lzui/app/MessageDialog$Builder;

.field protected mDialog:Landroid/app/Dialog;

.field private mNeutralButtonText:Ljava/lang/CharSequence;

.field private mRootView:Landroid/view/View;

.field private mWhichButtonClicked:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lzui/preference/DialogPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/preference/DialogPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/DialogPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/DialogPreference$1;-><init>(Lzui/preference/DialogPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/DialogPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, v0, v1, v1}, Lzui/preference/DialogPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/DialogPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/DialogPreference$1;-><init>(Lzui/preference/DialogPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/DialogPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0, v0}, Lzui/preference/DialogPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/DialogPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/DialogPreference$1;-><init>(Lzui/preference/DialogPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/DialogPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/preference/DialogPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/DialogPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/DialogPreference$1;-><init>(Lzui/preference/DialogPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/DialogPreference;->mBase:Lzui/util/PreferenceBase;

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/preference/DialogPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/preference/DialogPreference;)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->notifyChanged()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 318
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x1040000

    .line 319
    invoke-virtual {p0, v0}, Lzui/preference/DialogPreference;->setNegativeButtonText(I)V

    .line 321
    :cond_0
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x104000a

    .line 322
    invoke-virtual {p0, v0}, Lzui/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 324
    :cond_1
    iget-object v0, p0, Lzui/preference/DialogPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private registerActivityDestoryListener(Landroid/preference/PreferenceManager;)V
    .locals 6

    .line 329
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "registerOnActivityDestroyListener"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    .line 333
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    sget-object p1, Lzui/preference/DialogPreference;->TAG:Ljava/lang/String;

    const-string v0, "can not invoke registerOnActivityDestroyListener"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :catch_1
    sget-object p1, Lzui/preference/DialogPreference;->TAG:Ljava/lang/String;

    const-string v0, "can not assess registerOnActivityDestroyListener"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :catch_2
    sget-object p1, Lzui/preference/DialogPreference;->TAG:Ljava/lang/String;

    const-string v0, "Do not have method registerOnActivityDestroyListener"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 1

    .line 312
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private unregisterActivityDestoryListener(Landroid/preference/PreferenceManager;)V
    .locals 6

    .line 345
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "unregisterOnActivityDestroyListener"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    .line 349
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    sget-object p1, Lzui/preference/DialogPreference;->TAG:Ljava/lang/String;

    const-string v0, "can not invoke registerOnActivityDestroyListener"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :catch_1
    sget-object p1, Lzui/preference/DialogPreference;->TAG:Ljava/lang/String;

    const-string v0, "can not assess registerOnActivityDestroyListener"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :catch_2
    sget-object p1, Lzui/preference/DialogPreference;->TAG:Ljava/lang/String;

    const-string v0, "Do not have method registerOnActivityDestroyListener"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 134
    iget-object v0, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getNeutralButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lzui/preference/DialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroid/preference/DialogPreference;->onActivityDestroy()V

    .line 140
    iget-object v0, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 237
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lzui/preference/DialogPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->onBindView(Landroid/view/View;)V

    .line 239
    iget-object p1, p0, Lzui/preference/DialogPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzui/preference/DialogPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 120
    iput p2, p0, Lzui/preference/DialogPreference;->mWhichButtonClicked:I

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .line 188
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 192
    :cond_0
    iget-object v0, p0, Lzui/preference/DialogPreference;->mBuilder:Lzui/app/MessageDialog$Builder;

    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 229
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/DialogPreference;->mRootView:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lzui/preference/DialogPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->onCreateView(Landroid/view/View;)V

    .line 231
    iget-object p1, p0, Lzui/preference/DialogPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v0, p0, Lzui/preference/DialogPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 232
    iget-object p1, p0, Lzui/preference/DialogPreference;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 126
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lzui/preference/DialogPreference;->unregisterActivityDestoryListener(Landroid/preference/PreferenceManager;)V

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 129
    iget p1, p0, Lzui/preference/DialogPreference;->mWhichButtonClicked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lzui/preference/DialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lzui/preference/DialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    check-cast p1, Lzui/preference/DialogPreference$SavedState;

    .line 220
    invoke-virtual {p1}, Lzui/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 222
    iget-boolean v0, p1, Lzui/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_1

    .line 223
    iget-object p1, p1, Lzui/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lzui/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_1
    return-void

    .line 215
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 198
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v1, Lzui/preference/DialogPreference$SavedState;

    invoke-direct {v1, v0}, Lzui/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, v1, Lzui/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 205
    iget-object v0, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lzui/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public setActivated(Z)V
    .locals 3

    .line 256
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    iget-object v1, p0, Lzui/preference/DialogPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v2, p0, Lzui/preference/DialogPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 267
    iput-object p1, p0, Lzui/preference/DialogPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    iget-object v0, p0, Lzui/preference/DialogPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setNeutralButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lzui/preference/DialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 1

    .line 263
    iget-object v0, p0, Lzui/preference/DialogPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    .line 152
    iput v1, p0, Lzui/preference/DialogPreference;->mWhichButtonClicked:I

    .line 154
    new-instance v1, Lzui/app/MessageDialog$Builder;

    invoke-direct {v1, v0}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzui/app/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lzui/preference/DialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {v0, v1, p0}, Lzui/app/MessageDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lzui/preference/DialogPreference;->mBuilder:Lzui/app/MessageDialog$Builder;

    .line 161
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lzui/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 164
    iget-object v1, p0, Lzui/preference/DialogPreference;->mBuilder:Lzui/app/MessageDialog$Builder;

    invoke-virtual {v1, v0}, Lzui/app/MessageDialog$Builder;->setView(Landroid/view/View;)Lzui/app/MessageDialog$Builder;

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lzui/preference/DialogPreference;->mBuilder:Lzui/app/MessageDialog$Builder;

    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    .line 169
    :goto_0
    iget-object v0, p0, Lzui/preference/DialogPreference;->mBuilder:Lzui/app/MessageDialog$Builder;

    invoke-virtual {p0, v0}, Lzui/preference/DialogPreference;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V

    .line 171
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lzui/preference/DialogPreference;->registerActivityDestoryListener(Landroid/preference/PreferenceManager;)V

    .line 174
    iget-object v0, p0, Lzui/preference/DialogPreference;->mBuilder:Lzui/app/MessageDialog$Builder;

    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object v0

    .line 175
    iput-object v0, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {v0, p1}, Lzui/app/MessageDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 179
    :cond_1
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->needInputMethod()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 180
    invoke-direct {p0, v0}, Lzui/preference/DialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 182
    :cond_2
    invoke-virtual {v0, p0}, Lzui/app/MessageDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    invoke-virtual {v0}, Lzui/app/MessageDialog;->show()V

    return-void
.end method
