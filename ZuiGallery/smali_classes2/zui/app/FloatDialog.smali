.class public Lzui/app/FloatDialog;
.super Lzui/app/BaseDialog;
.source "FloatDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/FloatDialog$Builder;,
        Lzui/app/FloatDialog$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lzui/app/FloatDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/app/FloatDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lzui/app/FloatDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lzui/app/FloatDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 6

    .line 73
    sget v3, Lzui/platform/R$attr;->floatDialogTheme:I

    sget v4, Lzui/platform/R$style;->Theme_Zui_FloatDialog:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lzui/app/BaseDialog;-><init>(Landroid/content/Context;IIIZ)V

    .line 75
    new-instance p2, Lcom/zui/internal/app/FloatController;

    invoke-virtual {p0}, Lzui/app/FloatDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lzui/app/FloatDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p2, v0, p0, v1}, Lcom/zui/internal/app/FloatController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    if-nez p3, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lzui/app/FloatDialog;->setParentContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getButton(I)Landroid/widget/Button;
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getListView()Landroid/widget/ListView;
    .locals 1

    .line 37
    invoke-super {p0}, Lzui/app/BaseDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentContext()Landroid/content/Context;
    .locals 1

    .line 37
    invoke-super {p0}, Lzui/app/BaseDialog;->getParentContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 37
    invoke-super {p0}, Lzui/app/BaseDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isInLandscape(I)Z
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->isInLandscape(I)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iget-object p1, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast p1, Lcom/zui/internal/app/FloatController;

    invoke-virtual {p1}, Lcom/zui/internal/app/FloatController;->postCreate()V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lzui/app/BaseDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lzui/app/BaseDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStop()V
    .locals 1

    .line 90
    iget-object v0, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0}, Lcom/zui/internal/app/FloatController;->postStop()V

    .line 91
    invoke-super {p0}, Lzui/app/BaseDialog;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lzui/app/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lzui/app/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setButtonsVerticalAligned(Z)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setButtonsVerticalAligned(Z)V

    return-void
.end method

.method public bridge synthetic setCancelableOnOrientation(Z)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setCancelableOnOrientation(Z)V

    return-void
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setParentContext(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setParentContext(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setView(Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic show()V
    .locals 0

    .line 37
    invoke-super {p0}, Lzui/app/BaseDialog;->show()V

    return-void
.end method

.method public showAtLocation(Landroid/graphics/Rect;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    iget-object v1, p0, Lzui/app/FloatDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 101
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {p0, v1}, Lzui/app/FloatDialog;->isInLandscape(I)Z

    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/zui/internal/app/FloatController;->setOrientation(Z)V

    .line 102
    iget-object v0, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/FloatController;->beforeShow(Landroid/graphics/Rect;)V

    .line 103
    invoke-super {p0}, Lzui/app/BaseDialog;->show()V

    .line 104
    iget-object v0, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/FloatController;->postShow(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showAtLocation(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p2}, Lcom/zui/internal/app/FloatController;->setGlobalOffset(Landroid/graphics/Point;)V

    .line 109
    invoke-virtual {p0, p1}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;)V
    .locals 2

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 119
    iget-object v1, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v1, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v1, p1}, Lcom/zui/internal/app/FloatController;->setArchorView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0, v0}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;IIZ)V
    .locals 1

    .line 155
    iget-object v0, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p2, p3}, Lcom/zui/internal/app/FloatController;->setPositionOffset(II)V

    .line 156
    invoke-virtual {p0, p1, p4}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;Z)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 1

    .line 142
    iget-object v0, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p2}, Lcom/zui/internal/app/FloatController;->setGlobalOffset(Landroid/graphics/Point;)V

    .line 143
    invoke-virtual {p0, p1, p3}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;Z)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p2}, Lcom/zui/internal/app/FloatController;->hideArchorView(Z)V

    .line 130
    invoke-virtual {p0, p1}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;)V

    return-void
.end method
