.class Lzui/widget/SimpleToolbar$VisibleMenuItem;
.super Ljava/lang/Object;
.source "SimpleToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SimpleToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibleMenuItem"
.end annotation


# instance fields
.field mMenuItem:Landroid/view/MenuItem;

.field mShowAsAction:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Lzui/widget/SimpleToolbar;


# direct methods
.method constructor <init>(Lzui/widget/SimpleToolbar;Landroid/view/MenuItem;ILandroid/view/View;)V
    .locals 0

    .line 983
    iput-object p1, p0, Lzui/widget/SimpleToolbar$VisibleMenuItem;->this$0:Lzui/widget/SimpleToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    iput-object p2, p0, Lzui/widget/SimpleToolbar$VisibleMenuItem;->mMenuItem:Landroid/view/MenuItem;

    .line 985
    iput p3, p0, Lzui/widget/SimpleToolbar$VisibleMenuItem;->mShowAsAction:I

    .line 986
    iput-object p4, p0, Lzui/widget/SimpleToolbar$VisibleMenuItem;->mView:Landroid/view/View;

    return-void
.end method
