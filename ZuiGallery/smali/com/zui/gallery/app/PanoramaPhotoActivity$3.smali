.class Lcom/zui/gallery/app/PanoramaPhotoActivity$3;
.super Ljava/lang/Object;
.source "PanoramaPhotoActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PanoramaPhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCancel:Z

.field final synthetic this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$3;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$3;->isCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 264
    iget-boolean p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$3;->isCancel:Z

    if-nez p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$3;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    move-result-object p1

    const/4 v0, 0x2

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 259
    iput-boolean p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$3;->isCancel:Z

    return-void
.end method
