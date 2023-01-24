.class public Lcom/zui/gallery/app/GalleryActionBar;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryActionBar"


# instance fields
.field private mActionBarView:Landroid/view/ViewGroup;

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTitleBarHeight:I

.field private orientation:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryActionBar;->mContext:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActionBar;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f0801d4

    .line 41
    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryActionBar;->mActionBarView:Landroid/view/ViewGroup;

    .line 42
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActionBar;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/GalleryActionBar;->mTitleBarHeight:I

    .line 43
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/zui/gallery/app/GalleryActionBar;->mTitleBarHeight:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/zui/gallery/app/GalleryActionBar;->orientation:I

    return v0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method
