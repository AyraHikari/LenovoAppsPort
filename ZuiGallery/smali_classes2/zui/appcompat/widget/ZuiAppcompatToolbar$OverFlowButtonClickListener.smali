.class Lzui/appcompat/widget/ZuiAppcompatToolbar$OverFlowButtonClickListener;
.super Ljava/lang/Object;
.source "ZuiAppcompatToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/widget/ZuiAppcompatToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverFlowButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lzui/appcompat/widget/ZuiAppcompatToolbar;


# direct methods
.method private constructor <init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$OverFlowButtonClickListener;->this$0:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;Lzui/appcompat/widget/ZuiAppcompatToolbar$1;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar$OverFlowButtonClickListener;-><init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 301
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$OverFlowButtonClickListener;->this$0:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-static {p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->access$400(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->showPopupWindow()V

    return-void
.end method
