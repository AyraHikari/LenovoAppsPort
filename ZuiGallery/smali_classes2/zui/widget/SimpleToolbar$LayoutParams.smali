.class public Lzui/widget/SimpleToolbar$LayoutParams;
.super Landroid/widget/Toolbar$LayoutParams;
.source "SimpleToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SimpleToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 960
    invoke-direct {p0, v0, v1, p1}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 950
    invoke-direct {p0, p1, p2}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 943
    iput p1, p0, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    const p1, 0x800013

    .line 951
    iput p1, p0, Lzui/widget/SimpleToolbar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 955
    invoke-direct {p0, p1, p2}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 943
    iput p1, p0, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    .line 956
    iput p3, p0, Lzui/widget/SimpleToolbar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 946
    invoke-direct {p0, p1, p2}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 943
    iput p1, p0, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 973
    invoke-direct {p0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 943
    iput p1, p0, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/Toolbar$LayoutParams;)V
    .locals 0

    .line 969
    invoke-direct {p0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    const/4 p1, 0x0

    .line 943
    iput p1, p0, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Lzui/widget/SimpleToolbar$LayoutParams;)V
    .locals 1

    .line 964
    invoke-direct {p0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    const/4 v0, 0x0

    .line 943
    iput v0, p0, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    .line 965
    iget p1, p1, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    iput p1, p0, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    return-void
.end method
