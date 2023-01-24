.class public Lcom/zui/gallery/selfwidget/TwoStateImageView;
.super Landroid/widget/ImageView;
.source "TwoStateImageView.java"


# static fields
.field private static final DISABLED_ALPHA:I = 0x66

.field private static final ENABLED_ALPHA:I = 0xff


# instance fields
.field private mFilterEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/selfwidget/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/zui/gallery/selfwidget/TwoStateImageView;->mFilterEnabled:Z

    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/zui/gallery/selfwidget/TwoStateImageView;->mFilterEnabled:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 43
    iget-boolean v0, p0, Lcom/zui/gallery/selfwidget/TwoStateImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    .line 45
    invoke-virtual {p0, p1}, Lcom/zui/gallery/selfwidget/TwoStateImageView;->setImageAlpha(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    .line 47
    invoke-virtual {p0, p1}, Lcom/zui/gallery/selfwidget/TwoStateImageView;->setImageAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method
