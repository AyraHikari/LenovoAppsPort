.class public Lcom/zui/gallery/ui/SelectionMenu;
.super Ljava/lang/Object;
.source "SelectionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectionMenu"


# instance fields
.field private final mButton:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mPopupList:Lcom/zui/gallery/ui/PopupList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/zui/gallery/ui/SelectionMenu;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/zui/gallery/ui/SelectionMenu;->mButton:Landroid/widget/TextView;

    .line 38
    new-instance p2, Lcom/zui/gallery/ui/PopupList;

    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionMenu;->mButton:Landroid/widget/TextView;

    invoke-direct {p2, p1, v0}, Lcom/zui/gallery/ui/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/SelectionMenu;->mPopupList:Lcom/zui/gallery/ui/PopupList;

    const v0, 0x7f100237

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f080049

    .line 39
    invoke-virtual {p2, v0, p1}, Lcom/zui/gallery/ui/PopupList;->addItem(ILjava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/zui/gallery/ui/SelectionMenu;->mPopupList:Lcom/zui/gallery/ui/PopupList;

    invoke-virtual {p1, p3}, Lcom/zui/gallery/ui/PopupList;->setOnPopupItemClickListener(Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionMenu;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateSelectAllMode(Z)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/ui/SelectionMenu;->mPopupList:Lcom/zui/gallery/ui/PopupList;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/PopupList;->findItem(I)Lcom/zui/gallery/ui/PopupList$Item;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v1, p0, Lcom/zui/gallery/ui/SelectionMenu;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const p1, 0x7f1000d6

    goto :goto_0

    :cond_0
    const p1, 0x7f100237

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/PopupList$Item;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
