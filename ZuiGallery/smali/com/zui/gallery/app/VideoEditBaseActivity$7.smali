.class Lcom/zui/gallery/app/VideoEditBaseActivity$7;
.super Ljava/lang/Object;
.source "VideoEditBaseActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/VideoEditBaseActivity;->playHidenBestFrameAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/VideoEditBaseActivity;)V
    .locals 0

    .line 1099
    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1110
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$7;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object p1, p1, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

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
