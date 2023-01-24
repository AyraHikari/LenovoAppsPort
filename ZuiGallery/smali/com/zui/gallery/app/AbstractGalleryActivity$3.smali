.class Lcom/zui/gallery/app/AbstractGalleryActivity$3;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AbstractGalleryActivity;->setBottomBarOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$3;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 707
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$3;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$000(Lcom/zui/gallery/app/AbstractGalleryActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
