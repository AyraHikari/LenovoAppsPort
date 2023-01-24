.class public Lzui/app/ActionDialog;
.super Lzui/app/BaseDialog;
.source "ActionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/ActionDialog$Builder;,
        Lzui/app/ActionDialog$MenuAdapter;
    }
.end annotation


# instance fields
.field private final MAX_MENU_ITEM_COUNT:I

.field private mDialogOffset:I

.field private mDm:Landroid/util/DisplayMetrics;

.field private mIsDialogCenter:Z

.field private mIsPCMode:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lzui/app/ActionDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0, v1}, Lzui/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZZ)V
    .locals 6

    .line 120
    sget v3, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v4, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lzui/app/BaseDialog;-><init>(Landroid/content/Context;IIIZ)V

    const/16 p2, 0x9

    .line 90
    iput p2, p0, Lzui/app/ActionDialog;->MAX_MENU_ITEM_COUNT:I

    .line 91
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p2, p0, Lzui/app/ActionDialog;->mDm:Landroid/util/DisplayMetrics;

    const/4 p2, 0x0

    .line 94
    iput-boolean p2, p0, Lzui/app/ActionDialog;->mIsPCMode:Z

    if-nez p3, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lzui/app/ActionDialog;->setParentContext(Landroid/content/Context;)V

    .line 125
    :cond_0
    new-instance p2, Lcom/zui/internal/app/ActionController;

    invoke-virtual {p0}, Lzui/app/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p3, p0, v0, p4}, Lcom/zui/internal/app/ActionController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Z)V

    iput-object p2, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lzui/platform/R$dimen;->bottom_dialog_offset_zui:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzui/app/ActionDialog;->mDialogOffset:I

    .line 128
    invoke-static {}, Lzui/util/CommonUtils;->isPCMode()Z

    move-result p1

    iput-boolean p1, p0, Lzui/app/ActionDialog;->mIsPCMode:Z

    return-void
.end method

.method private adjustCenterDialogWidth()V
    .locals 4

    .line 274
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v1, Lcom/zui/internal/app/ActionController;

    invoke-virtual {v1}, Lcom/zui/internal/app/ActionController;->getCenterDialogWidth()I

    move-result v1

    .line 276
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getParentContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 277
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getParentContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 278
    iget-boolean v3, p0, Lzui/app/ActionDialog;->mIsPCMode:Z

    if-eqz v3, :cond_0

    .line 279
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v2, v2, 0x190

    div-int/lit16 v2, v2, 0x2bc

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 281
    :cond_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 284
    :cond_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 286
    :goto_0
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private adjustDialogHeight()V
    .locals 2

    .line 251
    iget-object v0, p0, Lzui/app/ActionDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 252
    iget-boolean v1, p0, Lzui/app/ActionDialog;->mIsDialogCenter:Z

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {p0, v0}, Lzui/app/ActionDialog;->isInLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/ActionController;

    invoke-virtual {v0}, Lcom/zui/internal/app/ActionController;->getCenterDialogMaxHorizontalHeight()I

    move-result v0

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/ActionController;

    invoke-virtual {v0}, Lcom/zui/internal/app/ActionController;->getCenterDialogMaxHeight()I

    move-result v0

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0, v0}, Lzui/app/ActionDialog;->isInLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {v0}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHorizontalHeight()I

    move-result v0

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {v0}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHeight()I

    move-result v0

    .line 265
    :goto_0
    iget-object v1, p0, Lzui/app/ActionDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 266
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_3

    .line 267
    iget-object v1, p0, Lzui/app/ActionDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 268
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 269
    iget-object v0, p0, Lzui/app/ActionDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private adjustDialogWidthAndGravity()V
    .locals 5

    .line 220
    iget-object v0, p0, Lzui/app/ActionDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 221
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lzui/app/ActionDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lzui/app/ActionDialog;->mDm:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v2, "11.5"

    .line 224
    invoke-static {v2}, Lzui/util/CommonUtils;->isNewerThanVersion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p0, v0}, Lzui/app/ActionDialog;->isInLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x55

    .line 227
    iget v3, p0, Lzui/app/ActionDialog;->mDialogOffset:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x50

    .line 230
    :goto_0
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setGravity(I)V

    .line 231
    iget v2, p0, Lzui/app/ActionDialog;->mDialogOffset:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 232
    iget-object v2, p0, Lzui/app/ActionDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 233
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lzui/app/ActionDialog;->mDm:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Lzui/app/ActionDialog;->mDialogOffset:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 238
    :cond_1
    iget-object v0, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {v0}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHeight()I

    move-result v0

    goto :goto_2

    .line 236
    :cond_2
    :goto_1
    iget-object v0, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/ActionController;

    invoke-virtual {v0}, Lcom/zui/internal/app/ActionController;->getAllowedHorizontalMaxWidth()I

    move-result v0

    .line 240
    :goto_2
    iget-object v2, p0, Lzui/app/ActionDialog;->mDm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lzui/app/ActionDialog;->mDialogOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_3

    .line 241
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_3

    .line 243
    :cond_3
    iget-object v0, p0, Lzui/app/ActionDialog;->mDm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lzui/app/ActionDialog;->mDialogOffset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 246
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private adjustPCModeDialogHeight()V
    .locals 2

    .line 291
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getParentContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getParentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lzui/app/ActionDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 294
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit16 v0, v0, 0x1c2

    div-int/lit16 v0, v0, 0x204

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 296
    iget-object v1, p0, Lzui/app/ActionDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 297
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 298
    iget-object v0, p0, Lzui/app/ActionDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setWindowAnimation()V
    .locals 5

    .line 135
    iget-object v0, p0, Lzui/app/ActionDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Lzui/app/ActionDialog;->isInLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget v0, Lzui/platform/R$style;->ActionBarShortMenuForLandscape:I

    .line 139
    sget v1, Lzui/platform/R$style;->ActionBarMediumMenuForLandscape:I

    .line 140
    sget v2, Lzui/platform/R$style;->ActionBarLongMenuForLandscape:I

    goto :goto_0

    .line 142
    :cond_0
    sget v0, Lzui/platform/R$style;->ActionBarShortMenu:I

    .line 143
    sget v1, Lzui/platform/R$style;->ActionBarMediumMenu:I

    .line 144
    sget v2, Lzui/platform/R$style;->ActionBarLongMenu:I

    .line 147
    :goto_0
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 149
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 151
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x3

    if-lez v3, :cond_1

    if-ge v3, v4, :cond_1

    .line 153
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_1

    :cond_1
    if-lt v3, v4, :cond_2

    const/4 v0, 0x6

    if-ge v3, v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getButton(I)Landroid/widget/Button;
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getListView()Landroid/widget/ListView;
    .locals 1

    .line 71
    invoke-super {p0}, Lzui/app/BaseDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentContext()Landroid/content/Context;
    .locals 1

    .line 71
    invoke-super {p0}, Lzui/app/BaseDialog;->getParentContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 71
    invoke-super {p0}, Lzui/app/BaseDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isInLandscape(I)Z
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->isInLandscape(I)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lzui/app/BaseDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lzui/app/BaseDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStop()V
    .locals 1

    .line 191
    iget-object v0, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/ActionController;

    invoke-virtual {v0}, Lcom/zui/internal/app/ActionController;->postStop()V

    .line 192
    invoke-super {p0}, Lzui/app/BaseDialog;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 210
    iget-boolean p1, p0, Lzui/app/ActionDialog;->mIsPCMode:Z

    if-eqz p1, :cond_0

    .line 211
    invoke-direct {p0}, Lzui/app/ActionDialog;->adjustPCModeDialogHeight()V

    goto :goto_0

    .line 213
    :cond_0
    invoke-direct {p0}, Lzui/app/ActionDialog;->adjustDialogHeight()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2, p3}, Lzui/app/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2, p3}, Lzui/app/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setButtonsVerticalAligned(Z)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setButtonsVerticalAligned(Z)V

    return-void
.end method

.method public bridge synthetic setCancelableOnOrientation(Z)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setCancelableOnOrientation(Z)V

    return-void
.end method

.method public setDialogCenter(Z)V
    .locals 1

    .line 201
    iput-boolean p1, p0, Lzui/app/ActionDialog;->mIsDialogCenter:Z

    .line 202
    iget-object v0, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/ActionController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/ActionController;->setDialogCenter(Z)V

    return-void
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessageTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast p1, Lcom/zui/internal/app/ActionController;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zui/internal/app/ActionController;->mMessageTitle:Z

    return-void
.end method

.method public bridge synthetic setParentContext(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setParentContext(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setView(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 172
    invoke-super {p0}, Lzui/app/BaseDialog;->show()V

    .line 173
    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, v0}, Lzui/app/ActionDialog;->setDialogCenter(Z)V

    .line 175
    invoke-direct {p0}, Lzui/app/ActionDialog;->adjustCenterDialogWidth()V

    .line 177
    :cond_0
    iget-boolean v0, p0, Lzui/app/ActionDialog;->mIsDialogCenter:Z

    if-nez v0, :cond_1

    .line 178
    invoke-direct {p0}, Lzui/app/ActionDialog;->adjustDialogWidthAndGravity()V

    .line 180
    :cond_1
    iget-object v0, p0, Lzui/app/ActionDialog;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$drawable;->dialog_background_zui:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 182
    iget-boolean v0, p0, Lzui/app/ActionDialog;->mIsDialogCenter:Z

    if-nez v0, :cond_2

    .line 183
    invoke-direct {p0}, Lzui/app/ActionDialog;->setWindowAnimation()V

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0}, Lzui/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lzui/platform/R$style;->Animation_Zui_Dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :goto_0
    return-void
.end method
