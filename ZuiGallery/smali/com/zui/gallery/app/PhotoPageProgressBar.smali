.class public Lcom/zui/gallery/app/PhotoPageProgressBar;
.super Ljava/lang/Object;
.source "PhotoPageProgressBar.java"


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mProgress:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "layout_inflater"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0b00aa

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    const p2, 0x7f08029e

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPageProgressBar;->mProgress:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageProgressBar;->mProgress:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageProgressBar;->mProgress:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
