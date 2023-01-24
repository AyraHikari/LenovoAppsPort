.class public Lzui/widget/SlideView$SlideViewParams;
.super Ljava/lang/Object;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideViewParams"
.end annotation


# instance fields
.field private mBgColor:I

.field private mBgPressedColor:I

.field private mLayoutId:I

.field private mLeftEmptyWidth:I

.field private mLeftSlideThreshold:I

.field private mRightSlideThreshold:I

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mShowText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 909
    iput v0, p0, Lzui/widget/SlideView$SlideViewParams;->mBgColor:I

    .line 910
    iput v0, p0, Lzui/widget/SlideView$SlideViewParams;->mBgPressedColor:I

    const/4 v0, 0x0

    .line 911
    iput v0, p0, Lzui/widget/SlideView$SlideViewParams;->mLeftSlideThreshold:I

    .line 912
    iput v0, p0, Lzui/widget/SlideView$SlideViewParams;->mRightSlideThreshold:I

    .line 916
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->listview_x_left_menu_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView$SlideViewParams;->mWidth:I

    .line 917
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->listview_x_left_space_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mLeftEmptyWidth:I

    const/4 p1, 0x0

    .line 919
    iput-object p1, p0, Lzui/widget/SlideView$SlideViewParams;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 0

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 909
    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mBgColor:I

    .line 910
    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mBgPressedColor:I

    const/4 p1, 0x0

    .line 911
    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mLeftSlideThreshold:I

    .line 912
    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mRightSlideThreshold:I

    .line 923
    iput p2, p0, Lzui/widget/SlideView$SlideViewParams;->mWidth:I

    .line 924
    iput-object p3, p0, Lzui/widget/SlideView$SlideViewParams;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$600(Lzui/widget/SlideView$SlideViewParams;)Z
    .locals 0

    .line 903
    iget-boolean p0, p0, Lzui/widget/SlideView$SlideViewParams;->mShowText:Z

    return p0
.end method


# virtual methods
.method public getBgColor()I
    .locals 1

    .line 973
    iget v0, p0, Lzui/widget/SlideView$SlideViewParams;->mBgColor:I

    return v0
.end method

.method public getBgPressedColor()I
    .locals 1

    .line 977
    iget v0, p0, Lzui/widget/SlideView$SlideViewParams;->mBgPressedColor:I

    return v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 964
    iget v0, p0, Lzui/widget/SlideView$SlideViewParams;->mLayoutId:I

    return v0
.end method

.method public getLeftSlideThreshold()I
    .locals 1

    .line 987
    iget v0, p0, Lzui/widget/SlideView$SlideViewParams;->mLeftSlideThreshold:I

    return v0
.end method

.method public getLeftSpaceWidth()I
    .locals 1

    .line 936
    iget v0, p0, Lzui/widget/SlideView$SlideViewParams;->mLeftEmptyWidth:I

    return v0
.end method

.method public getRightSlideThreshold()I
    .locals 1

    .line 990
    iget v0, p0, Lzui/widget/SlideView$SlideViewParams;->mRightSlideThreshold:I

    return v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 956
    iget-object v0, p0, Lzui/widget/SlideView$SlideViewParams;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getShowText()Z
    .locals 1

    .line 994
    iget-boolean v0, p0, Lzui/widget/SlideView$SlideViewParams;->mShowText:Z

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 944
    iget-object v0, p0, Lzui/widget/SlideView$SlideViewParams;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 928
    iget v0, p0, Lzui/widget/SlideView$SlideViewParams;->mWidth:I

    return v0
.end method

.method public setBgColor(II)V
    .locals 0

    .line 968
    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mBgColor:I

    .line 969
    iput p2, p0, Lzui/widget/SlideView$SlideViewParams;->mBgPressedColor:I

    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    .line 960
    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mLayoutId:I

    return-void
.end method

.method public setLeftSlideThreshHold(I)V
    .locals 0

    .line 981
    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mLeftSlideThreshold:I

    return-void
.end method

.method public setLeftSpaceWidth(I)V
    .locals 0

    .line 940
    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mLeftEmptyWidth:I

    return-void
.end method

.method public setRightSlideThreshHold(I)V
    .locals 0

    .line 984
    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mRightSlideThreshold:I

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 952
    iput-object p1, p0, Lzui/widget/SlideView$SlideViewParams;->mSelector:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShowText(Z)V
    .locals 0

    .line 993
    iput-boolean p1, p0, Lzui/widget/SlideView$SlideViewParams;->mShowText:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lzui/widget/SlideView$SlideViewParams;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 932
    iput p1, p0, Lzui/widget/SlideView$SlideViewParams;->mWidth:I

    return-void
.end method
